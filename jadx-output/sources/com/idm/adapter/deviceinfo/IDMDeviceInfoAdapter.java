package com.idm.adapter.deviceinfo;

import B.f;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.idm.adapter.common.IDMCommonUtils;
import com.idm.core.security.IDMSecurityImpl;
import com.idm.fotaagent.enabler.fumo.IDMFumoExtInterface;
import com.idm.fotaagent.enabler.ui.admin.deviceoverride.DeviceOverrideHelper;
import com.samsung.android.lib.episode.EternalContract;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class IDMDeviceInfoAdapter {
    private final String szDefaultSimValue = "000000000000000";
    private ArrayList<String> nExtendDevInfo = null;

    private String idmGetDeviceIMSIFromSIM(Context context) {
        String subscriberId = "000000000000000";
        for (int i5 = 0; i5 < 5; i5++) {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(EternalContract.DEVICE_TYPE_PHONE);
            if (telephonyManager != null) {
                subscriberId = telephonyManager.getSubscriberId();
            }
            if (!TextUtils.isEmpty(subscriberId) || !"Default".equals(subscriberId)) {
                break;
            }
        }
        return subscriberId;
    }

    public String idmGetClientName(Context context) {
        return idmGetDeviceID(context);
    }

    public String idmGetDeviceID(Context context) {
        // Check for override IMEI first
        String overrideImei = DeviceOverrideHelper.getOverrideImei(context);
        if (overrideImei != null) {
            return "IMEI:" + overrideImei;
        }
        
        // Check for override MEID
        String overrideMeid = DeviceOverrideHelper.getOverrideMeid(context);
        if (overrideMeid != null) {
            return "MEID:" + overrideMeid;
        }
        
        // Original code to get real device ID
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(EternalContract.DEVICE_TYPE_PHONE);
        if (telephonyManager == null) {
            return null;
        }
        if (telephonyManager.getPhoneType() != 2) {
            return "IMEI:" + telephonyManager.getImei(0);
        }
        return "MEID:" + telephonyManager.getMeid(0);
    }

    public String idmGetDeviceLanguage(Context context) {
        // Check for override language first
        String overrideLanguage = DeviceOverrideHelper.getOverrideLanguage(context);
        if (overrideLanguage != null) {
            return overrideLanguage;
        }
        
        // Original code to get real device language
        Configuration configuration = context.getResources().getConfiguration();
        return configuration.getLocales().get(0).getLanguage() + "-" + configuration.getLocales().get(0).getCountry();
    }

    public String idmGetDeviceManufacturer() {
        return Build.MANUFACTURER;
    }

    public ArrayList<String> idmGetExtendDevInfo() {
        return this.nExtendDevInfo;
    }

    public String idmGetNetPinFromIMSI(Context context) {
        int i5;
        String strV;
        String strIdmGetDeviceIMSIFromSIM = idmGetDeviceIMSIFromSIM(context);
        if (TextUtils.isEmpty(strIdmGetDeviceIMSIFromSIM) || "000000000000000".equals(strIdmGetDeviceIMSIFromSIM)) {
            return null;
        }
        int length = strIdmGetDeviceIMSIFromSIM.length();
        if (length % 2 != 0) {
            i5 = length + 1;
            strV = "9".concat(strIdmGetDeviceIMSIFromSIM);
        } else {
            i5 = length + 2;
            strV = f.v("1", strIdmGetDeviceIMSIFromSIM, IDMFumoExtInterface.IDM_FUMO_BINARY_CHECK_DISABLED);
        }
        int i6 = i5 / 2;
        char[] cArr = new char[i6];
        for (int i7 = 0; i7 < i6; i7++) {
            int i8 = i7 * 2;
            char cCharAt = strV.charAt(i8 + 1);
            char cCharAt2 = strV.charAt(i8);
            cArr[i7] = (char) (IDMCommonUtils.idmCharToHex(cCharAt2) | ((char) (IDMCommonUtils.idmCharToHex(cCharAt) << 4)));
        }
        return String.valueOf(cArr);
    }

    public abstract boolean idmIsAvailableFOTAWithRoamingNetwork(Context context, String str);

    public String idmMakeClientPassword(Context context, String str) {
        return new IDMSecurityImpl().idmSecurityMakeSECDevicePassword(idmGetDeviceID(context), str);
    }

    public String idmMakeFactoryNonce() {
        return new IDMSecurityImpl().idmSecurityMakeSECFactoryNonce();
    }

    public String idmMakeServerPassword(Context context, String str) {
        return "";
    }
}
