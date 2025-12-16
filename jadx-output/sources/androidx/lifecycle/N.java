package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.samsung.android.knox.ex.KnoxContract;

/* loaded from: classes.dex */
public final class N implements Application.ActivityLifecycleCallbacks {
    public static final M Companion = new M();

    public static final void registerIn(Activity activity) {
        Companion.getClass();
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        activity.registerActivityLifecycleCallbacks(new N());
    }

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
    public void onActivityPostCreated(Activity activity, Bundle bundle) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        int i5 = O.f4018c;
        S.d(activity, EnumC0149p.ON_CREATE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostResumed(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        int i5 = O.f4018c;
        S.d(activity, EnumC0149p.ON_RESUME);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostStarted(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        int i5 = O.f4018c;
        S.d(activity, EnumC0149p.ON_START);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreDestroyed(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        int i5 = O.f4018c;
        S.d(activity, EnumC0149p.ON_DESTROY);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPrePaused(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        int i5 = O.f4018c;
        S.d(activity, EnumC0149p.ON_PAUSE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreStopped(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        int i5 = O.f4018c;
        S.d(activity, EnumC0149p.ON_STOP);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        d3.i.e("bundle", bundle);
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
