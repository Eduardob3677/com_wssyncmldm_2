package androidx.lifecycle;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import com.samsung.android.knox.ex.KnoxContract;

/* loaded from: classes.dex */
public final class K extends AbstractC0143j {
    final /* synthetic */ L this$0;

    public K(L l5) {
        this.this$0 = l5;
    }

    @Override // androidx.lifecycle.AbstractC0143j, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
    }

    @Override // androidx.lifecycle.AbstractC0143j, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        L l5 = this.this$0;
        int i5 = l5.f4010d - 1;
        l5.f4010d = i5;
        if (i5 == 0) {
            Handler handler = l5.f4012g;
            d3.i.b(handler);
            handler.postDelayed(l5.f4014i, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        I.a(activity, new J(this.this$0));
    }

    @Override // androidx.lifecycle.AbstractC0143j, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        L l5 = this.this$0;
        int i5 = l5.f4009c - 1;
        l5.f4009c = i5;
        if (i5 == 0 && l5.f4011e) {
            l5.f4013h.e(EnumC0149p.ON_STOP);
            l5.f = true;
        }
    }
}
