package i;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import j.MenuC0523x;

/* loaded from: classes.dex */
public final class g extends ActionMode {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7096a;

    /* renamed from: b, reason: collision with root package name */
    public final AbstractC0474b f7097b;

    public g(Context context, AbstractC0474b abstractC0474b) {
        this.f7096a = context;
        this.f7097b = abstractC0474b;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f7097b.a();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f7097b.b();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new MenuC0523x(this.f7096a, this.f7097b.e());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f7097b.f();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f7097b.g();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f7097b.f7084c;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f7097b.h();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f7097b.f7085d;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f7097b.i();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f7097b.j();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f7097b.k(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f7097b.m(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f7097b.f7084c = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f7097b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z4) {
        this.f7097b.p(z4);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i5) {
        this.f7097b.l(i5);
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i5) {
        this.f7097b.n(i5);
    }
}
