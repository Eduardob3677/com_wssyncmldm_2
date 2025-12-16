package com.google.android.material.appbar;

import J.Q;
import Z0.j;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.List;
import java.util.WeakHashMap;
import v1.a;
import w.AbstractC0897a;
import w.d;
import x1.c;

/* loaded from: classes.dex */
public class AppBarLayout$ScrollingViewBehavior extends c {

    /* renamed from: c, reason: collision with root package name */
    public final int f5808c;

    public AppBarLayout$ScrollingViewBehavior() {
        new Rect();
        new Rect();
    }

    public static void t(List list) {
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
        }
    }

    @Override // w.AbstractC0897a
    public final void c(View view) {
    }

    @Override // w.AbstractC0897a
    public boolean e(CoordinatorLayout coordinatorLayout, View view, View view2) {
        AbstractC0897a abstractC0897a = ((d) view2.getLayoutParams()).f9558a;
        if (abstractC0897a instanceof AppBarLayout$BaseBehavior) {
            int bottom = view2.getBottom() - view.getTop();
            ((AppBarLayout$BaseBehavior) abstractC0897a).getClass();
            int i5 = this.f5808c;
            int iN = bottom - (i5 == 0 ? 0 : j.n((int) (0.0f * i5), 0, i5));
            WeakHashMap weakHashMap = Q.f940a;
            view.offsetTopAndBottom(iN);
        }
        return false;
    }

    @Override // w.AbstractC0897a
    public final boolean i(CoordinatorLayout coordinatorLayout, View view, int i5, int i6, int i7) {
        int i8 = view.getLayoutParams().height;
        if (i8 != -1 && i8 != -2) {
            return false;
        }
        t(coordinatorLayout.j(view));
        return false;
    }

    @Override // w.AbstractC0897a
    public final void m(CoordinatorLayout coordinatorLayout, View view) {
        t(coordinatorLayout.j(view));
    }

    @Override // x1.c
    public final void s(CoordinatorLayout coordinatorLayout, View view, int i5) {
        t(coordinatorLayout.j(view));
        coordinatorLayout.q(i5, view);
    }

    public AppBarLayout$ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(0);
        new Rect();
        new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f9547w);
        this.f5808c = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }
}
