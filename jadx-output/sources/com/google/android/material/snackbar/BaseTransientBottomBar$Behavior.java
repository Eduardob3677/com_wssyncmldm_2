package com.google.android.material.snackbar;

import K.j;
import R1.c;
import Z0.h;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* renamed from: i, reason: collision with root package name */
    public final h f6069i;

    public BaseTransientBottomBar$Behavior() {
        h hVar = new h(4);
        this.f = Math.min(Math.max(0.0f, 0.1f), 1.0f);
        this.f5835g = Math.min(Math.max(0.0f, 0.6f), 1.0f);
        this.f5833d = 0;
        this.f6069i = hVar;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, w.AbstractC0897a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.f6069i.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                if (j.f1205d == null) {
                    j.f1205d = new j(2);
                }
                synchronized (j.f1205d.f1206c) {
                }
            }
        } else if (coordinatorLayout.o(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            if (j.f1205d == null) {
                j.f1205d = new j(2);
            }
            synchronized (j.f1205d.f1206c) {
            }
        }
        return super.g(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public final boolean s(View view) {
        this.f6069i.getClass();
        return view instanceof c;
    }
}
