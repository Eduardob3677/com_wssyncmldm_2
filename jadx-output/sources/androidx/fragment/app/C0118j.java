package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: androidx.fragment.app.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0118j extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0120l f3887a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f3888b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f3889c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ u0 f3890d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0115g f3891e;

    public C0118j(C0120l c0120l, View view, boolean z4, u0 u0Var, C0115g c0115g) {
        this.f3887a = c0120l;
        this.f3888b = view;
        this.f3889c = z4;
        this.f3890d = u0Var;
        this.f3891e = c0115g;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        d3.i.e("anim", animator);
        ViewGroup viewGroup = this.f3887a.f3912a;
        View view = this.f3888b;
        viewGroup.endViewTransition(view);
        boolean z4 = this.f3889c;
        u0 u0Var = this.f3890d;
        if (z4) {
            int i5 = u0Var.f3952a;
            d3.i.d("viewToAnimate", view);
            B.f.a(i5, view);
        }
        this.f3891e.a();
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Animator from operation " + u0Var + " has ended.");
        }
    }
}
