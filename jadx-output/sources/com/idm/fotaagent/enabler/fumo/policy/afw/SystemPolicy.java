package com.idm.fotaagent.enabler.fumo.policy.afw;

import D2.c;
import G2.b;
import android.app.admin.DevicePolicyManager;
import android.app.admin.FreezePeriod;
import android.app.admin.SystemUpdatePolicy;
import android.content.Context;
import com.samsung.android.fotaagent.common.log.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/* loaded from: classes.dex */
public class SystemPolicy {
    public static List<FreezePeriod> getFreezePeriod(Context context) {
        return (List) getSystemUpdatePolicy(context).map(new b(20)).orElse(new ArrayList());
    }

    public static int getInstallEndMinute(Context context) {
        return ((Integer) getSystemUpdatePolicy(context).map(new b(21)).orElse(-1)).intValue();
    }

    public static int getInstallStartMinute(Context context) {
        return ((Integer) getSystemUpdatePolicy(context).map(new b(19)).orElse(-1)).intValue();
    }

    public static SystemUpdatePolicy.SemInstallationOption getInstallationOption(Context context, long j3) {
        try {
            return (SystemUpdatePolicy.SemInstallationOption) getSystemUpdatePolicy(context).map(new c(2, j3)).orElse(null);
        } catch (NoSuchMethodError e5) {
            Log.printStackTrace(e5);
            return null;
        }
    }

    public static int getPolicyType(Context context) {
        return ((Integer) getSystemUpdatePolicy(context).map(new b(22)).orElse(-1)).intValue();
    }

    private static Optional<SystemUpdatePolicy> getSystemUpdatePolicy(Context context) {
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) context.getSystemService(DevicePolicyManager.class);
        if (devicePolicyManager == null) {
            Log.E("DevicePolicyManager is null");
            return Optional.empty();
        }
        SystemUpdatePolicy systemUpdatePolicy = devicePolicyManager.getSystemUpdatePolicy();
        if (systemUpdatePolicy != null) {
            return Optional.of(systemUpdatePolicy);
        }
        Log.E("SystemUpdatePolicy is null");
        return Optional.empty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SystemUpdatePolicy.SemInstallationOption lambda$getInstallationOption$0(long j3, SystemUpdatePolicy systemUpdatePolicy) {
        return systemUpdatePolicy.semGetInstallationOptionAt(j3);
    }
}
