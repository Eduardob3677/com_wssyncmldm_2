package com.idm.agent.dm.uic;

import android.text.TextUtils;
import com.idm.adapter.logmanager.IDMDebug;
import com.idm.agent.dm.uic.IDMDmUICInterface;
import com.idm.core.syncml.Constants;
import com.idm.core.syncml.Item;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class IDMDmUICDecoder implements Constants, IDMDmUICInterface {
    private List<String> idmDecodeChoiceList(ArrayList<Item> arrayList) {
        if (arrayList.size() < 2) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i5 = 2; i5 < arrayList.size(); i5++) {
            String data = arrayList.get(i5).getData();
            if (data != null) {
                arrayList2.add(data);
            }
        }
        return arrayList2;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b9 A[Catch: Exception -> 0x005d, TryCatch #0 {Exception -> 0x005d, blocks: (B:3:0x0005, B:5:0x0010, B:55:0x00bc, B:8:0x001d, B:48:0x009f, B:49:0x00a5, B:50:0x00a9, B:51:0x00ad, B:52:0x00b1, B:53:0x00b5, B:54:0x00b9, B:21:0x0053, B:26:0x0060, B:29:0x006a, B:32:0x0074, B:35:0x007e, B:38:0x0088, B:56:0x00c0), top: B:60:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private IDMDmUICOption idmDecodeUICOption(String str) {
        char c2;
        IDMDmUICOption iDMDmUICOption = new IDMDmUICOption();
        try {
            for (String str2 : str.split("&")) {
                int iIndexOf = str2.indexOf(61);
                if (iIndexOf >= 1) {
                    String strTrim = str2.substring(0, iIndexOf).trim();
                    String strTrim2 = str2.substring(iIndexOf + 1).trim();
                    int iHashCode = strTrim.hashCode();
                    if (iHashCode == -2027796943) {
                        if (strTrim.equals(IDMDmUICInterface.IDM_UIC_OPTION_MAXLEN)) {
                            c2 = 3;
                        }
                        if (c2 != 0) {
                        }
                    } else if (iHashCode == 2190) {
                        if (strTrim.equals(IDMDmUICInterface.IDM_UIC_OPTION_DR)) {
                            c2 = 2;
                        }
                        if (c2 != 0) {
                        }
                    } else if (iHashCode == 2223) {
                        if (strTrim.equals(IDMDmUICInterface.IDM_UIC_OPTION_ET)) {
                            c2 = 5;
                        }
                        if (c2 != 0) {
                        }
                    } else if (iHashCode == 2347) {
                        if (strTrim.equals(IDMDmUICInterface.IDM_UIC_OPTION_IT)) {
                            c2 = 4;
                        }
                        if (c2 != 0) {
                        }
                    } else if (iHashCode != 73134292) {
                        c2 = (iHashCode == 73363010 && strTrim.equals(IDMDmUICInterface.IDM_UIC_OPTION_MINDT)) ? (char) 0 : (char) 65535;
                        if (c2 != 0) {
                            idmSetUICOptionMINDT(strTrim2, iDMDmUICOption);
                        } else if (c2 == 1) {
                            idmSetUICOptionMAXDT(strTrim2, iDMDmUICOption);
                        } else if (c2 == 2) {
                            idmSetUICOptionDR(strTrim2, iDMDmUICOption);
                        } else if (c2 == 3) {
                            idmSetUICOptionMAXLEN(strTrim2, iDMDmUICOption);
                        } else if (c2 == 4) {
                            idmSetUICOptionIT(strTrim2, iDMDmUICOption);
                        } else if (c2 != 5) {
                            IDMDebug.W("No UIC Option");
                        } else {
                            idmSetUICOptionET(strTrim2, iDMDmUICOption);
                        }
                    } else {
                        if (strTrim.equals(IDMDmUICInterface.IDM_UIC_OPTION_MAXDT)) {
                            c2 = 1;
                        }
                        if (c2 != 0) {
                        }
                    }
                }
            }
            IDMDebug.I("uicOption : " + iDMDmUICOption);
            return iDMDmUICOption;
        } catch (Exception e5) {
            IDMDebug.printStackTrace(e5);
            return null;
        }
    }

    private void idmSetUICOptionDR(String str, IDMDmUICOption iDMDmUICOption) {
        iDMDmUICOption.idmSetDefaultResponse(str);
    }

    private void idmSetUICOptionET(String str, IDMDmUICOption iDMDmUICOption) {
        str.getClass();
        if (str.equals("P")) {
            iDMDmUICOption.idmSetEchoType(2);
        } else if (str.equals("T")) {
            iDMDmUICOption.idmSetEchoType(1);
        } else {
            IDMDebug.W("No EchoType Option");
        }
    }

    private void idmSetUICOptionIT(String str, IDMDmUICOption iDMDmUICOption) {
        str.getClass();
        switch (str) {
            case "A":
                iDMDmUICOption.idmSetInputType(IDMDmUICInterface.UIC_INPUT_TYPE.IDM_UIC_INPUTTYPE_ALPHANUMERIC);
                break;
            case "D":
                iDMDmUICOption.idmSetInputType(IDMDmUICInterface.UIC_INPUT_TYPE.IDM_UIC_INPUTTYPE_DATE);
                break;
            case "I":
                iDMDmUICOption.idmSetInputType(IDMDmUICInterface.UIC_INPUT_TYPE.IDM_UIC_INPUTTYPE_IPADDRESS);
                break;
            case "N":
                iDMDmUICOption.idmSetInputType(IDMDmUICInterface.UIC_INPUT_TYPE.IDM_UIC_INPUTTYPE_NUMERIC);
                break;
            case "P":
                iDMDmUICOption.idmSetInputType(IDMDmUICInterface.UIC_INPUT_TYPE.IDM_UIC_INPUTTYPE_PHONENUBMER);
                break;
            case "T":
                iDMDmUICOption.idmSetInputType(IDMDmUICInterface.UIC_INPUT_TYPE.IDM_UIC_INPUTTYPE_TIME);
                break;
            default:
                IDMDebug.W("No InputType Option");
                break;
        }
    }

    private void idmSetUICOptionMAXDT(String str, IDMDmUICOption iDMDmUICOption) {
        try {
            iDMDmUICOption.idmSetMaxDisplayTime(Integer.parseInt(str));
        } catch (Exception e5) {
            IDMDebug.printStackTrace(e5);
        }
    }

    private void idmSetUICOptionMAXLEN(String str, IDMDmUICOption iDMDmUICOption) {
        try {
            iDMDmUICOption.idmSetMaxLength(Integer.parseInt(str));
        } catch (Exception e5) {
            IDMDebug.printStackTrace(e5);
        }
    }

    private void idmSetUICOptionMINDT(String str, IDMDmUICOption iDMDmUICOption) {
        try {
            iDMDmUICOption.idmSetMinDisplayTime(Integer.parseInt(str));
        } catch (Exception e5) {
            IDMDebug.printStackTrace(e5);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public IDMDmUICInfo idmDecode(String str, ArrayList<Item> arrayList) {
        IDMDmUICInfo iDMDmUICInfo = new IDMDmUICInfo();
        char c2 = 0;
        try {
            String data = arrayList.get(0).getData();
            if (TextUtils.isEmpty(data)) {
                iDMDmUICInfo.idmSetUicOption(idmDecodeUICOption(IDMDmUICInterface.IDM_UIC_OPTION_DEFAULT));
            } else {
                iDMDmUICInfo.idmSetUicOption(idmDecodeUICOption(data));
            }
            iDMDmUICInfo.idmSetMessage(arrayList.get(1).getData());
            switch (str.hashCode()) {
                case 1508384:
                    if (!str.equals(Constants.ALERT_DISPLAY)) {
                        c2 = 65535;
                        break;
                    } else {
                        break;
                    }
                case 1508385:
                    if (str.equals(Constants.ALERT_CONFIRMATION)) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 1508386:
                    if (str.equals(Constants.ALERT_USER_INPUT)) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 1508387:
                    if (str.equals(Constants.ALERT_SINGLE_CHOICE)) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 1508388:
                    if (str.equals(Constants.ALERT_MULTIPLE_CHOICE)) {
                        c2 = 4;
                        break;
                    }
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 == 0) {
                iDMDmUICInfo.idmSetType(IDMDmUICInterface.UIC_DIALOG_TYPE.IDM_UIC_TYPE_DISPLAY);
            } else if (c2 == 1) {
                iDMDmUICInfo.idmSetType(IDMDmUICInterface.UIC_DIALOG_TYPE.IDM_UIC_TYPE_CONFIRMATION);
            } else if (c2 == 2) {
                iDMDmUICInfo.idmSetType(IDMDmUICInterface.UIC_DIALOG_TYPE.IDM_UIC_TYPE_USER_INPUT);
            } else if (c2 == 3) {
                iDMDmUICInfo.idmSetType(IDMDmUICInterface.UIC_DIALOG_TYPE.IDM_UIC_TYPE_SINGLE_CHOICE);
                iDMDmUICInfo.idmSetChoiceList(idmDecodeChoiceList(arrayList));
            } else if (c2 != 4) {
                IDMDebug.W("No UIC AlertCode");
            } else {
                iDMDmUICInfo.idmSetType(IDMDmUICInterface.UIC_DIALOG_TYPE.IDM_UIC_TYPE_MULTIPLE_CHOICE);
                iDMDmUICInfo.idmSetChoiceList(idmDecodeChoiceList(arrayList));
            }
            return iDMDmUICInfo;
        } catch (Exception e5) {
            IDMDebug.printStackTrace(e5);
            return null;
        }
    }
}
