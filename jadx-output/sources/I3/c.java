package I3;

import J.b0;
import androidx.appcompat.widget.ActionBarContextView;
import h4.AbstractC0472z;

/* loaded from: classes.dex */
public final class c implements b0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f884a;

    /* renamed from: b, reason: collision with root package name */
    public int f885b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f886c;

    public c(AbstractC0472z abstractC0472z, int i5, boolean z4) {
        this.f886c = abstractC0472z;
        this.f885b = i5;
        this.f884a = z4;
    }

    @Override // J.b0
    public void c() {
        if (this.f884a) {
            return;
        }
        ActionBarContextView actionBarContextView = (ActionBarContextView) this.f886c;
        actionBarContextView.f3279h = null;
        super/*android.view.View*/.setVisibility(this.f885b);
    }

    @Override // J.b0
    public void d() {
        this.f884a = true;
    }

    @Override // J.b0
    public void g() {
        super/*android.view.View*/.setVisibility(0);
        this.f884a = false;
    }

    public c(ActionBarContextView actionBarContextView) {
        this.f886c = actionBarContextView;
        this.f884a = false;
    }
}
