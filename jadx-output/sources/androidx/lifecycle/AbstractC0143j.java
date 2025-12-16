package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.samsung.android.knox.ex.KnoxContract;

/* renamed from: androidx.lifecycle.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0143j implements Application.ActivityLifecycleCallbacks {
    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        d3.i.e("outState", bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
    }
}
