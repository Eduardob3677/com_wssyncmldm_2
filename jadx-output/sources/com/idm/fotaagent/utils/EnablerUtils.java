package com.idm.fotaagent.utils;

import B.f;
import com.idm.agent.dl.IDMDlInterface;
import com.idm.fotaagent.enabler.fumo.IDMFumoExtInterface;
import com.samsung.android.fotaagent.common.log.Log;

/* loaded from: classes.dex */
public class EnablerUtils {
    public static String convertDlResultCodeToDmResultCode(int i5) {
        f.D("dlResultStatus : ", i5);
        switch (i5) {
            case 1:
                Log.W("DmReportCode : IDM_DL_STATUS_SUCCESS - return empty string!!");
                return "";
            case 2:
                Log.I("DmReportCode : IDM_FOTA_GENERIC_DOWNLOAD_FAILED_OUT_MEMORY");
                return IDMDlInterface.IDM_FOTA_GENERIC_DOWNLOAD_FAILED_OUT_MEMORY;
            case 3:
                Log.I("DmReportCode : IDM_FOTA_GENERIC_USER_CANCELED_DOWNLOAD");
                return "401";
            case 4:
            default:
                Log.I("DmReportCode : IDM_FOTA_GENERIC_UNDEFINED_ERROR");
                return IDMDlInterface.IDM_FOTA_GENERIC_UNDEFINED_ERROR;
            case 5:
                Log.I("DmReportCode : IDM_FOTA_GENERIC_CORRUPTED_FW_UP");
                return IDMDlInterface.IDM_FOTA_GENERIC_CORRUPTED_FW_UP;
            case 6:
                Log.I("DmReportCode : IDM_FOTA_GENERIC_UNDEFINED_ERROR");
                return IDMDlInterface.IDM_FOTA_GENERIC_UNDEFINED_ERROR;
            case 7:
                Log.I("DmReportCode : IDM_FOTA_GENERIC_UNDEFINED_ERROR");
                return IDMDlInterface.IDM_FOTA_GENERIC_UNDEFINED_ERROR;
            case 8:
                Log.I("DmReportCode : IDM_FOTA_GENERIC_CLIENT_ERROR");
                return "400";
            case 9:
                Log.I("DmReportCode : IDM_FOTA_GENERIC_NOT_ACCEPTABLE");
                return "405";
            case 10:
                Log.I("DmReportCode : IDM_FOTA_GENERIC_BAD_URL");
                return IDMDlInterface.IDM_FOTA_GENERIC_BAD_URL;
            case 11:
                Log.I("DmReportCode : IDM_FOTA_GENERIC_BLOCKED_AFW_UPDATE_FAILED");
                return IDMFumoExtInterface.IDM_FOTA_GENERIC_BLOCKED_AFW_UPDATE_FAILED;
            case 12:
                Log.I("DmReportCode : IDM_FOTA_GENERIC_BLOCKED_MDM_UPDATE_FAILED");
                return IDMFumoExtInterface.IDM_FOTA_GENERIC_BLOCKED_MDM_UPDATE_FAILED;
            case 13:
                Log.I("DmReportCode : IDM_FOTA_GENERIC_WIFIBACKGROUND_SESSION_FAILED");
                return IDMFumoExtInterface.IDM_FOTA_GENERIC_WIFIBACKGROUND_SESSION_FAILED;
        }
    }

    public static String toHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b3 : bArr) {
            sb.append("0123456789abcdef".charAt((b3 & 255) >>> 4));
            sb.append("0123456789abcdef".charAt(b3 & 15));
        }
        return sb.toString();
    }
}
