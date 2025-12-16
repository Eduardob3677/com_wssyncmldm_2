package com.idm.core.tnds;

import com.idm.adapter.logmanager.IDMDebug;
import com.idm.core.syncml.Constants;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
class IDMTndsWbxmltoXmlParse implements IDMTndsXmlWbxmlDefine {
    private IDMTndsTagManage tagManage;
    private IDMTndsXmlWbxmlData tndsData;

    public static class IDMTndsTagManage implements IDMTndsXmlWbxmlDefine {
        int[] eTagID;
        int nTagSP;

        private IDMTndsTagManage() {
            this.eTagID = new int[30];
            this.nTagSP = 0;
        }
    }

    private String idmTndsGetTagString(int i5) {
        if (i5 >= 125) {
            return "NULL";
        }
        return IDMTndsXmlWbxmlDefine.gszTndsTokenStr[i5 - 69];
    }

    private String idmTndsGetWbxmlData() {
        return this.tndsData.idmTndsGetWbxmlData();
    }

    private int idmTndsGetWbxmlSize() {
        return this.tndsData.idmTndsGetWbxmlDataSize();
    }

    private String idmTndsGetXMLData() {
        return this.tndsData.idmTndsGetXMLData();
    }

    private int idmTndsGetXMLSize() {
        return this.tndsData.idmTndsGetXMLDataSize();
    }

    private void idmTndsInitParse(String str, int i5) {
        this.tndsData = new IDMTndsXmlWbxmlData();
        idmTndsSetWbxmlSize(i5);
        idmTndsSetWbxmlData(str);
        this.tagManage = new IDMTndsTagManage();
    }

    private String idmTndsMakeCloseTagString() {
        return "</".concat(idmTndsGetTagString(idmTndsManagePopTag())).concat(">");
    }

    private String idmTndsMakeOpenTagString(int i5) {
        return "<".concat(idmTndsGetTagString(i5)).concat(">");
    }

    private int idmTndsManagePopTag() {
        IDMTndsTagManage iDMTndsTagManage = this.tagManage;
        int i5 = iDMTndsTagManage.nTagSP;
        if (i5 == 0) {
            return 0;
        }
        int i6 = i5 - 1;
        iDMTndsTagManage.nTagSP = i6;
        int[] iArr = iDMTndsTagManage.eTagID;
        int i7 = iArr[i6];
        iArr[i6] = 0;
        return i7;
    }

    private boolean idmTndsManagePushTag(int i5) {
        IDMTndsTagManage iDMTndsTagManage = this.tagManage;
        int i6 = iDMTndsTagManage.nTagSP;
        if (i6 == 30) {
            return false;
        }
        iDMTndsTagManage.eTagID[i6] = i5;
        iDMTndsTagManage.nTagSP = i6 + 1;
        return true;
    }

    private void idmTndsParsingACLTag() {
        idmTndsParsingOpenTag();
    }

    private void idmTndsParsingAccessTypeChildElement() {
        int iIdmTndsGetWbxmlSize = idmTndsGetWbxmlSize();
        String strIdmTndsGetWbxmlData = idmTndsGetWbxmlData();
        char cCharAt = strIdmTndsGetWbxmlData.charAt(0);
        String strIdmTndsGetXMLData = idmTndsGetXMLData();
        int iIdmTndsGetXMLSize = idmTndsGetXMLSize();
        int i5 = cCharAt - '@';
        if (i5 == 71 || i5 == 78 || i5 == 83 || i5 == 90 || i5 == 93 || i5 == 110) {
            idmTndsSetXMLSize("<".concat(idmTndsGetTagString(i5)).concat("/>").length() + iIdmTndsGetXMLSize);
            idmTndsSetXMLData(strIdmTndsGetXMLData);
            String strSubstring = strIdmTndsGetWbxmlData.substring(1);
            idmTndsSetWbxmlSize(iIdmTndsGetWbxmlSize - 1);
            idmTndsSetWbxmlData(strSubstring);
        }
    }

    private void idmTndsParsingAccessTypeTag() {
        idmTndsParsingOpenTag();
        idmTndsParsingAccessTypeChildElement();
    }

    private void idmTndsParsingCloseTag() {
        int length;
        int iIdmTndsGetWbxmlSize = idmTndsGetWbxmlSize();
        String strIdmTndsGetWbxmlData = idmTndsGetWbxmlData();
        String strIdmTndsGetXMLData = idmTndsGetXMLData();
        int iIdmTndsGetXMLSize = idmTndsGetXMLSize();
        String strIdmTndsMakeCloseTagString = idmTndsMakeCloseTagString();
        if (strIdmTndsMakeCloseTagString != null) {
            length = strIdmTndsMakeCloseTagString.length();
            strIdmTndsGetXMLData = strIdmTndsGetXMLData.concat(strIdmTndsMakeCloseTagString);
        } else {
            length = 0;
        }
        idmTndsSetXMLSize(iIdmTndsGetXMLSize + length);
        idmTndsSetXMLData(strIdmTndsGetXMLData);
        String strSubstring = strIdmTndsGetWbxmlData.substring(1);
        idmTndsSetWbxmlSize(iIdmTndsGetWbxmlSize - 1);
        idmTndsSetWbxmlData(strSubstring);
    }

