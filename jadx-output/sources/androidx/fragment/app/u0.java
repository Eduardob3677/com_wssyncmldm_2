package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import k.Q0;

/* loaded from: classes.dex */
public final class u0 {

    /* renamed from: a, reason: collision with root package name */
    public int f3952a;

    /* renamed from: b, reason: collision with root package name */
    public int f3953b;

    /* renamed from: c, reason: collision with root package name */
    public final Fragment f3954c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f3955d;

    /* renamed from: e, reason: collision with root package name */
    public final LinkedHashSet f3956e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3957g;

    /* renamed from: h, reason: collision with root package name */
    public final g0 f3958h;

    public u0(int i5, int i6, g0 g0Var, F.f fVar) {
        B.f.x(i5, "finalState");
        B.f.x(i6, "lifecycleImpact");
        d3.i.e("fragmentStateManager", g0Var);
        Fragment fragment = g0Var.f3867c;
        d3.i.d("fragmentStateManager.fragment", fragment);
        B.f.x(i5, "finalState");
        B.f.x(i6, "lifecycleImpact");
        this.f3952a = i5;
        this.f3953b = i6;
        this.f3954c = fragment;
        this.f3955d = new ArrayList();
        this.f3956e = new LinkedHashSet();
        fVar.b(new F.e() { // from class: androidx.fragment.app.v0
            @Override // F.e
            public final void onCancel() {
                u0 u0Var = this.f3960c;
                d3.i.e("this$0", u0Var);
                u0Var.a();
            }
        });
        this.f3958h = g0Var;
    }

    public final void a() {
        if (this.f) {
            return;
        }
        this.f = true;
        LinkedHashSet linkedHashSet = this.f3956e;
        if (linkedHashSet.isEmpty()) {
            b();
            return;
        }
        Iterator it = R2.m.i1(linkedHashSet).iterator();
        while (it.hasNext()) {
            ((F.f) it.next()).a();
        }
    }

    public final void b() {
        if (!this.f3957g) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f3957g = true;
            Iterator it = this.f3955d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
        this.f3958h.k();
    }

    public final void c(int i5, int i6) {
        B.f.x(i5, "finalState");
        B.f.x(i6, "lifecycleImpact");
        int iF = Q0.f(i6);
        Fragment fragment = this.f3954c;
        if (iF == 0) {
            if (this.f3952a != 1) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = " + B.f.L(this.f3952a) + " -> " + B.f.L(i5) + '.');
                }
                this.f3952a = i5;
                return;
            }
            return;
        }
        if (iF == 1) {
            if (this.f3952a == 1) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + B.f.K(this.f3953b) + " to ADDING.");
                }
                this.f3952a = 2;
                this.f3953b = 2;
                return;
            }
            return;
        }
        if (iF != 2) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = " + B.f.L(this.f3952a) + " -> REMOVED. mLifecycleImpact  = " + B.f.K(this.f3953b) + " to REMOVING.");
        }
        this.f3952a = 1;
        this.f3953b = 3;
    }

    public final void d() {
        int i5 = this.f3953b;
        g0 g0Var = this.f3958h;
        if (i5 != 2) {
            if (i5 == 3) {
                Fragment fragment = g0Var.f3867c;
                d3.i.d("fragmentStateManager.fragment", fragment);
                View viewRequireView = fragment.requireView();
                d3.i.d("fragment.requireView()", viewRequireView);
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Clearing focus " + viewRequireView.findFocus() + " on view " + viewRequireView + " for Fragment " + fragment);
                }
                viewRequireView.clearFocus();
                return;
            }
            return;
        }
        Fragment fragment2 = g0Var.f3867c;
        d3.i.d("fragmentStateManager.fragment", fragment2);
        View viewFindFocus = fragment2.mView.findFocus();
        if (viewFindFocus != null) {
            fragment2.setFocusedView(viewFindFocus);
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragment2);
            }
        }
        View viewRequireView2 = this.f3954c.requireView();
        d3.i.d("this.fragment.requireView()", viewRequireView2);
        if (viewRequireView2.getParent() == null) {
            g0Var.b();
            viewRequireView2.setAlpha(0.0f);
        }
        if (viewRequireView2.getAlpha() == 0.0f && viewRequireView2.getVisibility() == 0) {
            viewRequireView2.setVisibility(4);
        }
        viewRequireView2.setAlpha(fragment2.getPostOnViewCreatedAlpha());
    }

    public final String toString() {
        return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {finalState = " + B.f.L(this.f3952a) + " lifecycleImpact = " + B.f.K(this.f3953b) + " fragment = " + this.f3954c + '}';
    }
}
