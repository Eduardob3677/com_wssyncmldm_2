package com.idm.agent.dm;

import android.content.Context;
import android.text.TextUtils;
import com.idm.adapter.common.IDMCommonUtils;
import com.idm.adapter.filesystem.IDMFileSystemAdapter;
import com.idm.adapter.logmanager.IDMDebug;
import com.idm.agent.dm.uic.IDMDmUICDecoder;
import com.idm.agent.dm.uic.IDMDmUICInfo;
import com.idm.agent.dm.uic.IDMDmUICInterface;
import com.idm.agent.dm.uic.IDMDmUICResult;
import com.idm.agent.dm.uic.IDMDmUICTaskThread;
import com.idm.core.syncml.Add;
import com.idm.core.syncml.Alert;
import com.idm.core.syncml.Atomic;
import com.idm.core.syncml.Command;
import com.idm.core.syncml.Constants;
import com.idm.core.syncml.Copy;
import com.idm.core.syncml.Delete;
import com.idm.core.syncml.Exec;
import com.idm.core.syncml.Get;
import com.idm.core.syncml.Item;
import com.idm.core.syncml.Meta;
import com.idm.core.syncml.Replace;
import com.idm.core.syncml.Results;
import com.idm.core.syncml.Sequence;
import com.idm.core.syncml.Source;
import com.idm.core.syncml.Status;
import com.idm.core.syncml.Target;
import com.idm.core.tnds.IDMTndsMgmtTree;
import com.idm.core.tnds.IDMTndsNodeInfo;
import com.idm.core.tnds.IDMTndsXmlWbxmlConvertImpl;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import com.idm.providers.mo.IDMMoDatabaseAdapter;
import com.idm.providers.mo.IDMMoDatabaseManager;
import com.idm.providers.mo.IDMMoInterface;
import com.idm.providers.mo.IDMMoNodeInfo;
import com.idm.providers.mo.exception.IDMMoExceptionAlreadyExist;
import com.idm.providers.mo.exception.IDMMoExceptionNotAllow;
import com.idm.providers.mo.exception.IDMMoExceptionNotFound;
import com.idm.providers.mo.exception.IDMMoExceptionPermissionDenied;
import com.idm.service.actioninfo.IDMActionInfo;
import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import o.C0713b;

/* loaded from: classes.dex */
public class IDMDmCommandHandler implements Constants, IDMDmInterface, IDMMoInterface, IDMDmUICInterface {
    private IDMActionInfo actionInfo;
    private ArrayList<IDMDmAppSvcNodeInfo> appSvcNodeInfo;
    private IDMDmCommandInterface commandInterface;
    private Context context;
    private IDMDmContinueProcess dmContinueProcess;
    private ArrayList<IDMDmExecInfo> execCommand;
    private String largeObjFilePath;
    private String largeObjUri;
    private IDMMoDatabaseAdapter nodeInfoAdapter;
    private ArrayList<Command> responseCommandList;
    private int largeObjSize = 0;
    private C0713b uicResultStatus = new C0713b();
    private String recvMsgID = "";
    private String recvMaxObjSize = "";

    public IDMDmCommandHandler(Context context, IDMActionInfo iDMActionInfo, ArrayList<Command> arrayList, IDMDmCommandInterface iDMDmCommandInterface, ArrayList<IDMDmExecInfo> arrayList2, ArrayList<IDMDmAppSvcNodeInfo> arrayList3, IDMMoDatabaseManager iDMMoDatabaseManager, IDMDmContinueProcess iDMDmContinueProcess) {
        this.execCommand = null;
        this.appSvcNodeInfo = null;
        this.context = context;
        this.actionInfo = iDMActionInfo;
        this.responseCommandList = arrayList;
        this.nodeInfoAdapter = iDMMoDatabaseManager.idmMoGetDBAdapter();
        this.commandInterface = iDMDmCommandInterface;
        this.execCommand = arrayList2;
        this.appSvcNodeInfo = arrayList3;
        this.dmContinueProcess = iDMDmContinueProcess;
    }

    private boolean idmCheckAccessibleNode(String str) {
        if (this.nodeInfoAdapter.idmMoIsExistNode(this.actionInfo.idmGetServerId(), str)) {
            return (str.endsWith(IDMDmInterface.IDM_DMACC_PATH_AAUTHSECRET) || str.endsWith(IDMDmInterface.IDM_DMACC_PATH_AAUTHDATA) || str.endsWith("./Inbox")) ? false : true;
        }
        return true;
    }

    private boolean idmCmdUicAlert(String str) {
        return !this.uicResultStatus.containsKey(str) || "200".equals(this.uicResultStatus.getOrDefault(str, null));
    }

    private boolean idmCommandResultStatus() {
        return "200".equalsIgnoreCase(((Status) this.responseCommandList.get(r1.size() - 1)).getData());
    }

    private String idmGetCommandData(String str, String str2) {
        String data;
        Iterator<Command> it = this.responseCommandList.iterator();
        while (true) {
            if (!it.hasNext()) {
                data = "";
                break;
            }
            Command next = it.next();
            if (next instanceof Status) {
                Status status = (Status) next;
                String cmd = status.getCmd();
                String cmdRef = status.getCmdRef();
                if (str.equalsIgnoreCase(cmd) && str2.equalsIgnoreCase(cmdRef)) {
                    data = status.getData();
                    break;
                }
            }
        }
        IDMDebug.I("command data : " + data);
        return data;
    }

    private String idmGetParentAcl(String str) {
        String strSubstring = str.substring(0, str.lastIndexOf("/"));
        while (true) {
            String strIdmMoNodeGetAcl = this.nodeInfoAdapter.idmMoGetNodeInfoImplicit(this.actionInfo.idmGetServerId(), strSubstring).idmMoNodeGetAcl();
            if (!TextUtils.isEmpty(strIdmMoNodeGetAcl)) {
                IDMDebug.I("node : " + str + ", Acl : " + strIdmMoNodeGetAcl);
                return strIdmMoNodeGetAcl;
            }
            strSubstring = strSubstring.substring(0, strSubstring.lastIndexOf("/"));
        }
    }

    private String idmGetRecvMaxObjSize() {
        return this.recvMaxObjSize;
    }

    private String idmGetRecvMsgID() {
        return this.recvMsgID;
    }

    private int idmGetTNDSFlag(String str) {
        int i5;
        int i6;
        int i7 = 1;
        int i8 = 0;
        if (str.contains("+")) {
            String[] strArrSplit = str.split("\\+");
            if (strArrSplit.length > 1) {
                while (i7 < strArrSplit.length) {
                    if ("ACL".equals(strArrSplit[i7])) {
                        i6 = i8 | 1;
                    } else if ("Format".equals(strArrSplit[i7])) {
                        i6 = i8 | 2;
                    } else if ("Type".equals(strArrSplit[i7])) {
                        i6 = i8 | 4;
                    } else if ("Value".equals(strArrSplit[i7])) {
                        i6 = i8 | 8;
                    } else {
                        i7++;
                    }
                    i8 = i6;
                    i7++;
                }
            }
        } else {
            int i9 = 15;
            if (str.contains("-")) {
                String[] strArrSplit2 = str.split("-");
                if (strArrSplit2.length > 1) {
                    while (i7 < strArrSplit2.length) {
                        if ("ACL".equals(strArrSplit2[i7])) {
                            i5 = i9 ^ 1;
                        } else if ("Format".equals(strArrSplit2[i7])) {
                            i5 = i9 ^ 2;
                        } else if ("Type".equals(strArrSplit2[i7])) {
                            i5 = i9 ^ 4;
                        } else if ("Value".equals(strArrSplit2[i7])) {
                            i5 = i9 ^ 8;
                        } else {
                            i7++;
                        }
                        i9 = i5;
                        i7++;
                    }
                }
            } else if (str.equals(Constants.SYNCML_PROPERTY_TNDS)) {
            }
            i8 = i9;
        }
        IDMDebug.I("tndsFlag : " + i8);
        return i8;
    }