    private boolean idmTndsParsingCodePage() {
        String strSubstring = idmTndsGetWbxmlData().substring(1);
        if (strSubstring.charAt(0) == 2) {
            IDMDebug.I(Constants.SYNCML_PROPERTY_TNDS);
        } else {
            if (strSubstring.charAt(0) != 0) {
                return false;
            }
            IDMDebug.I("SYNCML");
        }
        idmTndsSetWbxmlData(strSubstring.substring(1));
        idmTndsSetWbxmlSize(idmTndsGetWbxmlSize() - 2);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void idmTndsParsingFormatChildElement() {
        String strConcat;
        int iIdmTndsGetWbxmlSize = idmTndsGetWbxmlSize();
        String strIdmTndsGetWbxmlData = idmTndsGetWbxmlData();
        char cCharAt = strIdmTndsGetWbxmlData.charAt(0);
        String strIdmTndsGetXMLData = idmTndsGetXMLData();
        int iIdmTndsGetXMLSize = idmTndsGetXMLSize();
        int i5 = cCharAt + '@';
        if (i5 != 80 && i5 != 91 && i5 != 94 && i5 != 101 && i5 != 103 && i5 != 114 && i5 != 124 && i5 != 105 && i5 != 106 && i5 != 121 && i5 != 122) {
            switch (i5) {
                case 72:
                case 73:
                case 74:
                case 75:
                    break;
                default:
                    strConcat = "";
                    break;
            }
        } else {
            strConcat = "<".concat(idmTndsGetTagString(i5)).concat("/>");
        }
        int length = strConcat.length();
        String strConcat2 = strIdmTndsGetXMLData.concat(strConcat);
        idmTndsSetXMLSize(iIdmTndsGetXMLSize + length);
        idmTndsSetXMLData(strConcat2);
        String strSubstring = strIdmTndsGetWbxmlData.substring(1);
        idmTndsSetWbxmlSize(iIdmTndsGetWbxmlSize - 1);
        idmTndsSetWbxmlData(strSubstring);
    }

    private void idmTndsParsingFormatTag() {
        idmTndsParsingOpenTag();
        idmTndsParsingFormatChildElement();
    }

    private void idmTndsParsingMIMETag() {
        idmTndsParsingOpenTag();
    }

    private void idmTndsParsingMgmtTreeTag() {
        idmTndsParsingOpenTag();
    }

    private void idmTndsParsingNameTag() {
        idmTndsParsingOpenTag();
    }

    private void idmTndsParsingNodeNameTag() {
        idmTndsParsingOpenTag();
    }

    private void idmTndsParsingNodeTag() {
        idmTndsParsingOpenTag();
    }

    private void idmTndsParsingOpenTag() {
        int iIdmTndsGetWbxmlSize = idmTndsGetWbxmlSize();
        String strIdmTndsGetWbxmlData = idmTndsGetWbxmlData();
        int length = 0;
        char cCharAt = strIdmTndsGetWbxmlData.charAt(0);
        String strIdmTndsGetXMLData = idmTndsGetXMLData();
        int iIdmTndsGetXMLSize = idmTndsGetXMLSize();
        idmTndsManagePushTag(cCharAt);
        String strIdmTndsMakeOpenTagString = idmTndsMakeOpenTagString(cCharAt);
        if (strIdmTndsMakeOpenTagString != null) {
            length = strIdmTndsMakeOpenTagString.length();
            strIdmTndsGetXMLData = strIdmTndsGetXMLData.concat(strIdmTndsMakeOpenTagString);
        }
        idmTndsSetXMLSize(iIdmTndsGetXMLSize + length);
        idmTndsSetXMLData(strIdmTndsGetXMLData);
        String strSubstring = strIdmTndsGetWbxmlData.substring(1);
        idmTndsSetWbxmlSize(iIdmTndsGetWbxmlSize - 1);
        idmTndsSetWbxmlData(strSubstring);
    }

    private void idmTndsParsingPathTag() {
        idmTndsParsingOpenTag();
    }

    private void idmTndsParsingRTPropertiesTag() {
        idmTndsParsingOpenTag();
    }

    private void idmTndsParsingTypeTag() {
        idmTndsParsingOpenTag();
    }

    private void idmTndsParsingValueTag() {
        idmTndsParsingOpenTag();
    }

    private void idmTndsParsingVerdtdTag() {
        idmTndsParsingOpenTag();
    }

    private void idmTndsParsingWbxmlHeader() {
        String strSubstring = idmTndsGetWbxmlData().substring(1).substring(2).substring(1);
        char cCharAt = strSubstring.charAt(0);
        idmTndsSetWbxmlData(strSubstring.substring(1).substring(cCharAt));
        idmTndsSetWbxmlSize(idmTndsGetWbxmlSize() - (5 + cCharAt));
    }

    private void idmTndsProcessStringData() {
        StringBuilder sb = new StringBuilder();
        int iIdmTndsGetWbxmlSize = idmTndsGetWbxmlSize();
        String strIdmTndsGetWbxmlData = idmTndsGetWbxmlData();
        sb.append(idmTndsGetXMLData());
        int iIdmTndsGetXMLSize = idmTndsGetXMLSize();
        String strSubstring = strIdmTndsGetWbxmlData.substring(1);
        char cCharAt = strSubstring.charAt(0);
        int i5 = 1;
        while (cCharAt != 0) {
            if (cCharAt == '&') {
                sb.append("&amp;");
            } else {
                sb.append(cCharAt);
            }
            strSubstring = strSubstring.substring(1);
            i5++;
            cCharAt = strSubstring.charAt(0);
        }
        idmTndsSetXMLSize((iIdmTndsGetXMLSize + i5) - 1);
        idmTndsSetXMLData(sb.toString());
        String strSubstring2 = strSubstring.substring(1);
        idmTndsSetWbxmlSize(iIdmTndsGetWbxmlSize - (i5 + 1));
        idmTndsSetWbxmlData(strSubstring2);
    }

    private void idmTndsSetWbxmlData(String str) {
        this.tndsData.idmTndsSetWbxmlData(str);
    }

    private void idmTndsSetWbxmlSize(int i5) {
        this.tndsData.idmTndsSetWbxmlDataSize(i5);
    }

    private void idmTndsSetXMLData(String str) {
        this.tndsData.idmTndsSetXMLData(str);
    }

    private void idmTndsSetXMLSize(int i5) {
        this.tndsData.idmTndsSetXMLDataSize(i5);
    }

    private boolean idmTndsUderMgmtTreeTagParse() {
        int iIdmTndsGetWbxmlSize = idmTndsGetWbxmlSize();
        String strIdmTndsGetWbxmlData = idmTndsGetWbxmlData();
        while (iIdmTndsGetWbxmlSize != 0 && strIdmTndsGetWbxmlData != null) {
            byte b3 = strIdmTndsGetWbxmlData.getBytes(Charset.defaultCharset())[0];
            if (b3 == 0) {
                idmTndsParsingCodePage();
            } else if (b3 == 1) {
                idmTndsParsingCloseTag();
            } else if (b3 == 3) {
                idmTndsProcessStringData();
            } else if (b3 == 92) {
                idmTndsParsingFormatTag();
            } else if (b3 == 97) {
                idmTndsParsingMIMETag();
            } else if (b3 == 102) {
                idmTndsParsingNodeNameTag();
            } else if (b3 == 108) {
                idmTndsParsingPathTag();
            } else if (b3 == 111) {
                idmTndsParsingRTPropertiesTag();
            } else if (b3 == 69) {
                idmTndsParsingAccessTypeTag();
            } else if (b3 == 70) {
                idmTndsParsingACLTag();
            } else if (b3 == 99) {
                idmTndsParsingNameTag();
            } else if (b3 != 100) {
                switch (b3) {
                    case 117:
                        idmTndsParsingTypeTag();
                        break;
                    case 118:
                        idmTndsParsingValueTag();
                        break;
                    case 119:
                        idmTndsParsingVerdtdTag();
                        break;
                    default:
                        return false;
                }
            } else {
                idmTndsParsingNodeTag();
            }
            iIdmTndsGetWbxmlSize = idmTndsGetWbxmlSize();
            strIdmTndsGetWbxmlData = iIdmTndsGetWbxmlSize != 0 ? idmTndsGetWbxmlData() : null;
        }
        return true;
    }

    public String idmTndsWbxmlParse(String str, int i5) {
        idmTndsInitParse(str, i5);
        int iIdmTndsGetWbxmlSize = idmTndsGetWbxmlSize();
        String strIdmTndsGetWbxmlData = idmTndsGetWbxmlData();
        while (iIdmTndsGetWbxmlSize != 0 && strIdmTndsGetWbxmlData != null) {
            byte b3 = strIdmTndsGetWbxmlData.getBytes(Charset.defaultCharset())[0];
            strIdmTndsGetWbxmlData = null;
            if (b3 == 0) {
                idmTndsParsingCodePage();
            } else if (b3 == 2) {
                idmTndsParsingWbxmlHeader();
            } else {
                if (b3 != 96) {
                    return null;
                }
                idmTndsParsingMgmtTreeTag();
                idmTndsUderMgmtTreeTagParse();
            }
            iIdmTndsGetWbxmlSize = idmTndsGetWbxmlSize();
            if (iIdmTndsGetWbxmlSize != 0) {
                strIdmTndsGetWbxmlData = idmTndsGetWbxmlData();
            }
        }
        return idmTndsGetXMLData();
    }
}
