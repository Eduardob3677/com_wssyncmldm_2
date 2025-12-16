package com.idm.core.push;

import B.f;
import com.idm.adapter.logmanager.IDMDebug;
import com.idm.exception.push.IDMExceptionPushProcessFail;
import java.nio.charset.Charset;
import java.util.Arrays;

/* loaded from: classes.dex */
public class IDMPushWapDecoder implements IDMPushInterface {
    private byte[] notiData;
    private IDMPushWapInfo pushWapInfo = new IDMPushWapInfo();

    public IDMPushWapDecoder(byte[] bArr) {
        this.notiData = Arrays.copyOf(bArr, bArr.length);
    }

    public IDMPushWapInfo idmPushWapDecodeWSPHeader() throws IDMExceptionPushProcessFail {
        int i5;
        byte[] bArr = this.notiData;
        int length = bArr.length;
        if (length == 0) {
            throw new IDMExceptionPushProcessFail("noti Data is NULL");
        }
        int i6 = bArr[1] & 255;
        if (i6 != 6) {
            throw new IDMExceptionPushProcessFail(f.t(i6, "Not Support PDU Type="));
        }
        IDMDebug.I("create new wssWappush object");
        this.pushWapInfo.idmPushWapSetHeaderLen(this.notiData[2]);
        byte[] bArr2 = this.notiData;
        int i7 = (bArr2[3] & 255) == 31 ? 5 : 3;
        byte b3 = bArr2[i7];
        int i8 = 0;
        if ((b3 & 255) < 32 || (b3 & 255) >= 128) {
            IDMDebug.I(" Content Value [" + String.valueOf((int) this.notiData[i7]) + "], Mask Value [" + String.valueOf(this.notiData[3] & 127) + "]");
            byte b5 = this.notiData[i7];
            if ((b5 & 127) == 54) {
                this.pushWapInfo.idmPushWapSetContentType(b5 & 127);
                IDMDebug.I("Content Type: SML_MIME_TYPE_CODE_WAP_CONNECTIVITY_WBXML");
            } else if ((b5 & 127) == 53) {
                this.pushWapInfo.idmPushWapSetContentType(b5 & 127);
                IDMDebug.I("Content Type: SML_MIME_TYPE_CODE_WAP_CONNECTIVITY_XML");
            } else if ((b5 & 127) == 68) {
                this.pushWapInfo.idmPushWapSetContentType(b5 & 127);
                IDMDebug.I("Content Type: SML_MIME_TYPE_CODE_SYNCML_DM_NOTI");
            } else {
                if ((b5 & 127) != 66) {
                    throw new IDMExceptionPushProcessFail("Not Support Content Type");
                }
                this.pushWapInfo.idmPushWapSetContentType(b5 & 127);
                IDMDebug.I("Content Type: SML_MIME_TYPE_CODE_SYNCML_DM_WBXML");
            }
            i5 = i7 + 1;
        } else {
            int i9 = i7;
            int i10 = 0;
            while (this.notiData[i9] != 0) {
                i10++;
                i9++;
            }
            byte[] bArr3 = new byte[i10];
            int i11 = 0;
            while (true) {
                byte b6 = this.notiData[i7];
                if (b6 == 0) {
                    break;
                }
                bArr3[i11] = b6;
                i11++;
                i7++;
            }
            switch (new String(bArr3, Charset.defaultCharset())) {
                case "application/vnd.wap.connectivity-xml":
                    this.pushWapInfo.idmPushWapSetContentType(53);
                    break;
                case "application/vnd.wap.connectivity-wbxml":
                    this.pushWapInfo.idmPushWapSetContentType(54);
                    break;
                case "application/vnd.syncml.dm+wbxml":
                    this.pushWapInfo.idmPushWapSetContentType(66);
                    break;
                case "application/vnd.syncml.notification":
                    this.pushWapInfo.idmPushWapSetContentType(68);
                    break;
                default:
                    throw new IDMExceptionPushProcessFail("Not Support Content Type");
            }
            i5 = i9 + 1;
        }
        byte[] bArr4 = this.notiData;
        if (bArr4[i5] == 0) {
            i5++;
        }
        byte[] bArr5 = new byte[3];
        System.arraycopy(bArr4, i5, bArr5, 0, 3);
        String str = new String(bArr5, Charset.defaultCharset());
        byte[] bArr6 = this.notiData;
        if ((bArr6[i5] & 255) == 145) {
            this.pushWapInfo.idmPushWapSetSEC(bArr6[i5 + 1] & 255);
            i5 += 2;
        } else if (str.equals(IDMPushInterface.IDM_WAP_PUSH_SEC_STRING)) {
            this.pushWapInfo.idmPushWapSetSEC((this.notiData[i5 + 4] & 15) | 128);
            i5 += 5;
        }
        byte[] bArr7 = this.notiData;
        if (bArr7[i5] == 0) {
            i5++;
        }
        byte[] bArr8 = new byte[3];
        System.arraycopy(bArr7, i5, bArr8, 0, 3);
        String str2 = new String(bArr8, Charset.defaultCharset());
        if ((this.notiData[i5] & 255) == 146) {
            int i12 = i5 + 1;
            int i13 = i12;
            int i14 = 0;
            while (true) {
                int i15 = i13 + 1;
                if (this.notiData[i13] != 0) {
                    i14++;
                    i13 = i15;
                } else {
                    byte[] bArr9 = new byte[i14];
                    int i16 = 0;
                    while (true) {
                        int i17 = i12 + 1;
                        byte b7 = this.notiData[i12];
                        if (b7 != 0) {
                            bArr9[i16] = b7;
                            i16++;
                            i12 = i17;
                        } else {
                            this.pushWapInfo.idmPushWapSetMACLen(i14);
                            this.pushWapInfo.idmPushWapSetMAC(bArr9);
                        }
                    }
                }
            }
        } else if (str2.equals(IDMPushInterface.IDM_WAP_PUSH_MAC_STRING)) {
            int i18 = i5 + 4;
            int i19 = i18;
            int i20 = 0;
            while (true) {
                int i21 = i19 + 1;
                if (this.notiData[i19] != 0) {
                    i20++;
                    i19 = i21;
                } else {
                    byte[] bArr10 = new byte[i20];
                    int i22 = 0;
                    while (true) {
                        int i23 = i18 + 1;
                        byte b8 = this.notiData[i18];
                        if (b8 != 0) {
                            bArr10[i22] = b8;
                            i22++;
                            i18 = i23;
                        } else {
                            this.pushWapInfo.idmPushWapSetMACLen(i20);
                            this.pushWapInfo.idmPushWapSetMAC(bArr10);
                        }
                    }
                }
            }
        }
        IDMPushWapInfo iDMPushWapInfo = this.pushWapInfo;
        iDMPushWapInfo.idmPushWapSetBodyLen(((length - 2) - iDMPushWapInfo.idmPushWapGetHeaderLen()) - 1);
        int iIdmPushWapGetHeaderLen = this.pushWapInfo.idmPushWapGetHeaderLen() + 3;
        byte[] bArr11 = new byte[this.pushWapInfo.idmPushWapGetBodyLen()];
        while (i8 < this.pushWapInfo.idmPushWapGetBodyLen()) {
            bArr11[i8] = this.notiData[iIdmPushWapGetHeaderLen];
            i8++;
            iIdmPushWapGetHeaderLen++;
        }
        this.pushWapInfo.idmPushWapSetNotiBody(bArr11);
        return this.pushWapInfo;
    }

    public IDMPushWapInfo idmPushWapGetPushWapInfo() {
        return this.pushWapInfo;
    }
}
