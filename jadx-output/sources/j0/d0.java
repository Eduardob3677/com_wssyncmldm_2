package j0;

import J.C0028b;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class d0 extends C0028b {

    /* renamed from: d, reason: collision with root package name */
    public final RecyclerView f7431d;

    /* renamed from: e, reason: collision with root package name */
    public final c0 f7432e;

    public d0(RecyclerView recyclerView) {
        this.f7431d = recyclerView;
        C0028b c0028bJ = j();
        if (c0028bJ == null || !(c0028bJ instanceof c0)) {
            this.f7432e = new c0(this);
        } else {
            this.f7432e = (c0) c0028bJ;
        }
    }

    @Override // J.C0028b
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.f7431d.Z()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().S(accessibilityEvent);
        }
    }

    @Override // J.C0028b
    public final void d(View view, K.h hVar) {
        this.f956a.onInitializeAccessibilityNodeInfo(view, hVar.f1201a);
        RecyclerView recyclerView = this.f7431d;
        if (recyclerView.Z() || recyclerView.getLayoutManager() == null) {
            return;
        }
        J layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.f7340b;
        layoutManager.T(recyclerView2.f4855e, recyclerView2.l0, hVar);
    }

    @Override // J.C0028b
    public final boolean g(View view, int i5, Bundle bundle) {
        if (super.g(view, i5, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.f7431d;
        if (recyclerView.Z() || recyclerView.getLayoutManager() == null) {
            return false;
        }
        J layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.f7340b;
        return layoutManager.g0(recyclerView2.f4855e, recyclerView2.l0, i5, bundle);
    }

    public C0028b j() {
        return this.f7432e;
    }
}
