package com.idm.fotaagent.enabler.fumo.policy.mdm;

import android.database.Cursor;
import android.net.Uri;
import com.idm.fotaagent.IDMApplication;
import com.samsung.android.fotaagent.common.log.Log;

/* loaded from: classes.dex */
public class MDMInfo {
    private final String corpId;
    private final String targetVersion;

    public MDMInfo() {
        String[] corpIdAndTargetVersion = getCorpIdAndTargetVersion();
        this.corpId = corpIdAndTargetVersion[0];
        this.targetVersion = corpIdAndTargetVersion[1];
    }

    private String[] getCorpIdAndTargetVersion() {
        String str = "";
        String[] strArr = {"", ""};
        try {
            Cursor cursorQuery = IDMApplication.idmGetContext().getContentResolver().query(Uri.parse("content://com.sec.knox.provider/RestrictionPolicy4"), null, "getAllowedFOTAInfo", null, null);
            try {
                if (cursorQuery == null) {
                    Log.I("Cursor is null");
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return strArr;
                }
                if (!cursorQuery.moveToFirst()) {
                    Log.W("No value for corpId");
                    cursorQuery.close();
                    return strArr;
                }
                String string = cursorQuery.getString(0);
                if (string == null) {
                    Log.W("corpId is null");
                    string = "";
                }
                strArr[0] = string;
                if (!cursorQuery.moveToNext()) {
                    Log.W("No value for targetVersion");
                    cursorQuery.close();
                    return strArr;
                }
                String string2 = cursorQuery.getString(0);
                if (string2 == null) {
                    Log.W("targetVersion is null");
                } else {
                    str = string2;
                }
                strArr[1] = str;
                cursorQuery.close();
                return strArr;
            } finally {
            }
        } catch (RuntimeException e5) {
            Log.printStackTrace(e5);
            return strArr;
        }
    }

    public String getCorpId() {
        return this.corpId;
    }

    public String getTargetVersion() {
        return this.targetVersion;
    }
}
