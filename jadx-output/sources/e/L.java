package e;

import android.content.Context;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.Window;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import j.C0510k;
import java.util.ArrayList;
import java.util.WeakHashMap;
import k.C0602k;
import k.D1;
import k.I1;

/* loaded from: classes.dex */
public final class L extends AbstractC0397a {

    /* renamed from: a, reason: collision with root package name */
    public final I1 f6663a;

    /* renamed from: b, reason: collision with root package name */
    public final Window.Callback f6664b;

    /* renamed from: c, reason: collision with root package name */
    public final K f6665c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6666d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6667e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f6668g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final B1.h f6669h = new B1.h(14, this);

    public L(Toolbar toolbar, CharSequence charSequence, y yVar) {
        K k5 = new K(this);
        toolbar.getClass();
        I1 i12 = new I1(toolbar, false);
        this.f6663a = i12;
        yVar.getClass();
        this.f6664b = yVar;
        i12.f7703k = yVar;
        toolbar.setOnMenuItemClickListener(k5);
        if (!i12.f7699g) {
            i12.f7700h = charSequence;
            if ((i12.f7695b & 8) != 0) {
                Toolbar toolbar2 = i12.f7694a;
                toolbar2.setTitle(charSequence);
                if (i12.f7699g) {
                    J.Q.i(toolbar2.getRootView(), charSequence);
                }
            }
        }
        this.f6665c = new K(this);
    }

    @Override // e.AbstractC0397a
    public final boolean a() {
        C0602k c0602k;
        ActionMenuView actionMenuView = this.f6663a.f7694a.f3536c;
        return (actionMenuView == null || (c0602k = actionMenuView.f3335v) == null || !c0602k.i()) ? false : true;
    }

    @Override // e.AbstractC0397a
    public final boolean b() {
        C0510k c0510k;
        D1 d12 = this.f6663a.f7694a.f3527O;
        if (d12 == null || (c0510k = d12.f7672d) == null) {
            return false;
        }
        if (d12 == null) {
            c0510k = null;
        }
        if (c0510k == null) {
            return true;
        }
        c0510k.collapseActionView();
        return true;
    }

    @Override // e.AbstractC0397a
    public final void c(boolean z4) {
        if (z4 == this.f) {
            return;
        }
        this.f = z4;
        ArrayList arrayList = this.f6668g;
        if (arrayList.size() <= 0) {
            return;
        }
        B.f.F(arrayList.get(0));
        throw null;
    }

    @Override // e.AbstractC0397a
    public final int d() {
        return this.f6663a.f7695b;
    }

    @Override // e.AbstractC0397a
    public final Context e() {
        return this.f6663a.f7694a.getContext();
    }

    @Override // e.AbstractC0397a
    public final boolean f() {
        I1 i12 = this.f6663a;
        Toolbar toolbar = i12.f7694a;
        B1.h hVar = this.f6669h;
        toolbar.removeCallbacks(hVar);
        Toolbar toolbar2 = i12.f7694a;
        WeakHashMap weakHashMap = J.Q.f940a;
        toolbar2.postOnAnimation(hVar);
        return true;
    }

    @Override // e.AbstractC0397a
    public final void g() {
    }

    @Override // e.AbstractC0397a
    public final void h() {
        this.f6663a.f7694a.removeCallbacks(this.f6669h);
    }

    @Override // e.AbstractC0397a
    public final boolean i(int i5, KeyEvent keyEvent) {
        Menu menuR = r();
        if (menuR == null) {
            return false;
        }
        menuR.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuR.performShortcut(i5, keyEvent, 0);
    }

    @Override // e.AbstractC0397a
    public final boolean j(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            k();
        }
        return true;
    }

    @Override // e.AbstractC0397a
    public final boolean k() {
        C0602k c0602k;
        I1 i12 = this.f6663a;
        ActionMenuView actionMenuView = i12.f7694a.f3536c;
        if (actionMenuView == null || (c0602k = actionMenuView.f3335v) == null || (c0602k.f7897w == null && !c0602k.j())) {
            return i12.f7694a.w();
        }
        return true;
    }

    @Override // e.AbstractC0397a
    public final void l(boolean z4) {
    }

    @Override // e.AbstractC0397a
    public final void m(boolean z4) {
        I1 i12 = this.f6663a;
        i12.a((i12.f7695b & (-5)) | 4);
    }

    @Override // e.AbstractC0397a
    public final void n(boolean z4) {
    }

    @Override // e.AbstractC0397a
    public final void o(int i5) {
        I1 i12 = this.f6663a;
        CharSequence text = i5 != 0 ? i12.f7694a.getContext().getText(i5) : null;
        i12.f7699g = true;
        i12.f7700h = text;
        if ((i12.f7695b & 8) != 0) {
            Toolbar toolbar = i12.f7694a;
            toolbar.setTitle(text);
            if (i12.f7699g) {
                J.Q.i(toolbar.getRootView(), text);
            }
        }
    }

    @Override // e.AbstractC0397a
    public final void p(CharSequence charSequence) {
        I1 i12 = this.f6663a;
        if (i12.f7699g) {
            return;
        }
        i12.f7700h = charSequence;
        if ((i12.f7695b & 8) != 0) {
            Toolbar toolbar = i12.f7694a;
            toolbar.setTitle(charSequence);
            if (i12.f7699g) {
                J.Q.i(toolbar.getRootView(), charSequence);
            }
        }
    }

    public final Menu r() {
        boolean z4 = this.f6667e;
        I1 i12 = this.f6663a;
        if (!z4) {
            B1.c cVar = new B1.c(4, this);
            K k5 = new K(this);
            Toolbar toolbar = i12.f7694a;
            toolbar.f3528Q = cVar;
            toolbar.f3529R = k5;
            ActionMenuView actionMenuView = toolbar.f3536c;
            if (actionMenuView != null) {
                actionMenuView.f3336w = cVar;
                actionMenuView.f3337x = k5;
            }
            this.f6667e = true;
        }
        return i12.f7694a.getMenu();
    }
}
