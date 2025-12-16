package androidx.fragment.app;

import android.animation.Animator;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import java.lang.ref.WeakReference;

/* renamed from: androidx.fragment.app.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0126s implements t4.a, F.e {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3939c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3940d;

    public /* synthetic */ C0126s(Object obj, Object obj2) {
        this.f3939c = obj;
        this.f3940d = obj2;
    }

    @Override // t4.a
    public void a() {
        Animation animation;
        Fragment fragment = (Fragment) this.f3939c;
        fragment.getClass();
        View view = (View) ((WeakReference) this.f3940d).get();
        if (view != null && (animation = view.getAnimation()) != null && !animation.hasEnded()) {
            Log.d("FragmentManager", "Fragment Animation was canceled by back press");
            view.clearAnimation();
        }
        fragment.mDisposableHandle = null;
    }

    @Override // F.e
    public void onCancel() {
        u0 u0Var = (u0) this.f3940d;
        d3.i.e("$operation", u0Var);
        ((Animator) this.f3939c).end();
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Animator from operation " + u0Var + " has been canceled.");
        }
    }
}
