package androidx.lifecycle;

import android.app.Activity;
import com.samsung.android.knox.ex.KnoxContract;

/* loaded from: classes.dex */
public final class J extends AbstractC0143j {
    final /* synthetic */ L this$0;

    public J(L l5) {
        this.this$0 = l5;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostResumed(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        this.this$0.a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostStarted(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        L l5 = this.this$0;
        int i5 = l5.f4009c + 1;
        l5.f4009c = i5;
        if (i5 == 1 && l5.f) {
            l5.f4013h.e(EnumC0149p.ON_START);
            l5.f = false;
        }
    }
}
