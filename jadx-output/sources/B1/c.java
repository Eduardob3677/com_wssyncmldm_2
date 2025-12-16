package B1;

import androidx.appcompat.widget.ActionMenuView;
import e.L;
import j.InterfaceC0519t;
import j.MenuC0508i;
import k.C0587f;
import k.C0602k;

/* loaded from: classes.dex */
public final class c implements InterfaceC0519t {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f196c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f197d;

    /* renamed from: e, reason: collision with root package name */
    public Object f198e;

    @Override // j.InterfaceC0519t
    public void a(MenuC0508i menuC0508i, boolean z4) {
        C0602k c0602k;
        if (this.f197d) {
            return;
        }
        this.f197d = true;
        L l5 = (L) this.f198e;
        ActionMenuView actionMenuView = l5.f6663a.f7694a.f3536c;
        if (actionMenuView != null && (c0602k = actionMenuView.f3335v) != null) {
            c0602k.i();
            C0587f c0587f = c0602k.f7896v;
            if (c0587f != null && c0587f.b()) {
                c0587f.f7300j.dismiss();
            }
        }
        l5.f6664b.onPanelClosed(108, menuC0508i);
        this.f197d = false;
    }

    @Override // j.InterfaceC0519t
    public boolean b(MenuC0508i menuC0508i) {
        ((L) this.f198e).f6664b.onMenuOpened(108, menuC0508i);
        return true;
    }

    public boolean c() {
        return this.f197d;
    }

    public boolean d(CharSequence charSequence, int i5) {
        if (charSequence == null || i5 < 0 || charSequence.length() - i5 < 0) {
            throw new IllegalArgumentException();
        }
        H.f fVar = (H.f) this.f198e;
        if (fVar == null) {
            return c();
        }
        int iA = fVar.a(charSequence, i5);
        if (iA == 0) {
            return true;
        }
        if (iA != 1) {
            return c();
        }
        return false;
    }

    public String toString() {
        switch (this.f196c) {
            case 5:
                return this.f197d ? "FALL_THROUGH" : String.valueOf(this.f198e);
            default:
                return super.toString();
        }
    }

    public /* synthetic */ c(int i5, Object obj) {
        this.f196c = i5;
        this.f198e = obj;
    }

    public /* synthetic */ c(Object obj, boolean z4, int i5) {
        this.f196c = i5;
        this.f198e = obj;
        this.f197d = z4;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(H.f fVar, boolean z4) {
        this(2, fVar);
        this.f196c = 2;
        this.f197d = z4;
    }
}
