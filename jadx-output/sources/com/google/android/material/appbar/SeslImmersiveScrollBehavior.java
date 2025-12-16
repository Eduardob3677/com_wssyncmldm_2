package com.google.android.material.appbar;

import B.f;
import android.content.Context;
import android.content.res.Resources;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsetsAnimationController;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.picker.widget.HandlerC0161c;
import x1.WindowInsetsAnimationControlListenerC0905a;
import x1.b;

/* loaded from: classes.dex */
public final class SeslImmersiveScrollBehavior extends AppBarLayout$Behavior {

    /* renamed from: i, reason: collision with root package name */
    public boolean f5812i;

    /* renamed from: j, reason: collision with root package name */
    public CancellationSignal f5813j;

    /* renamed from: k, reason: collision with root package name */
    public WindowInsetsAnimationController f5814k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f5815l;

    public SeslImmersiveScrollBehavior(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        new HandlerC0161c(this, Looper.getMainLooper(), 4);
        new WindowInsetsAnimationControlListenerC0905a(this);
        new b(this);
        if (context == null) {
            return;
        }
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            resources.getDimensionPixelSize(identifier);
        }
        int identifier2 = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier2 > 0) {
            resources.getDimensionPixelSize(identifier2);
        }
    }

    @Override // w.AbstractC0897a
    public final void a(MotionEvent motionEvent) {
        boolean z4 = motionEvent.getToolType(0) == 3;
        if (this.f5812i != z4) {
            this.f5812i = z4;
        }
    }

    @Override // com.google.android.material.appbar.AppBarLayout$BaseBehavior, w.AbstractC0897a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        f.C(view);
        throw null;
    }

    @Override // com.google.android.material.appbar.AppBarLayout$BaseBehavior, w.AbstractC0897a
    public final boolean i(CoordinatorLayout coordinatorLayout, View view, int i5, int i6, int i7) {
        f.C(view);
        throw null;
    }

    @Override // com.google.android.material.appbar.AppBarLayout$BaseBehavior, w.AbstractC0897a
    public final /* bridge */ /* synthetic */ void k(CoordinatorLayout coordinatorLayout, View view, View view2, int i5, int i6, int[] iArr, int i7) {
        f.C(view);
        throw null;
    }

    @Override // com.google.android.material.appbar.AppBarLayout$BaseBehavior, w.AbstractC0897a
    public final void l(CoordinatorLayout coordinatorLayout, View view, View view2, int i5, int i6, int i7, int i8, int i9, int[] iArr) {
        f.C(view);
        throw null;
    }

    @Override // com.google.android.material.appbar.AppBarLayout$BaseBehavior, w.AbstractC0897a
    public final boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i5, int i6) {
        f.C(view);
        throw null;
    }

    @Override // com.google.android.material.appbar.AppBarLayout$BaseBehavior, w.AbstractC0897a
    public final void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i5) {
        f.C(view);
        throw null;
    }

    @Override // x1.c
    public final void s(CoordinatorLayout coordinatorLayout, View view, int i5) {
        f.F(view);
        coordinatorLayout.q(i5, null);
        throw null;
    }
}
