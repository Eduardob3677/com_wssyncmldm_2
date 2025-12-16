package androidx.fragment.app;

import android.transition.Transition;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class n0 implements Transition.TransitionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f3924a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f3925b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3926c = null;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f3927d = null;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3928e;
    public final /* synthetic */ ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ p0 f3929g;

    public n0(p0 p0Var, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2) {
        this.f3929g = p0Var;
        this.f3924a = obj;
        this.f3925b = arrayList;
        this.f3928e = obj2;
        this.f = arrayList2;
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
        p0 p0Var = this.f3929g;
        Object obj = this.f3924a;
        if (obj != null) {
            p0Var.t(obj, this.f3925b, null);
        }
        Object obj2 = this.f3926c;
        if (obj2 != null) {
            p0Var.t(obj2, this.f3927d, null);
        }
        Object obj3 = this.f3928e;
        if (obj3 != null) {
            p0Var.t(obj3, this.f, null);
        }
    }
}
