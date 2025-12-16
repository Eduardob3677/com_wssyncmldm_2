package com.google.android.material.bottomappbar;

import A1.a;
import B.f;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;

/* loaded from: classes.dex */
public class BottomAppBar$Behavior extends HideBottomViewOnScrollBehavior<Object> {
    public BottomAppBar$Behavior() {
        new a(0, this);
        new Rect();
    }

    @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, w.AbstractC0897a
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i5) {
        f.C(view);
        throw null;
    }

    @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, w.AbstractC0897a
    public final boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i5, int i6) {
        f.C(view);
        throw null;
    }

    public BottomAppBar$Behavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        new a(0, this);
        new Rect();
    }
}