    /* JADX WARN: Not initialized variable reg: 19, insn: 0x01b6: MOVE (r3 I:??[OBJECT, ARRAY]) = (r19 I:??[OBJECT, ARRAY]), block:B:51:0x01b6 */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0325  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void idmMakeAddResponse(String str, String str2, String str3, String str4, int i5, String str5, boolean z4) throws NumberFormatException {
        String str6;
        String str7;
        String str8;
        char c2;
        if (TextUtils.isEmpty(str2)) {
            IDMDebug.I("locURI is null");
            idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, "500");
            return;
        }
        try {
            try {
                try {
                    try {
                        if (z4 && i5 > 0) {
                            if (this.nodeInfoAdapter.idmMoIsExistNode(this.actionInfo.idmGetServerId(), str2)) {
                                idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, "418");
                                return;
                            }
                            try {
                                if (!idmGetParentAcl(str2).contains(Constants.SYNCML_TAG_ADD)) {
                                    idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, Constants.STATUS_PERMISSION_DENIED);
                                    return;
                                }
                                this.largeObjSize = i5;
                                this.largeObjUri = str2;
                                this.largeObjFilePath = this.context.getApplicationInfo().dataDir + "/" + str2.replaceAll("/", "_").substring(2) + "_" + this.actionInfo.idmGetServerId() + "_" + this.actionInfo.idmGetSessionId();
                                StringBuilder sb = new StringBuilder("largeObjSize : ");
                                sb.append(this.largeObjSize);
                                IDMDebug.I(sb.toString());
                                StringBuilder sb2 = new StringBuilder("largeObjUri : ");
                                sb2.append(this.largeObjUri);
                                IDMDebug.I(sb2.toString());
                                IDMDebug.I("largeObjFilePath : " + this.largeObjFilePath);
                                int i6 = IDMDmInterface.IDM_MAX_OBJ_SIZE;
                                try {
                                    String strIdmGetRecvMaxObjSize = idmGetRecvMaxObjSize();
                                    if (!TextUtils.isEmpty(strIdmGetRecvMaxObjSize)) {
                                        i6 = Integer.parseInt(strIdmGetRecvMaxObjSize);
                                    }
                                } catch (NumberFormatException e5) {
                                    IDMDebug.printStackTrace(e5);
                                }
                                if (this.largeObjSize > i6) {
                                    IDMDebug.E("Large object size is over then MAX object size");
                                    idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, "500");
                                    return;
                                } else {
                                    IDMFileSystemAdapter iDMFileSystemAdapter = new IDMFileSystemAdapter();
                                    iDMFileSystemAdapter.idmFileDelete(this.largeObjFilePath);
                                    iDMFileSystemAdapter.idmAppendFileWrite(this.largeObjFilePath, str5.getBytes(Charset.defaultCharset()));
                                    idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, Constants.STATUS_ACCEPTED_AND_BUFFERED);
                                    return;
                                }
                            } catch (IDMMoExceptionNotFound unused) {
                                idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, "404");
                                return;
                            }
                        }
                        if (str2.equals(this.largeObjUri) && z4) {
                            IDMDebug.I("append large object data");
                            new IDMFileSystemAdapter().idmAppendFileWrite(this.largeObjFilePath, str5.getBytes(Charset.defaultCharset()));
                            idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, Constants.STATUS_ACCEPTED_AND_BUFFERED);
                            return;
                        }
                        try {
                            if (str2.equals(this.largeObjUri)) {
                                IDMFileSystemAdapter iDMFileSystemAdapter2 = new IDMFileSystemAdapter();
                                String strConcat = iDMFileSystemAdapter2.idmGetToStringFromFile(this.largeObjFilePath).concat(str5);
                                IDMDebug.I("szReplaceData.length : " + strConcat.length() + ", largeObjSize : " + this.largeObjSize);
                                if (strConcat.length() == this.largeObjSize) {
                                    this.nodeInfoAdapter.idmMoInsertNodeInfo(this.actionInfo.idmGetServerId(), str2, null, 2, str3, str4, strConcat, strConcat.length());
                                    idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, "200");
                                } else {
                                    IDMDebug.E("large object file size is mismatch");
                                    idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, Constants.STATUS_SIZE_MISMATCH);
                                }
                                iDMFileSystemAdapter2.idmFileDelete(this.largeObjFilePath);
                                return;
                            }
                            if (Constants.MIMETYPE_SYNCML_DMTNDS_XML.equals(str4)) {
                                IDMTndsMgmtTree iDMTndsMgmtTreeIdmTndsXmlDecoder = new IDMTndsXmlWbxmlConvertImpl().idmTndsXmlDecoder(str2, new ByteArrayInputStream(str5.getBytes(Charset.defaultCharset())));
                                ArrayList<IDMMoNodeInfo> arrayList = new ArrayList<>();
                                Iterator<IDMTndsNodeInfo> it = iDMTndsMgmtTreeIdmTndsXmlDecoder.idmTndsGetNodeList().iterator();
                                while (it.hasNext()) {
                                    IDMTndsNodeInfo next = it.next();
                                    arrayList.add(new IDMMoNodeInfo(next.idmTndsNodeGetPath(), next.idmTndsNodeGetName(), next.idmTndsNodeGetAcl(), 2, next.idmTndsNodeGetFormat(), next.idmTndsNodeGetType(), next.idmTndsNodeGetDepth(), next.idmTndsNodeGetValue()));
                                }
                                this.nodeInfoAdapter.idmMoInsertNodeInfoListImplicit(this.actionInfo.idmGetServerId(), arrayList);
                                idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, "200");
                                return;
                            }
                            if (Constants.MIMETYPE_SYNCML_DMTNDS_WBXML.equals(str4)) {
                                IDMTndsMgmtTree iDMTndsMgmtTreeIdmTndsWbxmlDecoder = new IDMTndsXmlWbxmlConvertImpl().idmTndsWbxmlDecoder(str2, new String(IDMCommonUtils.idmLibHexStringToBytes(str5), Charset.defaultCharset()));
                                ArrayList<IDMMoNodeInfo> arrayList2 = new ArrayList<>();
                                Iterator<IDMTndsNodeInfo> it2 = iDMTndsMgmtTreeIdmTndsWbxmlDecoder.idmTndsGetNodeList().iterator();
                                while (it2.hasNext()) {
                                    IDMTndsNodeInfo next2 = it2.next();
                                    arrayList2.add(new IDMMoNodeInfo(next2.idmTndsNodeGetPath(), next2.idmTndsNodeGetName(), next2.idmTndsNodeGetAcl(), 2, next2.idmTndsNodeGetFormat(), next2.idmTndsNodeGetType(), next2.idmTndsNodeGetDepth(), next2.idmTndsNodeGetValue()));
                                }
                                this.nodeInfoAdapter.idmMoInsertNodeInfoListImplicit(this.actionInfo.idmGetServerId(), arrayList2);
                                idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, "200");
                                return;
                            }
                            IDMDmCommandInterface iDMDmCommandInterface = this.commandInterface;
                            if (iDMDmCommandInterface != null) {
                                String strIdmProcessAdd = iDMDmCommandInterface.idmProcessAdd(this.actionInfo, str2, str5);
                                switch (strIdmProcessAdd.hashCode()) {
                                    case -1170475414:
                                        if (!strIdmProcessAdd.equals(IDMDmCommandInterface.IDM_APPLICABLE_NOUPDATE_MO)) {
                                            c2 = 65535;
                                            break;
                                        } else {
                                            c2 = 3;
                                            break;
                                        }
                                    case 49586:
                                        if (strIdmProcessAdd.equals("200")) {
                                            c2 = 1;
                                            break;
                                        }
                                        break;
                                    case 76480:
                                        if (strIdmProcessAdd.equals("N/A")) {
                                            c2 = 0;
                                            break;
                                        }
                                        break;
                                    case 119570335:
                                        if (strIdmProcessAdd.equals(IDMDmCommandInterface.IDM_APPLICABLE)) {
                                            c2 = 2;
                                            break;
                                        }
                                        break;
                                    default:
                                        c2 = 65535;
                                        break;
                                }
                                if (c2 != 0 && c2 != 1) {
                                    if (c2 != 2) {
                                        if (c2 != 3) {
                                            idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, strIdmProcessAdd);
                                            return;
                                        }
                                        this.appSvcNodeInfo.add(new IDMDmAppSvcNodeInfo(str2, str5, str3));
                                        idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, "200");
                                        IDMDebug.I("application Node, No Update MO");
                                        return;
                                    }
                                    this.appSvcNodeInfo.add(new IDMDmAppSvcNodeInfo(str2, str5, str3));
                                    IDMDebug.I("application Node");
                                }
                            }
                            this.nodeInfoAdapter.idmMoInsertNodeInfo(this.actionInfo.idmGetServerId(), str2, null, 2, str3, str4, str5, 0);
                            idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, "200");
                        } catch (IDMMoExceptionPermissionDenied unused2) {
                            str7 = str8;
                            idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, str7);
                        }
                    } catch (IDMMoExceptionNotFound unused3) {
                        str6 = "500";
                        idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, str6);
                    }
                } catch (IDMMoExceptionPermissionDenied unused4) {
                    str7 = Constants.STATUS_PERMISSION_DENIED;
                }
            } catch (IDMMoExceptionNotFound unused5) {
                str6 = "404";
                idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, str6);
            }
        } catch (IDMMoExceptionAlreadyExist unused6) {
            idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, "418");
        } catch (Exception e6) {
            idmMakeStatus(Constants.SYNCML_TAG_ADD, str, str2, "215");
            IDMDebug.printStackTrace(e6);
        }
    }

    private void idmMakeAlertResponse(String str) {
        try {
            idmMakeStatus(Constants.SYNCML_TAG_ALERT, str, null, "200");
        } catch (Exception e5) {
            idmMakeStatus(Constants.SYNCML_TAG_ALERT, str, null, "215");
            IDMDebug.printStackTrace(e5);
        }
    }

    private void idmMakeCommandAtomicRollback(int i5) {
        int size = this.responseCommandList.size();
        for (int i6 = size - i5; i6 < size && "200".equalsIgnoreCase(((Status) this.responseCommandList.get(i6)).getData()); i6++) {
            ((Status) this.responseCommandList.get(i6)).setData(Constants.STATUS_ATOMIC_ROLL_BACK_OK);
        }
    }

    private void idmMakeCopyResponse(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            IDMDebug.I("locURI and sourcelocURI is null");
            idmMakeStatus(Constants.SYNCML_TAG_COPY, str, str2, str3, "500");
            return;
        }
        try {
            IDMMoNodeInfo iDMMoNodeInfoIdmMoGetNodeInfoImplicit = this.nodeInfoAdapter.idmMoGetNodeInfoImplicit(this.actionInfo.idmGetServerId(), str3);
            if ("node".equals(iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetFormat())) {
                idmMakeStatus(Constants.SYNCML_TAG_COPY, str, str2, str3, "215");
                return;
            }
            if (this.nodeInfoAdapter.idmMoIsExistNode(this.actionInfo.idmGetServerId(), str2)) {
                if ("node".equals(this.nodeInfoAdapter.idmMoGetNodeInfoImplicit(this.actionInfo.idmGetServerId(), str2).idmMoNodeGetFormat())) {
                    idmMakeStatus(Constants.SYNCML_TAG_COPY, str, str2, str3, "215");
                    return;
                }
                try {
                    this.nodeInfoAdapter.idmMoInsertNodeInfoImplicit(this.actionInfo.idmGetServerId(), str2, iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetAcl(), iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetScope(), iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetFormat(), iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetType(), iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetValue(), 0);
                    idmMakeStatus(Constants.SYNCML_TAG_COPY, str, str2, str3, "200");
                    return;
                } catch (Exception e5) {
                    e = e5;
                    idmMakeStatus(Constants.SYNCML_TAG_COPY, str, str2, str3, "500");
                    IDMDebug.printStackTrace(e);
                    return;
                }
            }
            if (!this.nodeInfoAdapter.idmMoIsExistNode(this.actionInfo.idmGetServerId(), str2.substring(0, str2.lastIndexOf("/")))) {
                idmMakeStatus(Constants.SYNCML_TAG_COPY, str, str2, str3, "500");
                return;
            }
            try {
                if (!idmGetParentAcl(str2).contains(Constants.SYNCML_TAG_ADD)) {
                    idmMakeStatus(Constants.SYNCML_TAG_COPY, str, str2, str3, Constants.STATUS_PERMISSION_DENIED);
                } else {
                    this.nodeInfoAdapter.idmMoInsertNodeInfoImplicit(this.actionInfo.idmGetServerId(), str2, iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetAcl(), iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetScope(), iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetFormat(), iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetType(), iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetValue(), 0);
                    idmMakeStatus(Constants.SYNCML_TAG_COPY, str, str2, str3, "200");
                }
            } catch (IDMMoExceptionNotFound unused) {
                idmMakeStatus(Constants.SYNCML_TAG_COPY, str, str2, str3, "404");
            }
        } catch (Exception e6) {
            e = e6;
        }
    }

    private void idmMakeDeleteResponse(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            IDMDebug.I("locURI is null");
            idmMakeStatus(Constants.SYNCML_TAG_DELETE, str, str2, "500");
            return;
        }
        try {
            this.nodeInfoAdapter.idmMoDeleteNodeInfo(this.actionInfo.idmGetServerId(), str2);
            idmMakeStatus(Constants.SYNCML_TAG_DELETE, str, str2, "200");
        } catch (IDMMoExceptionNotAllow unused) {
            idmMakeStatus(Constants.SYNCML_TAG_DELETE, str, str2, "405");
        } catch (IDMMoExceptionNotFound unused2) {
            idmMakeStatus(Constants.SYNCML_TAG_DELETE, str, str2, "404");
        } catch (IDMMoExceptionPermissionDenied unused3) {
            idmMakeStatus(Constants.SYNCML_TAG_DELETE, str, str2, Constants.STATUS_PERMISSION_DENIED);
        } catch (Exception e5) {
            idmMakeStatus(Constants.SYNCML_TAG_DELETE, str, str2, "215");
            IDMDebug.printStackTrace(e5);
        }
    }

    private void idmMakeExecResponse(String str, String str2, String str3, String str4) {
        if (TextUtils.isEmpty(str3)) {
            IDMDebug.I("locURI is null");
            idmMakeStatus(Constants.SYNCML_TAG_EXEC, str, str3, "500");
            return;
        }
        try {
            IDMMoNodeInfo iDMMoNodeInfoIdmMoGetNodeInfoImplicit = this.nodeInfoAdapter.idmMoGetNodeInfoImplicit(this.actionInfo.idmGetServerId(), str3);
            if (iDMMoNodeInfoIdmMoGetNodeInfoImplicit == null) {
                idmMakeStatus(Constants.SYNCML_TAG_EXEC, str, str3, "500");
                return;
            }
            int iIdmMoNodeGetScope = iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetScope();
            String strIdmMoNodeGetAcl = iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetAcl();
            if (iIdmMoNodeGetScope == 1) {
                IDMDebug.I("Target is PermanentNode Fail");
                idmMakeStatus(Constants.SYNCML_TAG_EXEC, str, str3, "405");
                return;
            }
            if (!TextUtils.isEmpty(strIdmMoNodeGetAcl) && !strIdmMoNodeGetAcl.contains(Constants.SYNCML_TAG_EXEC)) {
                idmMakeStatus(Constants.SYNCML_TAG_EXEC, str, str3, Constants.STATUS_PERMISSION_DENIED);
                return;
            }
            IDMDmCommandInterface iDMDmCommandInterface = this.commandInterface;
            if (iDMDmCommandInterface == null) {
                idmMakeStatus(Constants.SYNCML_TAG_EXEC, str, str3, "500");
                return;
            }
            int iIdmProcessExec = iDMDmCommandInterface.idmProcessExec(this.actionInfo, str3);
            if (iIdmProcessExec != 2) {
                if (iIdmProcessExec == 0) {
                    idmMakeStatus(Constants.SYNCML_TAG_EXEC, str, str3, "200");
                    return;
                } else {
                    idmMakeStatus(Constants.SYNCML_TAG_EXEC, str, str3, "500");
                    return;
                }
            }
            this.execCommand.add(new IDMDmExecInfo(this.actionInfo.idmGetServerId(), this.actionInfo.idmGetSessionId(), str3, str2, str4));
            IDMDmContinueProcess iDMDmContinueProcess = this.dmContinueProcess;
            if (iDMDmContinueProcess != null) {
                idmMakeStatus(Constants.SYNCML_TAG_EXEC, str, str3, iDMDmContinueProcess.idmGetProcessAsyncExecStatus());
            } else {
                idmMakeStatus(Constants.SYNCML_TAG_EXEC, str, str3, Constants.STATUS_ACCEPTED_FOR_PROCESSING);
            }
        } catch (IDMMoExceptionNotFound unused) {
            idmMakeStatus(Constants.SYNCML_TAG_EXEC, str, str3, "404");
        }
    }

    private void idmMakeGetResponse(String str, String str2) {
        String strSubstring;
        String str3;
        if (TextUtils.isEmpty(str2)) {
            IDMDebug.I("locURI is null");
            return;
        }
        int iIndexOf = str2.indexOf(61);
        String strSubstring2 = null;
        if (iIndexOf != -1) {
            String strSubstring3 = str2.substring(iIndexOf + 1);
            int iIndexOf2 = str2.indexOf(63);
            if (iIndexOf2 != -1) {
                strSubstring2 = str2.substring(iIndexOf2 + 1, iIndexOf);
                strSubstring = str2.substring(0, iIndexOf2);
            } else {
                strSubstring = str2;
            }
            str3 = strSubstring2;
            strSubstring2 = strSubstring3;
        } else {
            strSubstring = str2;
            str3 = null;
        }
        try {
            if (!idmCheckAccessibleNode(strSubstring)) {
                idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, "405");
                return;
            }
            if (TextUtils.isEmpty(strSubstring2)) {
                idmMakeGetResponseCommand(str, str2, strSubstring);
            }
            if (Constants.SYNCML_PROPERTY_PROP.equals(str3)) {
                idmMakeGetResponseCommandProperty(str, str2, strSubstring, strSubstring2);
                return;
            }
            if (Constants.SYNCML_PROPERTY_LIST.equals(str3)) {
                if (!Constants.SYNCML_PROPERTY_STRUCT.equals(strSubstring2) && !Constants.SYNCML_PROPERTY_STRUCTDATA.equals(strSubstring2)) {
                    if (strSubstring2.contains(Constants.SYNCML_PROPERTY_TNDS)) {
                        idmMakeGetResponseCommandTNDS(str, str2, strSubstring, strSubstring2);
                        return;
                    } else {
                        idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, "405");
                        IDMDebug.E("Not support property : ".concat(strSubstring2));
                        return;
                    }
                }
                idmMakeGetResponseCommandStructure(str, str2, strSubstring, strSubstring2);
            }
        } catch (IDMMoExceptionNotFound unused) {
            idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, "404");
        } catch (IDMMoExceptionPermissionDenied unused2) {
            idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, Constants.STATUS_PERMISSION_DENIED);
        } catch (Exception e5) {
            idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, "215");
            IDMDebug.printStackTrace(e5);
        }
    }

    private void idmMakeGetResponseCommand(String str, String str2, String str3) throws NumberFormatException {
        String strIdmMoNodeGetData;
        String string;
        IDMDebug.I("idmMakeGetResponseCommand");
        ArrayList<IDMMoNodeInfo> arrayListIdmMoGetNodeInfoList = this.nodeInfoAdapter.idmMoGetNodeInfoList(this.actionInfo.idmGetServerId(), str3);
        if (arrayListIdmMoGetNodeInfoList == null) {
            IDMDebug.E("nodeInfoList is null");
            return;
        }
        if (arrayListIdmMoGetNodeInfoList.size() == 0) {
            IDMDebug.E("nodeInfoList size is 0");
            return;
        }
        IDMMoNodeInfo iDMMoNodeInfo = arrayListIdmMoGetNodeInfoList.get(0);
        String strIdmMoNodeGetFormat = iDMMoNodeInfo.idmMoNodeGetFormat();
        String strIdmMoNodeGetType = iDMMoNodeInfo.idmMoNodeGetType();
        int iIdmMoNodeGetDepth = iDMMoNodeInfo.idmMoNodeGetDepth();
        if ("node".equals(strIdmMoNodeGetFormat)) {
            StringBuilder sb = new StringBuilder();
            for (int i5 = 1; i5 < arrayListIdmMoGetNodeInfoList.size(); i5++) {
                IDMMoNodeInfo iDMMoNodeInfo2 = arrayListIdmMoGetNodeInfoList.get(i5);
                if (iIdmMoNodeGetDepth == iDMMoNodeInfo2.idmMoNodeGetDepth() - 1) {
                    if (!TextUtils.isEmpty(sb)) {
                        sb.append(IDMTndsXmlWbxmlDefine.XML_SLASH);
                    }
                    sb.append(iDMMoNodeInfo2.idmMoNodeGetName());
                }
            }
            string = sb.toString();
        } else {
            IDMDmCommandInterface iDMDmCommandInterface = this.commandInterface;
            if (iDMDmCommandInterface != null) {
                strIdmMoNodeGetData = iDMDmCommandInterface.idmProcessGet(this.actionInfo, str2);
                if ("N/A".equals(strIdmMoNodeGetData)) {
                    strIdmMoNodeGetData = idmMoNodeGetData(iDMMoNodeInfo, str3);
                }
            } else {
                strIdmMoNodeGetData = idmMoNodeGetData(iDMMoNodeInfo, str3);
            }
            int i6 = IDMDmInterface.IDM_MAX_OBJ_SIZE;
            try {
                String strIdmGetRecvMaxObjSize = idmGetRecvMaxObjSize();
                if (!TextUtils.isEmpty(strIdmGetRecvMaxObjSize)) {
                    i6 = Integer.parseInt(strIdmGetRecvMaxObjSize);
                }
            } catch (NumberFormatException e5) {
                IDMDebug.printStackTrace(e5);
            }
            if (!TextUtils.isEmpty(strIdmMoNodeGetData) && strIdmMoNodeGetData.length() > i6) {
                idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, Constants.STATUS_REQUEST_ENTITY_TOO_LARGE);
                return;
            }
            string = strIdmMoNodeGetData;
        }
        idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, "200");
        idmMakeResults(str, str2, strIdmMoNodeGetFormat, strIdmMoNodeGetType, string);
    }

    private void idmMakeGetResponseCommandProperty(String str, String str2, String str3, String str4) {
        IDMDebug.I("idmMakeGetResponseCommandProperty");
        IDMMoNodeInfo iDMMoNodeInfoIdmMoGetNodeInfo = this.nodeInfoAdapter.idmMoGetNodeInfo(this.actionInfo.idmGetServerId(), str3);
        if (iDMMoNodeInfoIdmMoGetNodeInfo == null) {
            IDMDebug.E("nodeInfo is null");
            return;
        }
        String strIdmMoNodeGetFormat = iDMMoNodeInfoIdmMoGetNodeInfo.idmMoNodeGetFormat();
        String strIdmMoNodeGetAcl = iDMMoNodeInfoIdmMoGetNodeInfo.idmMoNodeGetAcl();
        String strIdmMoNodeGetType = iDMMoNodeInfoIdmMoGetNodeInfo.idmMoNodeGetType();
        String strIdmMoNodeGetName = iDMMoNodeInfoIdmMoGetNodeInfo.idmMoNodeGetName();
        String strIdmMoNodeGetValue = iDMMoNodeInfoIdmMoGetNodeInfo.idmMoNodeGetValue();
        if ("ACL".equals(str4)) {
            idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, "200");
            idmMakeResults(str, str2, strIdmMoNodeGetFormat, strIdmMoNodeGetType, strIdmMoNodeGetAcl);
            return;
        }
        if ("Format".equals(str4)) {
            idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, "200");
            idmMakeResults(str, str2, strIdmMoNodeGetFormat, strIdmMoNodeGetType, strIdmMoNodeGetFormat);
            return;
        }
        if (Constants.SYNCML_PROPERTY_NAME.equals(str4)) {
            idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, "200");
            idmMakeResults(str, str2, strIdmMoNodeGetFormat, strIdmMoNodeGetType, strIdmMoNodeGetName);
            return;
        }
        if ("Type".equals(str4)) {
            idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, "200");
            idmMakeResults(str, str2, strIdmMoNodeGetFormat, strIdmMoNodeGetType, strIdmMoNodeGetType);
            return;
        }
        if (!"Size".equals(str4)) {
            idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, "405");
            IDMDebug.E("Not support property : " + str4);
            return;
        }
        if ("node".equalsIgnoreCase(strIdmMoNodeGetFormat)) {
            idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, "406");
        } else {
            idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, "200");
            idmMakeResults(str, str2, strIdmMoNodeGetFormat, strIdmMoNodeGetType, Integer.toString(!TextUtils.isEmpty(strIdmMoNodeGetValue) ? strIdmMoNodeGetValue.length() : 0));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0084 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0077 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void idmMakeGetResponseCommandStructure(String str, String str2, String str3, String str4) {
        String strIdmMoNodeGetData;
        String str5;
        IDMDebug.I("idmMakeGetResponseCommandStructure");
        ArrayList<IDMMoNodeInfo> arrayListIdmMoGetNodeInfoList = this.nodeInfoAdapter.idmMoGetNodeInfoList(this.actionInfo.idmGetServerId(), str3);
        if (arrayListIdmMoGetNodeInfoList == null) {
            IDMDebug.E("nodeInfoList is null");
            return;
        }
        if (arrayListIdmMoGetNodeInfoList.size() == 0) {
            IDMDebug.E("nodeInfoList size is 0");
            return;
        }
        if (str4 == null) {
            IDMDebug.E("property is null");
            return;
        }
        idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, "200");
        Iterator<IDMMoNodeInfo> it = arrayListIdmMoGetNodeInfoList.iterator();
        while (it.hasNext()) {
            IDMMoNodeInfo next = it.next();
            String strIdmMoNodeGetPath = next.idmMoNodeGetPath();
            String strIdmMoNodeGetFormat = next.idmMoNodeGetFormat();
            String strIdmMoNodeGetType = next.idmMoNodeGetType();
            IDMDmCommandInterface iDMDmCommandInterface = this.commandInterface;
            if (iDMDmCommandInterface != null) {
                String strIdmProcessGet = iDMDmCommandInterface.idmProcessGet(this.actionInfo, strIdmMoNodeGetPath);
                if ("N/A".equals(strIdmProcessGet)) {
                    strIdmMoNodeGetData = idmMoNodeGetData(next, str3);
                } else {
                    str5 = strIdmProcessGet;
                    if (Constants.SYNCML_PROPERTY_STRUCT.equals(str4)) {
                        if (!Constants.SYNCML_PROPERTY_STRUCTDATA.equals(str4)) {
                            IDMDebug.E("Not support property : ".concat(str4));
                            return;
                        } else if (idmCheckAccessibleNode(strIdmMoNodeGetPath)) {
                            idmMakeResults(str, strIdmMoNodeGetPath, strIdmMoNodeGetFormat, strIdmMoNodeGetType, str5);
                        }
                    } else if (idmCheckAccessibleNode(strIdmMoNodeGetPath)) {
                        idmMakeResults(str, strIdmMoNodeGetPath, strIdmMoNodeGetFormat, strIdmMoNodeGetType, null);
                    }
                }
            } else {
                strIdmMoNodeGetData = idmMoNodeGetData(next, str3);
            }
            str5 = strIdmMoNodeGetData;
            if (Constants.SYNCML_PROPERTY_STRUCT.equals(str4)) {
            }
        }
    }

    private void idmMakeGetResponseCommandTNDS(String str, String str2, String str3, String str4) throws Exception {
        IDMDebug.I("idmMakeGetResponseCommandTNDS");
        ArrayList<IDMMoNodeInfo> arrayListIdmMoGetNodeInfoList = this.nodeInfoAdapter.idmMoGetNodeInfoList(this.actionInfo.idmGetServerId(), str3);
        if (arrayListIdmMoGetNodeInfoList == null) {
            IDMDebug.E("nodeInfoList is null");
            return;
        }
        if (arrayListIdmMoGetNodeInfoList.size() == 0) {
            IDMDebug.E("nodeInfoList size is 0");
            return;
        }
        if (str4 == null) {
            throw new Exception("property is invalid");
        }
        int iIdmGetTNDSFlag = idmGetTNDSFlag(str4);
        if (iIdmGetTNDSFlag == 0) {
            throw new Exception("property is invalid");
        }
        idmMakeStatus(Constants.SYNCML_TAG_GET, str, str2, "200");
        IDMTndsXmlWbxmlConvertImpl iDMTndsXmlWbxmlConvertImpl = new IDMTndsXmlWbxmlConvertImpl();
        ArrayList<IDMTndsNodeInfo> arrayList = new ArrayList<>();
        Iterator<IDMMoNodeInfo> it = arrayListIdmMoGetNodeInfoList.iterator();
        while (it.hasNext()) {
            IDMMoNodeInfo next = it.next();
            arrayList.add(new IDMTndsNodeInfo(next.idmMoNodeGetPath(), next.idmMoNodeGetName(), next.idmMoNodeGetAcl(), next.idmMoNodeGetFormat(), next.idmMoNodeGetType(), next.idmMoNodeGetDepth(), next.idmMoNodeGetValue()));
        }
        idmMakeResults(str, str3, "xml", Constants.MIMETYPE_SYNCML_DMTNDS_XML, iDMTndsXmlWbxmlConvertImpl.idmTndsXmlEncoder(arrayList, iIdmGetTNDSFlag));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void idmMakeReplaceResponse(String str, String str2, String str3, String str4, int i5, String str5, boolean z4) throws NumberFormatException {
        String str6;
        String strSubstring;
        String strSubstring2;
        if (TextUtils.isEmpty(str2)) {
            IDMDebug.I("locURI is null");
            idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "500");
            return;
        }
        int iIndexOf = str2.indexOf(61);
        if (iIndexOf != -1) {
            strSubstring = str2.substring(iIndexOf + 1);
            int iIndexOf2 = str2.indexOf(63);
            if (iIndexOf2 != -1) {
                String strSubstring3 = str2.substring(iIndexOf2 + 1, iIndexOf);
                strSubstring2 = str2.substring(0, iIndexOf2);
                str6 = strSubstring3;
                if (!TextUtils.isEmpty(strSubstring)) {
                    idmMakeReplaceResponseCommand(str, strSubstring2, str3, str4, i5, str5, z4);
                    return;
                } else {
                    if (Constants.SYNCML_PROPERTY_PROP.equals(str6)) {
                        idmMakeReplaceResponseCommandProperty(str, str2, strSubstring2, str5, strSubstring);
                        return;
                    }
                    return;
                }
            }
            str6 = null;
        } else {
            str6 = null;
            strSubstring = null;
        }
        strSubstring2 = str2;
        if (!TextUtils.isEmpty(strSubstring)) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x02d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void idmMakeReplaceResponseCommand(String str, String str2, String str3, String str4, int i5, String str5, boolean z4) throws NumberFormatException {
        char c2;
        IDMDebug.I("idmMakeReplaceResponseCommand");
        try {
            if (z4 && i5 > 0) {
                IDMMoNodeInfo iDMMoNodeInfoIdmMoGetNodeInfoImplicit = this.nodeInfoAdapter.idmMoGetNodeInfoImplicit(this.actionInfo.idmGetServerId(), str2);
                int iIdmMoNodeGetScope = iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetScope();
                String strIdmMoNodeGetAcl = iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetAcl();
                if (iIdmMoNodeGetScope == 1) {
                    IDMDebug.I("Target is PermanentNode Fail");
                    idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "405");
                    return;
                }
                if (TextUtils.isEmpty(strIdmMoNodeGetAcl)) {
                    if (!idmGetParentAcl(str2).contains(Constants.SYNCML_TAG_REPLACE)) {
                        idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, Constants.STATUS_PERMISSION_DENIED);
                        return;
                    }
                } else if (!strIdmMoNodeGetAcl.contains(Constants.SYNCML_TAG_REPLACE)) {
                    idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, Constants.STATUS_PERMISSION_DENIED);
                    return;
                }
                this.largeObjSize = i5;
                this.largeObjUri = str2;
                this.largeObjFilePath = this.context.getApplicationInfo().dataDir + "/" + str2.replaceAll("/", "_").substring(2) + "_" + this.actionInfo.idmGetServerId() + "_" + this.actionInfo.idmGetSessionId();
                StringBuilder sb = new StringBuilder("largeObjSize : ");
                sb.append(this.largeObjSize);
                IDMDebug.I(sb.toString());
                StringBuilder sb2 = new StringBuilder("largeObjUri : ");
                sb2.append(this.largeObjUri);
                IDMDebug.I(sb2.toString());
                IDMDebug.I("largeObjFilePath : " + this.largeObjFilePath);
                int i6 = IDMDmInterface.IDM_MAX_OBJ_SIZE;
                try {
                    String strIdmGetRecvMaxObjSize = idmGetRecvMaxObjSize();
                    if (!TextUtils.isEmpty(strIdmGetRecvMaxObjSize)) {
                        i6 = Integer.parseInt(strIdmGetRecvMaxObjSize);
                    }
                } catch (NumberFormatException e5) {
                    IDMDebug.printStackTrace(e5);
                }
                if (this.largeObjSize > i6) {
                    IDMDebug.E("Large object size is over then MAX object size");
                    idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "500");
                    return;
                } else {
                    IDMFileSystemAdapter iDMFileSystemAdapter = new IDMFileSystemAdapter();
                    iDMFileSystemAdapter.idmFileDelete(this.largeObjFilePath);
                    iDMFileSystemAdapter.idmAppendFileWrite(this.largeObjFilePath, str5.getBytes(Charset.defaultCharset()));
                    idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, Constants.STATUS_ACCEPTED_AND_BUFFERED);
                    return;
                }
            }
            if (str2.equals(this.largeObjUri) && z4) {
                IDMDebug.I("append large object data");
                new IDMFileSystemAdapter().idmAppendFileWrite(this.largeObjFilePath, str5.getBytes(Charset.defaultCharset()));
                idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, Constants.STATUS_ACCEPTED_AND_BUFFERED);
                return;
            }
            if (str2.equals(this.largeObjUri)) {
                IDMFileSystemAdapter iDMFileSystemAdapter2 = new IDMFileSystemAdapter();
                String strConcat = iDMFileSystemAdapter2.idmGetToStringFromFile(this.largeObjFilePath).concat(str5);
                IDMDebug.I("szReplaceData.length : " + strConcat.length() + ", largeObjSize : " + this.largeObjSize);
                if (strConcat.length() == this.largeObjSize) {
                    this.nodeInfoAdapter.idmMoUpdateNodeInfo(this.actionInfo.idmGetServerId(), str2, strConcat, null);
                    idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "200");
                } else {
                    IDMDebug.E("large object file size is mismatch");
                    idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, Constants.STATUS_SIZE_MISMATCH);
                }
                iDMFileSystemAdapter2.idmFileDelete(this.largeObjFilePath);
                return;
            }
            if (Constants.MIMETYPE_SYNCML_DMTNDS_XML.equals(str4)) {
                ArrayList<IDMTndsNodeInfo> arrayListIdmTndsGetNodeList = new IDMTndsXmlWbxmlConvertImpl().idmTndsXmlDecoder(str2, new ByteArrayInputStream(str5.getBytes(Charset.defaultCharset()))).idmTndsGetNodeList();
                ArrayList<IDMMoNodeInfo> arrayList = new ArrayList<>();
                Iterator<IDMTndsNodeInfo> it = arrayListIdmTndsGetNodeList.iterator();
                while (it.hasNext()) {
                    IDMTndsNodeInfo next = it.next();
                    arrayList.add(new IDMMoNodeInfo(next.idmTndsNodeGetPath(), next.idmTndsNodeGetName(), next.idmTndsNodeGetAcl(), 2, next.idmTndsNodeGetFormat(), next.idmTndsNodeGetType(), next.idmTndsNodeGetDepth(), next.idmTndsNodeGetValue()));
                }
                this.nodeInfoAdapter.idmMoInsertNodeInfoListImplicit(this.actionInfo.idmGetServerId(), arrayList);
                idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "200");
                return;
            }
            if (Constants.MIMETYPE_SYNCML_DMTNDS_WBXML.equals(str4)) {
                ArrayList<IDMTndsNodeInfo> arrayListIdmTndsGetNodeList2 = new IDMTndsXmlWbxmlConvertImpl().idmTndsWbxmlDecoder(str2, new String(IDMCommonUtils.idmLibHexStringToBytes(str5), Charset.defaultCharset())).idmTndsGetNodeList();
                ArrayList<IDMMoNodeInfo> arrayList2 = new ArrayList<>();
                Iterator<IDMTndsNodeInfo> it2 = arrayListIdmTndsGetNodeList2.iterator();
                while (it2.hasNext()) {
                    IDMTndsNodeInfo next2 = it2.next();
                    arrayList2.add(new IDMMoNodeInfo(next2.idmTndsNodeGetPath(), next2.idmTndsNodeGetName(), next2.idmTndsNodeGetAcl(), 2, next2.idmTndsNodeGetFormat(), next2.idmTndsNodeGetType(), next2.idmTndsNodeGetDepth(), next2.idmTndsNodeGetValue()));
                }
                this.nodeInfoAdapter.idmMoInsertNodeInfoListImplicit(this.actionInfo.idmGetServerId(), arrayList2);
                idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "200");
                return;
            }
            IDMDmCommandInterface iDMDmCommandInterface = this.commandInterface;
            if (iDMDmCommandInterface != null) {
                String strIdmProcessReplace = iDMDmCommandInterface.idmProcessReplace(this.actionInfo, str2, str5);
                if (IDMDmCommandInterface.IDM_APPLICABLE_NOUPDATE_MO.equals(strIdmProcessReplace)) {
                    this.appSvcNodeInfo.add(new IDMDmAppSvcNodeInfo(str2, str5, str3));
                    idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "200");
                    IDMDebug.I("application Node, No Update MO");
                    return;
                }
                this.nodeInfoAdapter.idmMoUpdateNodeInfo(this.actionInfo.idmGetServerId(), str2, str5, null);
                int iHashCode = strIdmProcessReplace.hashCode();
                if (iHashCode != 76480) {
                    c2 = (iHashCode == 119570335 && strIdmProcessReplace.equals(IDMDmCommandInterface.IDM_APPLICABLE)) ? (char) 1 : (char) 65535;
                } else if (strIdmProcessReplace.equals("N/A")) {
                    c2 = 0;
                }
                if (c2 == 0) {
                    idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "200");
                } else {
                    if (c2 != 1) {
                        idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, strIdmProcessReplace);
                        return;
                    }
                    this.appSvcNodeInfo.add(new IDMDmAppSvcNodeInfo(str2, str5, str3));
                    idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "200");
                    IDMDebug.I("application Node");
                }
            }
        } catch (IDMMoExceptionNotFound unused) {
            idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "404");
        } catch (IDMMoExceptionPermissionDenied unused2) {
            idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, Constants.STATUS_PERMISSION_DENIED);
        } catch (Exception e6) {
            idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "215");
            IDMDebug.printStackTrace(e6);
        }
    }

    private void idmMakeReplaceResponseCommandProperty(String str, String str2, String str3, String str4, String str5) {
        IDMDebug.I("idmMakeReplaceResponseCommandProperty");
        if (!"ACL".equals(str5)) {
            idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "405");
            IDMDebug.E("Not support property : " + str5);
            return;
        }
        try {
            IDMMoNodeInfo iDMMoNodeInfoIdmMoGetNodeInfoImplicit = this.nodeInfoAdapter.idmMoGetNodeInfoImplicit(this.actionInfo.idmGetServerId(), str3);
            if (iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetScope() == 1) {
                IDMDebug.I("Target is PermanentNode Fail");
                idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "405");
            } else if (!"node".equals(iDMMoNodeInfoIdmMoGetNodeInfoImplicit.idmMoNodeGetFormat()) && !idmGetParentAcl(str3).contains(Constants.SYNCML_TAG_REPLACE)) {
                idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, Constants.STATUS_PERMISSION_DENIED);
            } else {
                this.nodeInfoAdapter.idmMoUpdateNodeInfo(this.actionInfo.idmGetServerId(), str3, null, str4);
                idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "200");
            }
        } catch (IDMMoExceptionNotFound unused) {
            idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, "404");
        } catch (IDMMoExceptionPermissionDenied unused2) {
            idmMakeStatus(Constants.SYNCML_TAG_REPLACE, str, str2, Constants.STATUS_PERMISSION_DENIED);
        }
    }

    private void idmMakeResults(String str, String str2, String str3, String str4, String str5) {
        IDMDebug.I("idmMakeResults");
        Results results = new Results();
        results.setMsgRef(idmGetRecvMsgID());
        results.setCmdRef(str);
        Item item = new Item();
        Source source = new Source();
        source.setLocURI(str2);
        item.setSource(source);
        item.setData(str5);
        Meta meta = new Meta();
        meta.setFormat(str3);
        meta.setType(str4);
        if (!"node".equals(str3) && str5 != null) {
            meta.setSize(Integer.toString(str5.length()));
        }
        item.setMeta(meta);
        results.getItemList().add(item);
        this.responseCommandList.add(results);
    }

    private void idmMakeStatus(String str, String str2, String str3, String str4) {
        IDMDebug.I("idmMakeStatus");
        Status status = new Status();
        status.setMsgRef(idmGetRecvMsgID());
        status.setCmdRef(str2);
        status.setCmd(str);
        status.setTargetRef(str3);
        status.setData(str4);
        this.responseCommandList.add(status);
    }

    private void idmSaveCmdUicAlertStatus(int i5, String str) {
        if (i5 == 1) {
            this.uicResultStatus.put(Constants.SYNCML_TAG_ATOMIC, str);
        } else if (i5 == 3) {
            this.uicResultStatus.put(Constants.SYNCML_TAG_SEQUENCE, str);
        } else {
            this.uicResultStatus.put(Constants.SYNCML_TAG_SYNCBODY, str);
        }
    }

    private void idmSetCommandData(String str, String str2, String str3) {
        IDMDebug.I("idmSetCommandData");
        Iterator<Command> it = this.responseCommandList.iterator();
        while (it.hasNext()) {
            Command next = it.next();
            if (next instanceof Status) {
                Status status = (Status) next;
                String cmd = status.getCmd();
                String cmdRef = status.getCmdRef();
                if (str.equalsIgnoreCase(cmd) && str2.equalsIgnoreCase(cmdRef)) {
                    status.setData(str3);
                    return;
                }
            }
        }
    }

    private String idmVerifyUpperTag(int i5) {
        return i5 == 1 ? Constants.SYNCML_TAG_ATOMIC : i5 == 3 ? Constants.SYNCML_TAG_SEQUENCE : i5 == 0 ? Constants.SYNCML_TAG_SYNCBODY : "";
    }

    private void idmWriteFile(String str, byte[] bArr, boolean z4) throws IOException {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(str, z4));
            try {
                dataOutputStream.write(bArr);
                dataOutputStream.close();
            } finally {
            }
        } catch (IOException e5) {
            IDMDebug.printStackTrace(e5);
            throw e5;
        }
    }

    public String idmAuthTypeConvertValue(String str) {
        str.getClass();
        switch (str) {
            case "syncml:auth-basic":
                return "BASIC";
            case "syncml:auth-MAC":
                return "HMAC";
            case "syncml:auth-md5":
                return "DIGEST";
            default:
                return "NONE";
        }
    }

    public String idmMoNodeGetData(IDMMoNodeInfo iDMMoNodeInfo, String str) {
        return str.endsWith(IDMDmInterface.IDM_DMACC_PATH_AAUTHTYPE) ? idmAuthTypeConvertValue(iDMMoNodeInfo.idmMoNodeGetValue()) : iDMMoNodeInfo.idmMoNodeGetValue();
    }

    public void idmProcessAdd(Add add, int i5, int i6) throws NumberFormatException {
        String type;
        int i7;
        String str;
        IDMDebug.I("idmProcessAdd");
        if (this.responseCommandList == null) {
            IDMDebug.I("responseCommandList is null");
            return;
        }
        String cmdID = add.getCmdID();
        Iterator<Item> it = add.getItemList().iterator();
        while (it.hasNext()) {
            Item next = it.next();
            Meta meta = next.getMeta();
            Target target = next.getTarget();
            String data = next.getData();
            boolean zIsMoreData = next.isMoreData();
            if (target != null) {
                String locURI = target.getLocURI();
                int i8 = 0;
                if (meta != null) {
                    String format = meta.getFormat();
                    type = meta.getType();
                    try {
                        if (meta.getSize() != null) {
                            i8 = Integer.parseInt(meta.getSize());
                        }
                    } catch (NumberFormatException e5) {
                        IDMDebug.printStackTrace(e5);
                    }
                    i7 = i8;
                    str = format;
                } else {
                    type = null;
                    i7 = 0;
                    str = null;
                }
                if (i5 != 3) {
                    idmMakeStatus(Constants.SYNCML_TAG_ADD, cmdID, locURI, i5 == 1 ? "401" : "407");
                } else if (i6 == 2 || i6 == 4) {
                    idmMakeStatus(Constants.SYNCML_TAG_ADD, cmdID, locURI, "215");
                } else if (idmCmdUicAlert(idmVerifyUpperTag(i6))) {
                    idmMakeAddResponse(cmdID, locURI, str, type, i7, data, zIsMoreData);
                } else {
                    idmMakeStatus(Constants.SYNCML_TAG_ADD, cmdID, locURI, "215");
                }
            } else {
                idmMakeStatus(Constants.SYNCML_TAG_ADD, cmdID, null, "404");
            }
        }
    }

    public void idmProcessAlert(Alert alert, int i5, int i6) throws InterruptedException {
        IDMDebug.I("idmProcessAlert");
        if (this.responseCommandList == null) {
            IDMDebug.I("responseCommandList is null");
            return;
        }
        String cmdID = alert.getCmdID();
        if (i5 != 3) {
            idmMakeStatus(Constants.SYNCML_TAG_ALERT, cmdID, null, i5 == 1 ? "401" : "407");
            return;
        }
        if (i6 == 2 || i6 == 4) {
            idmMakeStatus(Constants.SYNCML_TAG_ALERT, cmdID, null, "215");
            return;
        }
        if (!idmCmdUicAlert(idmVerifyUpperTag(i6))) {
            idmMakeStatus(Constants.SYNCML_TAG_ALERT, cmdID, null, "215");
            return;
        }
        ArrayList<Item> itemList = alert.getItemList();
        String data = alert.getData();
        if (!Constants.ALERT_DISPLAY.equals(data) && !Constants.ALERT_CONFIRMATION.equals(data) && !Constants.ALERT_USER_INPUT.equals(data) && !Constants.ALERT_SINGLE_CHOICE.equals(data) && !Constants.ALERT_MULTIPLE_CHOICE.equals(data)) {
            if (Constants.ALERT_NEXT_MESSAGE.equals(data)) {
                IDMDebug.I("ALERT_NEXT_MESSAGE");
                idmMakeAlertResponse(cmdID);
                return;
            } else {
                if (Constants.ALERT_SESSION_ABORT.equals(data)) {
                    IDMDebug.I("ALERT_SESSION_ABORT");
                    idmMakeAlertResponse(cmdID);
                    return;
                }
                return;
            }
        }
        IDMDmUICInfo iDMDmUICInfoIdmDecode = new IDMDmUICDecoder().idmDecode(data, itemList);
        if (iDMDmUICInfoIdmDecode == null) {
            IDMDebug.I("uicInfo is null...");
            return;
        }
        IDMDmUICTaskThread iDMDmUICTaskThread = new IDMDmUICTaskThread(this.context, iDMDmUICInfoIdmDecode);
        Thread thread = new Thread(iDMDmUICTaskThread);
        thread.start();
        try {
            thread.join();
        } catch (InterruptedException e5) {
            IDMDebug.printStackTrace(e5);
        }
        IDMDebug.I("uicTaskThread join Finish !!!");
        IDMDmUICResult iDMDmUICResultIdmGetUicResult = iDMDmUICTaskThread.idmGetUicResult();
        idmMakeAlertResponse(cmdID, iDMDmUICResultIdmGetUicResult);
        idmSaveCmdUicAlertStatus(i6, iDMDmUICResultIdmGetUicResult.idmGetStatusCode());
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void idmProcessAtomic(Atomic atomic, int i5, int i6) throws InterruptedException, NumberFormatException {
        int i7;
        Iterator<Command> it;
        IDMDebug.I("idmProcessAtomic");
        if (this.responseCommandList == null) {
            IDMDebug.I("responseCommandList is null");
            return;
        }
        this.nodeInfoAdapter.idmMoDatabaseBeginTransaction();
        int size = this.appSvcNodeInfo.size();
        IDMDebug.I("backUpApplicationNodeSize : " + size);
        String cmdID = atomic.getCmdID();
        if (i5 == 3) {
            if (i6 == 1) {
                idmMakeStatus(Constants.SYNCML_TAG_ATOMIC, cmdID, null, "500");
            } else if (i6 == 2 || i6 == 4 || !idmCmdUicAlert(idmVerifyUpperTag(i6))) {
                idmMakeStatus(Constants.SYNCML_TAG_ATOMIC, cmdID, null, "215");
            } else {
                idmMakeStatus(Constants.SYNCML_TAG_ATOMIC, cmdID, null, null);
            }
            i7 = 2;
            ArrayList<Command> commandList = atomic.getCommandList();
            it = commandList.iterator();
            while (it.hasNext()) {
                Command next = it.next();
                if (next instanceof Get) {
                    idmProcessGet((Get) next, i5, i7);
                    if (i7 != 2) {
                        i7 = 2;
                    }
                }
                if (next instanceof Exec) {
                    idmProcessExec((Exec) next, i5, i7);
                    if (i7 != 2) {
                        i7 = 2;
                    }
                } else if (next instanceof Replace) {
                    idmProcessReplace((Replace) next, i5, i7);
                    if (i7 != 2 && !idmCommandResultStatus()) {
                        i7 = 2;
                    }
                } else if (next instanceof Add) {
                    idmProcessAdd((Add) next, i5, i7);
                    if (i7 != 2 && !idmCommandResultStatus()) {
                        i7 = 2;
                    }
                } else if (next instanceof Delete) {
                    idmProcessDelete((Delete) next, i5, i7);
                    if (i7 != 2 && !idmCommandResultStatus()) {
                        i7 = 2;
                    }
                } else if (next instanceof Copy) {
                    idmProcessCopy((Copy) next, i5, i7);
                    if (i7 != 2 && !idmCommandResultStatus()) {
                        i7 = 2;
                    }
                } else if (next instanceof Alert) {
                    idmProcessAlert((Alert) next, i5, i7);
                    if (i7 != 2 && !idmCommandResultStatus()) {
                        i7 = 2;
                    }
                } else {
                    if (next instanceof Atomic) {
                        idmProcessAtomic((Atomic) next, i5, i7);
                    } else if (next instanceof Sequence) {
                        idmProcessSequence((Sequence) next, i5, i7);
                    }
                    i7 = 2;
                }
            }
            if (i5 == 3) {
                this.nodeInfoAdapter.idmMoDatabaseEndTransaction();
            } else if (i7 == 1) {
                this.nodeInfoAdapter.idmMoDatabaseSetTransactionSuccessful();
                this.nodeInfoAdapter.idmMoDatabaseEndTransaction();
                idmSetCommandData(Constants.SYNCML_TAG_ATOMIC, cmdID, "200");
            } else {
                this.nodeInfoAdapter.idmMoDatabaseEndTransaction();
                idmMakeCommandAtomicRollback(commandList.size());
                for (int size2 = this.appSvcNodeInfo.size(); size2 > size; size2--) {
                    this.appSvcNodeInfo.remove(size2 - 1);
                }
                if (TextUtils.isEmpty(idmGetCommandData(Constants.SYNCML_TAG_ATOMIC, cmdID))) {
                    idmSetCommandData(Constants.SYNCML_TAG_ATOMIC, cmdID, Constants.STATUS_ATOMIC_FAILED);
                }
            }
            idmUicAlertResultClear(Constants.SYNCML_TAG_ATOMIC);
        }
        idmMakeStatus(Constants.SYNCML_TAG_ATOMIC, cmdID, null, i5 == 1 ? "401" : "407");
        i7 = 1;
        ArrayList<Command> commandList2 = atomic.getCommandList();
        it = commandList2.iterator();
        while (it.hasNext()) {
        }
        if (i5 == 3) {
        }
        idmUicAlertResultClear(Constants.SYNCML_TAG_ATOMIC);
    }

    public void idmProcessCopy(Copy copy, int i5, int i6) {
        IDMDebug.I("idmProcessCopy");
        if (this.responseCommandList == null) {
            IDMDebug.I("responseCommandList is null");
            return;
        }
        String cmdID = copy.getCmdID();
        Iterator<Item> it = copy.getItemList().iterator();
        while (it.hasNext()) {
            Item next = it.next();
            Target target = next.getTarget();
            Source source = next.getSource();
            if (target == null || source == null) {
                idmMakeStatus(Constants.SYNCML_TAG_COPY, cmdID, target != null ? target.getLocURI() : null, source != null ? source.getLocURI() : null, "404");
            } else {
                String locURI = target.getLocURI();
                String locURI2 = source.getLocURI();
                if (i5 != 3) {
                    idmMakeStatus(Constants.SYNCML_TAG_COPY, cmdID, locURI, locURI2, i5 == 1 ? "401" : "407");
                } else if (i6 == 2 || i6 == 4) {
                    idmMakeStatus(Constants.SYNCML_TAG_COPY, cmdID, locURI, locURI2, "215");
                } else if (idmCmdUicAlert(idmVerifyUpperTag(i6))) {
                    idmMakeCopyResponse(cmdID, locURI, locURI2);
                } else {
                    idmMakeStatus(Constants.SYNCML_TAG_COPY, cmdID, locURI, locURI2, "215");
                }
            }
        }
    }

    public void idmProcessDelete(Delete delete, int i5, int i6) {
        IDMDebug.I("idmProcessDelete");
        if (this.responseCommandList == null) {
            IDMDebug.I("responseCommandList is null");
            return;
        }
        String cmdID = delete.getCmdID();
        Iterator<Item> it = delete.getItemList().iterator();
        while (it.hasNext()) {
            Target target = it.next().getTarget();
            if (target != null) {
                String locURI = target.getLocURI();
                if (i5 != 3) {
                    idmMakeStatus(Constants.SYNCML_TAG_DELETE, cmdID, locURI, i5 == 1 ? "401" : "407");
                } else if (i6 == 2 || i6 == 4) {
                    idmMakeStatus(Constants.SYNCML_TAG_DELETE, cmdID, locURI, "215");
                } else if (idmCmdUicAlert(idmVerifyUpperTag(i6))) {
                    idmMakeDeleteResponse(cmdID, locURI);
                } else {
                    idmMakeStatus(Constants.SYNCML_TAG_DELETE, cmdID, locURI, "215");
                }
            } else {
                idmMakeStatus(Constants.SYNCML_TAG_DELETE, cmdID, null, "404");
            }
        }
    }

    public void idmProcessExec(Exec exec, int i5, int i6) {
        IDMDebug.I("idmProcessExec");
        if (this.responseCommandList == null) {
            IDMDebug.I("responseCommandList is null");
            return;
        }
        String cmdID = exec.getCmdID();
        ArrayList<Item> itemList = exec.getItemList();
        String correlator = exec.getCorrelator();
        Iterator<Item> it = itemList.iterator();
        while (it.hasNext()) {
            Item next = it.next();
            Target target = next.getTarget();
            String data = next.getData();
            if (target != null) {
                String locURI = target.getLocURI();
                if (i5 != 3) {
                    idmMakeStatus(Constants.SYNCML_TAG_EXEC, cmdID, locURI, i5 == 1 ? "401" : "407");
                } else if (i6 == 1) {
                    idmMakeStatus(Constants.SYNCML_TAG_EXEC, cmdID, locURI, "500");
                } else if (i6 == 2 || i6 == 4) {
                    idmMakeStatus(Constants.SYNCML_TAG_EXEC, cmdID, locURI, "215");
                } else if (idmCmdUicAlert(idmVerifyUpperTag(i6))) {
                    idmMakeExecResponse(cmdID, correlator, locURI, data);
                } else {
                    idmMakeStatus(Constants.SYNCML_TAG_EXEC, cmdID, locURI, "215");
                }
            } else {
                idmMakeStatus(Constants.SYNCML_TAG_EXEC, cmdID, null, "404");
            }
        }
    }

    public void idmProcessGet(Get get, int i5, int i6) {
        IDMDebug.I("idmProcessGet");
        if (this.responseCommandList == null) {
            IDMDebug.E("responseCommandList is null");
            return;
        }
        String cmdID = get.getCmdID();
        Iterator<Item> it = get.getItemList().iterator();
        while (it.hasNext()) {
            Target target = it.next().getTarget();
            if (target != null) {
                String locURI = target.getLocURI();
                if (i5 != 3) {
                    idmMakeStatus(Constants.SYNCML_TAG_GET, cmdID, locURI, i5 == 1 ? "401" : "407");
                } else if (i6 == 1) {
                    idmMakeStatus(Constants.SYNCML_TAG_GET, cmdID, locURI, "500");
                } else if (i6 == 2 || i6 == 4) {
                    idmMakeStatus(Constants.SYNCML_TAG_GET, cmdID, locURI, "215");
                } else if (idmCmdUicAlert(idmVerifyUpperTag(i6))) {
                    idmMakeGetResponse(cmdID, locURI);
                } else {
                    idmMakeStatus(Constants.SYNCML_TAG_GET, cmdID, locURI, "215");
                }
            } else {
                idmMakeStatus(Constants.SYNCML_TAG_GET, cmdID, null, "404");
            }
        }
    }

    public void idmProcessReplace(Replace replace, int i5, int i6) throws NumberFormatException {
        String type;
        int i7;
        String str;
        IDMDebug.I("idmProcessReplace");
        if (this.responseCommandList == null) {
            IDMDebug.I("responseCommandList is null");
            return;
        }
        String cmdID = replace.getCmdID();
        Iterator<Item> it = replace.getItemList().iterator();
        while (it.hasNext()) {
            Item next = it.next();
            Meta meta = next.getMeta();
            Target target = next.getTarget();
            String data = next.getData();
            boolean zIsMoreData = next.isMoreData();
            if (target != null) {
                String locURI = target.getLocURI();
                int i8 = 0;
                if (meta != null) {
                    String format = meta.getFormat();
                    type = meta.getType();
                    try {
                        if (meta.getSize() != null) {
                            i8 = Integer.parseInt(meta.getSize());
                        }
                    } catch (NumberFormatException e5) {
                        IDMDebug.printStackTrace(e5);
                    }
                    i7 = i8;
                    str = format;
                } else {
                    type = null;
                    i7 = 0;
                    str = null;
                }
                if (i5 != 3) {
                    idmMakeStatus(Constants.SYNCML_TAG_REPLACE, cmdID, locURI, i5 == 1 ? "401" : "407");
                } else if (i6 == 2 || i6 == 4) {
                    idmMakeStatus(Constants.SYNCML_TAG_REPLACE, cmdID, locURI, "215");
                } else if (idmCmdUicAlert(idmVerifyUpperTag(i6))) {
                    idmMakeReplaceResponse(cmdID, locURI, str, type, i7, data, zIsMoreData);
                } else {
                    idmMakeStatus(Constants.SYNCML_TAG_REPLACE, cmdID, locURI, "215");
                }
            } else {
                idmMakeStatus(Constants.SYNCML_TAG_REPLACE, cmdID, null, "404");
            }
        }
    }

    public void idmProcessSequence(Sequence sequence, int i5, int i6) throws InterruptedException, NumberFormatException {
        IDMDebug.I("idmProcessSequence");
        if (this.responseCommandList == null) {
            IDMDebug.I("responseCommandList is null");
            return;
        }
        String cmdID = sequence.getCmdID();
        int i7 = 3;
        if (i5 != 3) {
            idmMakeStatus(Constants.SYNCML_TAG_SEQUENCE, cmdID, null, i5 == 1 ? "401" : "407");
        } else {
            if (i6 == 1) {
                idmMakeStatus(Constants.SYNCML_TAG_SEQUENCE, cmdID, null, "500");
            } else if (i6 == 2 || i6 == 4) {
                idmMakeStatus(Constants.SYNCML_TAG_SEQUENCE, cmdID, null, "215");
            } else if (idmCmdUicAlert(idmVerifyUpperTag(i6))) {
                idmMakeStatus(Constants.SYNCML_TAG_SEQUENCE, cmdID, null, "200");
            } else {
                idmMakeStatus(Constants.SYNCML_TAG_ATOMIC, cmdID, null, "215");
            }
            i7 = 4;
        }
        Iterator<Command> it = sequence.getCommandList().iterator();
        while (it.hasNext()) {
            Command next = it.next();
            if (next instanceof Get) {
                idmProcessGet((Get) next, i5, i7);
            } else if (next instanceof Replace) {
                idmProcessReplace((Replace) next, i5, i7);
            } else if (next instanceof Exec) {
                idmProcessExec((Exec) next, i5, i7);
            } else if (next instanceof Add) {
                idmProcessAdd((Add) next, i5, i7);
            } else if (next instanceof Delete) {
                idmProcessDelete((Delete) next, i5, i7);
            } else if (next instanceof Copy) {
                idmProcessCopy((Copy) next, i5, i7);
            } else if (next instanceof Alert) {
                idmProcessAlert((Alert) next, i5, i7);
            } else if (next instanceof Atomic) {
                idmProcessAtomic((Atomic) next, i5, i7);
            } else if (next instanceof Sequence) {
                idmProcessSequence((Sequence) next, i5, i7);
            }
        }
        idmUicAlertResultClear(Constants.SYNCML_TAG_SEQUENCE);
    }

    public void idmSetRecvMaxObjSize(String str) {
        this.recvMaxObjSize = str;
    }

    public void idmSetRecvMsgID(String str) {
        this.recvMsgID = str;
    }

    public void idmUicAlertResultClear(String str) {
        if (Constants.SYNCML_TAG_ATOMIC.equals(str)) {
            this.uicResultStatus.remove(Constants.SYNCML_TAG_ATOMIC);
        } else if (Constants.SYNCML_TAG_SEQUENCE.equals(str)) {
            this.uicResultStatus.remove(Constants.SYNCML_TAG_SEQUENCE);
        } else if (Constants.SYNCML_TAG_SYNCBODY.equals(str)) {
            this.uicResultStatus.remove(Constants.SYNCML_TAG_SYNCBODY);
        }
    }

    private void idmMakeAlertResponse(String str, IDMDmUICResult iDMDmUICResult) {
        try {
            idmMakeStatus(Constants.SYNCML_TAG_ALERT, str, (String) null, iDMDmUICResult.idmGetStatusCode(), iDMDmUICResult.idmGetDataList());
        } catch (Exception e5) {
            idmMakeStatus(Constants.SYNCML_TAG_ALERT, str, null, "215");
            IDMDebug.printStackTrace(e5);
        }
    }

    private void idmMakeStatus(String str, String str2, String str3, String str4, String str5) {
        IDMDebug.I("idmMakeStatus");
        Status status = new Status();
        status.setMsgRef(idmGetRecvMsgID());
        status.setCmdRef(str2);
        status.setCmd(str);
        status.setTargetRef(str3);
        status.setSourceRef(str4);
        status.setData(str5);
        this.responseCommandList.add(status);
    }

    private void idmMakeStatus(String str, String str2, String str3, String str4, List<String> list) {
        IDMDebug.I("idmMakeStatus");
        Status status = new Status();
        status.setMsgRef(idmGetRecvMsgID());
        status.setCmdRef(str2);
        status.setCmd(str);
        status.setTargetRef(str3);
        status.setData(str4);
        if (list != null) {
            for (String str5 : list) {
                Item item = new Item();
                item.setData(str5);
                status.getItemList().add(item);
            }
        }
        this.responseCommandList.add(status);
    }
}
