package i;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import j.InterfaceC0506g;
import j.MenuC0508i;
import java.lang.ref.WeakReference;
import k.C0602k;

/* loaded from: classes.dex */
public final class f extends AbstractC0474b implements InterfaceC0506g {

    /* renamed from: e, reason: collision with root package name */
    public Context f7091e;
    public ActionBarContextView f;

    /* renamed from: g, reason: collision with root package name */
    public InterfaceC0473a f7092g;

    /* renamed from: h, reason: collision with root package name */
    public WeakReference f7093h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f7094i;

    /* renamed from: j, reason: collision with root package name */
    public MenuC0508i f7095j;

    @Override // i.AbstractC0474b
    public final void a() {
        if (this.f7094i) {
            return;
        }
        this.f7094i = true;
        this.f7092g.n(this);
    }

    @Override // i.AbstractC0474b
    public final View b() {
        WeakReference weakReference = this.f7093h;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // j.InterfaceC0506g
    public final void c(MenuC0508i menuC0508i) {
        i();
        C0602k c0602k = this.f.f;
        if (c0602k != null) {
            c0602k.l();
        }
    }

    @Override // j.InterfaceC0506g
    public final boolean d(MenuC0508i menuC0508i, MenuItem menuItem) {
        return this.f7092g.c(this, menuItem);
    }

    @Override // i.AbstractC0474b
    public final MenuC0508i e() {
        return this.f7095j;
    }

    @Override // i.AbstractC0474b
    public final MenuInflater f() {
        return new j(this.f.getContext());
    }

    @Override // i.AbstractC0474b
    public final CharSequence g() {
        return this.f.getSubtitle();
    }

    @Override // i.AbstractC0474b
    public final CharSequence h() {
        return this.f.getTitle();
    }

    @Override // i.AbstractC0474b
    public final void i() {
        this.f7092g.l(this, this.f7095j);
    }

    @Override // i.AbstractC0474b
    public final boolean j() {
        return this.f.f3291u;
    }

    @Override // i.AbstractC0474b
    public final void k(View view) {
        this.f.setCustomView(view);
        this.f7093h = view != null ? new WeakReference(view) : null;
    }

    @Override // i.AbstractC0474b
    public final void l(int i5) {
        m(this.f7091e.getString(i5));
    }

    @Override // i.AbstractC0474b
    public final void m(CharSequence charSequence) {
        this.f.setSubtitle(charSequence);
    }

    @Override // i.AbstractC0474b
    public final void n(int i5) {
        o(this.f7091e.getString(i5));
    }

    @Override // i.AbstractC0474b
    public final void o(CharSequence charSequence) {
        this.f.setTitle(charSequence);
    }

    @Override // i.AbstractC0474b
    public final void p(boolean z4) {
        this.f7085d = z4;
        this.f.setTitleOptional(z4);
    }
}
