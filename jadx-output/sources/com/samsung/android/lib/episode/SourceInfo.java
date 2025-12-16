package com.samsung.android.lib.episode;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SourceInfo {
    private String mDTDVersion;
    private String mDeviceType;
    private int mManufacturer;
    private int mOSVersion;
    private String mOneUIVersion;
    private ArrayList<String> mPackageList;
    private int mRequestFrom;
    private boolean mRestoreViaFastTrack;
    private String mVersion;

    public SourceInfo() {
        this.mDeviceType = null;
        this.mVersion = null;
        this.mDTDVersion = null;
        this.mRestoreViaFastTrack = false;
        this.mRequestFrom = -1;
        this.mPackageList = null;
        this.mManufacturer = -1;
    }

    public String getDTDVersion() {
        return this.mDTDVersion;
    }

    public String getDeviceType() {
        return this.mDeviceType;
    }

    public int getManufacturer() {
        return this.mManufacturer;
    }

    public int getOSVersion() {
        return this.mOSVersion;
    }

    public String getOneUIVersion() {
        return this.mOneUIVersion;
    }

    public String getPackageIndex(String str) {
        ArrayList<String> arrayList;
        return (TextUtils.isEmpty(str) || (arrayList = this.mPackageList) == null || !arrayList.contains(str)) ? str : Integer.toString(this.mPackageList.indexOf(str));
    }

    public ArrayList<String> getPackageList() {
        return this.mPackageList;
    }

    public String getPackageName(String str) throws NumberFormatException {
        try {
            int i5 = Integer.parseInt(str);
            ArrayList<String> arrayList = this.mPackageList;
            if (arrayList != null && i5 < arrayList.size()) {
                return this.mPackageList.get(i5);
            }
            return null;
        } catch (NumberFormatException unused) {
            return str;
        }
    }

    public int getRequestFrom() {
        return this.mRequestFrom;
    }

    public String getVersion() {
        return this.mVersion;
    }

    public boolean isRestoreViaFastTrack() {
        return this.mRestoreViaFastTrack;
    }

    public void setDTDVersion(String str) {
        this.mDTDVersion = str;
    }

    public void setDeviceType(String str) {
        this.mDeviceType = str;
    }

    public void setManufacturer(int i5) {
        this.mManufacturer = i5;
    }

    public void setOSVersion(int i5) {
        this.mOSVersion = i5;
    }

    public void setOneUIVersion(String str) {
        this.mOneUIVersion = str;
    }

    public void setPackageList(ArrayList<String> arrayList) {
        this.mPackageList = arrayList;
    }

    public void setRequestFrom(int i5) {
        this.mRequestFrom = i5;
    }

    public void setRestoreViaFastTrack(boolean z4) {
        this.mRestoreViaFastTrack = z4;
    }

    public void setVersion(String str) {
        this.mVersion = str;
    }

    public SourceInfo(String str, String str2) {
        this.mDTDVersion = null;
        this.mRestoreViaFastTrack = false;
        this.mRequestFrom = -1;
        this.mPackageList = null;
        this.mManufacturer = -1;
        this.mDeviceType = str;
        this.mVersion = str2;
    }

    public SourceInfo(String str, String str2, String str3) {
        this(str, str2);
        this.mDTDVersion = str3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SourceInfo(List<Scene> list, Scene scene) {
        this.mDeviceType = null;
        this.mVersion = null;
        this.mDTDVersion = null;
        this.mRestoreViaFastTrack = false;
        this.mRequestFrom = -1;
        this.mPackageList = null;
        this.mManufacturer = -1;
        if (list != null) {
            for (Scene scene2 : list) {
                String key = scene2.getKey();
                key.getClass();
                switch (key) {
                    case "/GeneralInfo/OneUIVersion":
                        this.mOneUIVersion = scene2.getValue();
                        break;
                    case "/GeneralInfo/DeviceType":
                        this.mDeviceType = scene2.getValue();
                        break;
                    case "/GeneralInfo/OSVersion":
                        this.mOSVersion = scene2.getValueInt(-1);
                        break;
                    case "/GeneralInfo/PackageList":
                        this.mPackageList = EpisodeUtils.convertStringToArrayList(EpisodeUtils.decompressString(scene2.getValue()));
                        break;
                }
            }
        }
        if (scene != null) {
            this.mVersion = scene.getAttribute("version");
            this.mDTDVersion = scene.getAttribute("dtd_version");
        }
    }

    public SourceInfo(Bundle bundle) {
        this.mDeviceType = null;
        this.mVersion = null;
        this.mDTDVersion = null;
        this.mRestoreViaFastTrack = false;
        this.mRequestFrom = -1;
        this.mPackageList = null;
        this.mManufacturer = -1;
        if (bundle == null) {
            return;
        }
        this.mDeviceType = bundle.getString(EternalContract.EXTRA_DEVICE_TYPE);
        this.mVersion = bundle.getString("version");
        this.mDTDVersion = bundle.getString("dtd_version");
        this.mRequestFrom = bundle.getInt(EternalContract.EXTRA_REQUEST_FROM);
        this.mRestoreViaFastTrack = bundle.getBoolean(EternalContract.EXTRA_FAST_TRACK);
        this.mOSVersion = bundle.getInt(EternalContract.EXTRA_OS_VERSION);
        this.mOneUIVersion = bundle.getString(EternalContract.EXTRA_ONEUI_VERSION);
        this.mPackageList = EpisodeUtils.convertStringToArrayList(EpisodeUtils.decompressString(bundle.getString(EternalContract.EXTRA_PACKAGE_LIST)));
        this.mManufacturer = bundle.getInt(EternalContract.EXTRA_MANUFACTURER);
    }
}
