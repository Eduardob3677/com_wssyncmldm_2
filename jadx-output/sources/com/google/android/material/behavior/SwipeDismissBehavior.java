package com.google.android.material.behavior;

import J.Q;
import K.c;
import S.d;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import c1.w;
import com.idm.agent.dm.IDMDmInterface;
import java.util.WeakHashMap;
import w.AbstractC0897a;
import z1.C0946a;

/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends AbstractC0897a {

    /* renamed from: a, reason: collision with root package name */
    public d f5830a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5831b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5832c;

    /* renamed from: d, reason: collision with root package name */
    public int f5833d = 2;

    /* renamed from: e, reason: collision with root package name */
    public final float f5834e = 0.5f;
    public float f = 0.0f;

    /* renamed from: g, reason: collision with root package name */
    public float f5835g = 0.5f;

    /* renamed from: h, reason: collision with root package name */
    public final C0946a f5836h = new C0946a(this);

    @Override // w.AbstractC0897a
    public boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean zO = this.f5831b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zO = coordinatorLayout.o(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f5831b = zO;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f5831b = false;
        }
        if (!zO) {
            return false;
        }
        if (this.f5830a == null) {
            this.f5830a = new d(coordinatorLayout.getContext(), coordinatorLayout, this.f5836h);
        }
        return !this.f5832c && this.f5830a.p(motionEvent);
    }

    @Override // w.AbstractC0897a
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i5) {
        WeakHashMap weakHashMap = Q.f940a;
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
            Q.f(IDMDmInterface.IDM_MAX_OBJ_SIZE, view);
            Q.d(0, view);
            if (s(view)) {
                Q.g(view, c.f1193j, new w(this));
            }
        }
        return false;
    }

    @Override // w.AbstractC0897a
    public final boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (this.f5830a == null) {
            return false;
        }
        if (this.f5832c && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.f5830a.j(motionEvent);
        return true;
    }

    public boolean s(View view) {
        return true;
    }
}
