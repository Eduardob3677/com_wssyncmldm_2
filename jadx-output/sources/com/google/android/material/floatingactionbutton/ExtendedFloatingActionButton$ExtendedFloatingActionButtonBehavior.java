package com.google.android.material.floatingactionbutton;

import B.f;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import v1.a;
import w.AbstractC0897a;
import w.d;

/* loaded from: classes.dex */
public class ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior<T> extends AbstractC0897a {
    public ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior() {
    }

    @Override // w.AbstractC0897a
    public final /* bridge */ /* synthetic */ boolean b(View view) {
        f.C(view);
        throw null;
    }

    @Override // w.AbstractC0897a
    public final void d(d dVar) {
        if (dVar.f9564h == 0) {
            dVar.f9564h = 80;
        }
    }

    @Override // w.AbstractC0897a
    public final boolean e(CoordinatorLayout coordinatorLayout, View view, View view2) {
        f.C(view);
        throw null;
    }

    @Override // w.AbstractC0897a
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i5) {
        f.C(view);
        throw null;
    }

    public ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f9532g);
        typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.getBoolean(1, true);
        typedArrayObtainStyledAttributes.recycle();
    }
}
