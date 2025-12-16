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
public class FloatingActionButton$BaseBehavior<T> extends AbstractC0897a {
    public FloatingActionButton$BaseBehavior() {
    }

    @Override // w.AbstractC0897a
    public final boolean b(View view) {
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

    public FloatingActionButton$BaseBehavior(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f9533h);
        typedArrayObtainStyledAttributes.getBoolean(0, true);
        typedArrayObtainStyledAttributes.recycle();
    }
}
