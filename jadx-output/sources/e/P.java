package e;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import i.AbstractC0474b;
import i.InterfaceC0473a;
import j.InterfaceC0506g;
import j.MenuC0508i;
import java.lang.ref.WeakReference;
import k.C0602k;

/* loaded from: classes.dex */
public final class P extends AbstractC0474b implements InterfaceC0506g {

    /* renamed from: e, reason: collision with root package name */
    public final Context f6678e;
    public final MenuC0508i f;

    /* renamed from: g, reason: collision with root package name */
    public InterfaceC0473a f6679g;

    /* renamed from: h, reason: collision with root package name */
    public WeakReference f6680h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Q f6681i;

    public P(Q q2, Context context, v vVar) {
        this.f6681i = q2;
        this.f6678e = context;
        this.f6679g = vVar;
        MenuC0508i menuC0508i = new MenuC0508i(context);
        menuC0508i.f7239l = 1;
        this.f = menuC0508i;
        menuC0508i.f7233e = this;
    }

    @Override // i.AbstractC0474b
    public final void a() {
        Q q2 = this.f6681i;
        if (q2.f6691i != this) {
            return;
        }
        if (q2.f6697p) {
            q2.f6692j = this;
            q2.f6693k = this.f6679g;
        } else {
            this.f6679g.n(this);
        }
        this.f6679g = null;
        q2.r(false);
        ActionBarContextView actionBarContextView = q2.f;
        if (actionBarContextView.f3284m == null) {
            actionBarContextView.e();
        }
        q2.f6686c.setHideOnContentScrollEnabled(q2.f6702u);
        q2.f6691i = null;
    }

    @Override // i.AbstractC0474b
    public final View b() {
        WeakReference weakReference = this.f6680h;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // j.InterfaceC0506g
    public final void c(MenuC0508i menuC0508i) {
        if (this.f6679g == null) {
            return;
        }
        i();
        C0602k c0602k = this.f6681i.f.f;
        if (c0602k != null) {
            c0602k.l();
        }
    }

    @Override // j.InterfaceC0506g
    public final boolean d(MenuC0508i menuC0508i, MenuItem menuItem) {
        InterfaceC0473a interfaceC0473a = this.f6679g;
        if (interfaceC0473a != null) {
            return interfaceC0473a.c(this, menuItem);
        }
        return false;
    }

    @Override // i.AbstractC0474b
    public final MenuC0508i e() {
        return this.f;
    }

    @Override // i.AbstractC0474b
    public final MenuInflater f() {
        return new i.j(this.f6678e);
    }

    @Override // i.AbstractC0474b
    public final CharSequence g() {
        return this.f6681i.f.getSubtitle();
    }

    @Override // i.AbstractC0474b
    public final CharSequence h() {
        return this.f6681i.f.getTitle();
    }

    @Override // i.AbstractC0474b
    public final void i() {
        if (this.f6681i.f6691i != this) {
            return;
        }
        MenuC0508i menuC0508i = this.f;
        menuC0508i.w();
        try {
            this.f6679g.l(this, menuC0508i);
        } finally {
            menuC0508i.v();
        }
    }

    @Override // i.AbstractC0474b
    public final boolean j() {
        return this.f6681i.f.f3291u;
    }

    @Override // i.AbstractC0474b
    public final void k(View view) {
        this.f6681i.f.setCustomView(view);
        this.f6680h = new WeakReference(view);
    }

    @Override // i.AbstractC0474b
    public final void l(int i5) {
        m(this.f6681i.f6684a.getResources().getString(i5));
    }

    @Override // i.AbstractC0474b
    public final void m(CharSequence charSequence) {
        this.f6681i.f.setSubtitle(charSequence);
    }

    @Override // i.AbstractC0474b
    public final void n(int i5) {
        o(this.f6681i.f6684a.getResources().getString(i5));
    }

    @Override // i.AbstractC0474b
    public final void o(CharSequence charSequence) {
        this.f6681i.f.setTitle(charSequence);
    }

    @Override // i.AbstractC0474b
    public final void p(boolean z4) {
        this.f7085d = z4;
        this.f6681i.f.setTitleOptional(z4);
    }
}
