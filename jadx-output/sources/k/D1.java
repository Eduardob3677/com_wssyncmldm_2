package k;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import i.InterfaceC0475c;
import j.C0510k;
import j.InterfaceC0520u;
import j.MenuC0508i;
import j.SubMenuC0499A;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class D1 implements InterfaceC0520u {

    /* renamed from: c, reason: collision with root package name */
    public MenuC0508i f7671c;

    /* renamed from: d, reason: collision with root package name */
    public C0510k f7672d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Toolbar f7673e;

    public D1(Toolbar toolbar) {
        this.f7673e = toolbar;
    }

    @Override // j.InterfaceC0520u
    public final void a(MenuC0508i menuC0508i, boolean z4) {
    }

    @Override // j.InterfaceC0520u
    public final void c(Context context, MenuC0508i menuC0508i) {
        C0510k c0510k;
        MenuC0508i menuC0508i2 = this.f7671c;
        if (menuC0508i2 != null && (c0510k = this.f7672d) != null) {
            menuC0508i2.d(c0510k);
        }
        this.f7671c = menuC0508i;
    }

    @Override // j.InterfaceC0520u
    public final boolean d() {
        return false;
    }

    @Override // j.InterfaceC0520u
    public final boolean e(C0510k c0510k) {
        ViewParent parent;
        Toolbar toolbar = this.f7673e;
        toolbar.c();
        ViewParent parent2 = toolbar.f3545j.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.f3545j);
            }
            toolbar.addView(toolbar.f3545j);
        }
        View actionView = c0510k.getActionView();
        toolbar.f3546k = actionView;
        this.f7672d = c0510k;
        if (actionView != null && (parent = actionView.getParent()) != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.f3546k);
            }
            E1 e1H = Toolbar.h();
            e1H.f7676a = (toolbar.f3550p & 112) | 8388611;
            e1H.f7677b = 2;
            toolbar.f3546k.setLayoutParams(e1H);
            toolbar.addView(toolbar.f3546k);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((E1) childAt.getLayoutParams()).f7677b != 2 && childAt != toolbar.f3536c) {
                toolbar.removeViewAt(childCount);
                toolbar.f3519G.add(childAt);
            }
        }
        toolbar.requestLayout();
        c0510k.f7256C = true;
        c0510k.n.p(false);
        KeyEvent.Callback callback = toolbar.f3546k;
        if (callback instanceof InterfaceC0475c) {
            ((InterfaceC0475c) callback).c();
        }
        toolbar.x();
        return true;
    }

    @Override // j.InterfaceC0520u
    public final void f() {
        if (this.f7672d != null) {
            MenuC0508i menuC0508i = this.f7671c;
            if (menuC0508i != null) {
                int size = menuC0508i.f.size();
                for (int i5 = 0; i5 < size; i5++) {
                    if (this.f7671c.getItem(i5) == this.f7672d) {
                        return;
                    }
                }
            }
            g(this.f7672d);
        }
    }

    @Override // j.InterfaceC0520u
    public final boolean g(C0510k c0510k) {
        Toolbar toolbar = this.f7673e;
        KeyEvent.Callback callback = toolbar.f3546k;
        if (callback instanceof InterfaceC0475c) {
            ((InterfaceC0475c) callback).e();
        }
        toolbar.removeView(toolbar.f3546k);
        toolbar.removeView(toolbar.f3545j);
        toolbar.f3546k = null;
        ArrayList arrayList = toolbar.f3519G;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.f7672d = null;
        toolbar.requestLayout();
        c0510k.f7256C = false;
        c0510k.n.p(false);
        toolbar.x();
        return true;
    }

    @Override // j.InterfaceC0520u
    public final boolean h(SubMenuC0499A subMenuC0499A) {
        return false;
    }
}
