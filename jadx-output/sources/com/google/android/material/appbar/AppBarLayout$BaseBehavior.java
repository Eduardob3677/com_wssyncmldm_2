package com.google.android.material.appbar;

import B.f;
import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import x1.c;

/* loaded from: classes.dex */
public class AppBarLayout$BaseBehavior<T> extends c {

    /* renamed from: c, reason: collision with root package name */
    public boolean f5803c;

    /* renamed from: d, reason: collision with root package name */
    public int f5804d;

    /* renamed from: e, reason: collision with root package name */
    public int f5805e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public VelocityTracker f5806g;

    /* renamed from: h, reason: collision with root package name */
    public int f5807h;

    public AppBarLayout$BaseBehavior() {
        this.f5804d = -1;
        this.f = -1;
        this.f5807h = -1;
    }

    @Override // w.AbstractC0897a
    public boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.f < 0) {
            this.f = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        motionEvent.getAction();
        if (motionEvent.getActionMasked() == 2 && this.f5803c) {
            int i5 = this.f5804d;
            if (i5 == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i5)) == -1) {
                return false;
            }
            int y3 = (int) motionEvent.getY(iFindPointerIndex);
            if (Math.abs(y3 - this.f5805e) > this.f) {
                this.f5805e = y3;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f5804d = -1;
            int x4 = (int) motionEvent.getX();
            int y4 = (int) motionEvent.getY();
            f.F(view);
            boolean zO = coordinatorLayout.o(view, x4, y4);
            this.f5803c = zO;
            if (zO) {
                this.f5805e = y4;
                this.f5804d = motionEvent.getPointerId(0);
                if (this.f5806g == null) {
                    this.f5806g = VelocityTracker.obtain();
                }
            }
        }
        VelocityTracker velocityTracker = this.f5806g;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    @Override // x1.c, w.AbstractC0897a
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i5) {
        f.C(view);
        throw null;
    }

    @Override // w.AbstractC0897a
    public /* bridge */ /* synthetic */ boolean i(CoordinatorLayout coordinatorLayout, View view, int i5, int i6, int i7) {
        f.C(view);
        throw null;
    }

    @Override // w.AbstractC0897a
    public final boolean j(View view, View view2, float f) {
        f.C(view);
        throw null;
    }

    @Override // w.AbstractC0897a
    public /* bridge */ /* synthetic */ void k(CoordinatorLayout coordinatorLayout, View view, View view2, int i5, int i6, int[] iArr, int i7) {
        f.C(view);
        throw null;
    }

    @Override // w.AbstractC0897a
    public /* bridge */ /* synthetic */ void l(CoordinatorLayout coordinatorLayout, View view, View view2, int i5, int i6, int i7, int i8, int i9, int[] iArr) {
        f.C(view);
        throw null;
    }

    @Override // w.AbstractC0897a
    public final void n(View view, Parcelable parcelable) {
        f.C(view);
        throw null;
    }

    @Override // w.AbstractC0897a
    public final Parcelable o(View view) {
        f.C(view);
        throw null;
    }

    @Override // w.AbstractC0897a
    public /* bridge */ /* synthetic */ boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i5, int i6) {
        f.C(view);
        throw null;
    }

    @Override // w.AbstractC0897a
    public /* bridge */ /* synthetic */ void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i5) {
        f.C(view);
        throw null;
    }

    @Override // w.AbstractC0897a
    public final boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        f.F(view);
        if (this.f5807h < 0) {
            this.f5807h = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        motionEvent.getAction();
        throw null;
    }

    public AppBarLayout$BaseBehavior(Context context, AttributeSet attributeSet) {
        super(0);
        this.f5804d = -1;
        this.f = -1;
        this.f5807h = -1;
    }
}
