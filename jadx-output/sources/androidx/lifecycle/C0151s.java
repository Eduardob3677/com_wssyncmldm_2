package androidx.lifecycle;

import android.app.Activity;
import android.os.Bundle;
import com.samsung.android.knox.ex.KnoxContract;

/* renamed from: androidx.lifecycle.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0151s extends AbstractC0143j {
    @Override // androidx.lifecycle.AbstractC0143j, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        int i5 = O.f4018c;
        S.g(activity);
    }
}
