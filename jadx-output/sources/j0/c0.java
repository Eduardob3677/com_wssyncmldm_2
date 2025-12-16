package j0;

import J.C0028b;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class c0 extends C0028b {

    /* renamed from: d, reason: collision with root package name */
    public final d0 f7426d;

    /* renamed from: e, reason: collision with root package name */
    public final WeakHashMap f7427e = new WeakHashMap();

    public c0(d0 d0Var) {
        this.f7426d = d0Var;
    }

    @Override // J.C0028b
    public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
        C0028b c0028b = (C0028b) this.f7427e.get(view);
        return c0028b != null ? c0028b.a(view, accessibilityEvent) : this.f956a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // J.C0028b
    public final K.j b(View view) {
        C0028b c0028b = (C0028b) this.f7427e.get(view);
        return c0028b != null ? c0028b.b(view) : super.b(view);
    }

    @Override // J.C0028b
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        C0028b c0028b = (C0028b) this.f7427e.get(view);
        if (c0028b != null) {
            c0028b.c(view, accessibilityEvent);
        } else {
            super.c(view, accessibilityEvent);
        }
    }

    @Override // J.C0028b
    public final void d(View view, K.h hVar) {
        d0 d0Var = this.f7426d;
        boolean Z3 = d0Var.f7431d.Z();
        View.AccessibilityDelegate accessibilityDelegate = this.f956a;
        AccessibilityNodeInfo accessibilityNodeInfo = hVar.f1201a;
        if (!Z3) {
            RecyclerView recyclerView = d0Var.f7431d;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().U(view, hVar);
                C0028b c0028b = (C0028b) this.f7427e.get(view);
                if (c0028b != null) {
                    c0028b.d(view, hVar);
                    return;
                } else {
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    return;
                }
            }
        }
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
    }

    @Override // J.C0028b
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        C0028b c0028b = (C0028b) this.f7427e.get(view);
        if (c0028b != null) {
            c0028b.e(view, accessibilityEvent);
        } else {
            super.e(view, accessibilityEvent);
        }
    }

    @Override // J.C0028b
    public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        C0028b c0028b = (C0028b) this.f7427e.get(viewGroup);
        return c0028b != null ? c0028b.f(viewGroup, view, accessibilityEvent) : this.f956a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // J.C0028b
    public final boolean g(View view, int i5, Bundle bundle) {
        d0 d0Var = this.f7426d;
        if (!d0Var.f7431d.Z()) {
            RecyclerView recyclerView = d0Var.f7431d;
            if (recyclerView.getLayoutManager() != null) {
                C0028b c0028b = (C0028b) this.f7427e.get(view);
                if (c0028b != null) {
                    if (c0028b.g(view, i5, bundle)) {
                        return true;
                    }
                } else if (super.g(view, i5, bundle)) {
                    return true;
                }
                P p4 = recyclerView.getLayoutManager().f7340b.f4855e;
                return false;
            }
        }
        return super.g(view, i5, bundle);
    }

    @Override // J.C0028b
    public final void h(View view, int i5) {
        C0028b c0028b = (C0028b) this.f7427e.get(view);
        if (c0028b != null) {
            c0028b.h(view, i5);
        } else {
            super.h(view, i5);
        }
    }

    @Override // J.C0028b
    public final void i(View view, AccessibilityEvent accessibilityEvent) {
        C0028b c0028b = (C0028b) this.f7427e.get(view);
        if (c0028b != null) {
            c0028b.i(view, accessibilityEvent);
        } else {
            super.i(view, accessibilityEvent);
        }
    }
}
