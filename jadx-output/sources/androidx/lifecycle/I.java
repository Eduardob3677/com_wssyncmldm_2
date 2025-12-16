package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import com.samsung.android.knox.ex.KnoxContract;

/* loaded from: classes.dex */
public abstract class I {
    public static final void a(Activity activity, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        d3.i.e("callback", activityLifecycleCallbacks);
        activity.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
    }
}
