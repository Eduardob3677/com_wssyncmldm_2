package com.idm.fotaagent.enabler.network;

import G2.b;
import android.content.Context;
import com.idm.fotaagent.IDMApplication;
import com.idm.fotaagent.database.room.data.repository.AdminRepository;
import com.idm.fotaagent.database.sqlite.database.dao.ActionInfoDao;
import com.idm.fotaagent.database.sqlite.database.mo.Feature;
import com.idm.fotaagent.database.sqlite.database.mo.MoFumoExtDao;
import com.idm.fotaagent.database.sqlite.database.settings.SettingsDatabaseManager;
import com.idm.fotaagent.enabler.feature.Operator;
import com.idm.fotaagent.utils.DeviceUtils;
import com.samsung.android.fotaagent.common.feature.CarrierFeature;
import com.samsung.android.fotaagent.common.log.Log;

/* loaded from: classes.dex */
public class WifiOnlyChecker {
    static final int BEARER_MOBILE_ALLOWED = 0;
    static final int BEARER_WIFI_ONLY = 1;
    private boolean isWifiOnlyByBearer;

    public static class LazyInstanceHolder {
        private static final WifiOnlyChecker INSTANCE = new WifiOnlyChecker();

        private LazyInstanceHolder() {
        }
    }

    private Context getContext() {
        return IDMApplication.idmGetContext();
    }

    public static WifiOnlyChecker getInstance() {
        return LazyInstanceHolder.INSTANCE;
    }

    private boolean isWifiOnlyByBearer() {
        return ((Boolean) new Feature.MockWifiOnlyBearer(getContext()).getValue().map(new b(24)).orElse(Boolean.valueOf(this.isWifiOnlyByBearer))).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$isWifiOnlyByBearer$1(AdminRepository.WifiOnlyBearer wifiOnlyBearer) {
        return Boolean.valueOf(wifiOnlyBearer.equals(AdminRepository.WifiOnlyBearer.WIFI_ONLY_BEARER_ON));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$isWifiOnlyByDevice$0(AdminRepository.WifiOnlyDevice wifiOnlyDevice) {
        return Boolean.valueOf(wifiOnlyDevice.equals(AdminRepository.WifiOnlyDevice.WIFI_ONLY_DEVICE_ON));
    }

    public boolean isWifiOnly() {
        return isWifiOnlyByDevice() || isWifiOnlyByBearer();
    }

    public boolean isWifiOnlyByDevice() {
        return ((Boolean) new Feature.MockWifiOnlyDevice(getContext()).getValue().map(new b(23)).orElse(Boolean.valueOf(DeviceUtils.isWifiOnly()))).booleanValue();
    }

    public boolean isWifiOnlyForDl(String str) {
        if (isWifiOnly()) {
            return true;
        }
        if (new MoFumoExtDao(new ActionInfoDao(str).getServerId()).getWifiOnlyForDl()) {
            Log.I("Wifi Only For DL by FUMO");
            return true;
        }
        if (CarrierFeature.isWifiOnlyForDl()) {
            Log.I("Wifi Only For DL by CarrierFeature");
            return true;
        }
        if (!Operator.get().isWifiOnlyForDl(str)) {
            return false;
        }
        Log.I("Wifi Only For DL by Operator");
        return true;
    }

    public void loadWifiOnlyByBearer() {
        boolean z4 = SettingsDatabaseManager.getFotaBearerStatus(getContext()) == 1;
        this.isWifiOnlyByBearer = z4;
        if (z4) {
            Log.I("isWifiOnlyByBearer enabled");
        }
    }

    private WifiOnlyChecker() {
        loadWifiOnlyByBearer();
    }
}
