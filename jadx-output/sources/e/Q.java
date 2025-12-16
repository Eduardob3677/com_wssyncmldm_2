package e;

import J.Z;
import J.a0;
import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import c.AbstractC0206a;
import i.AbstractC0474b;
import i.InterfaceC0473a;
import j.C0510k;
import j.MenuC0508i;
import java.util.ArrayList;
import java.util.WeakHashMap;
import k.D1;
import k.I1;
import k.InterfaceC0581d;
import k.InterfaceC0585e0;

/* loaded from: classes.dex */
public final class Q extends AbstractC0397a implements InterfaceC0581d {

    /* renamed from: y, reason: collision with root package name */
    public static final AccelerateInterpolator f6682y = new AccelerateInterpolator();

    /* renamed from: z, reason: collision with root package name */
    public static final DecelerateInterpolator f6683z = new DecelerateInterpolator();

    /* renamed from: a, reason: collision with root package name */
    public Context f6684a;

    /* renamed from: b, reason: collision with root package name */
    public Context f6685b;

    /* renamed from: c, reason: collision with root package name */
    public ActionBarOverlayLayout f6686c;

    /* renamed from: d, reason: collision with root package name */
    public ActionBarContainer f6687d;

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC0585e0 f6688e;
    public ActionBarContextView f;

    /* renamed from: g, reason: collision with root package name */
    public final View f6689g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f6690h;

    /* renamed from: i, reason: collision with root package name */
    public P f6691i;

    /* renamed from: j, reason: collision with root package name */
    public P f6692j;

    /* renamed from: k, reason: collision with root package name */
    public InterfaceC0473a f6693k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f6694l;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f6695m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f6696o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f6697p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f6698q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f6699r;

    /* renamed from: s, reason: collision with root package name */
    public i.l f6700s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f6701t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f6702u;

    /* renamed from: v, reason: collision with root package name */
    public final O f6703v;

    /* renamed from: w, reason: collision with root package name */
    public final O f6704w;

    /* renamed from: x, reason: collision with root package name */
    public final c1.w f6705x;

    public Q(Activity activity, boolean z4) {
        new ArrayList();
        this.f6695m = new ArrayList();
        this.n = 0;
        this.f6696o = true;
        this.f6699r = true;
        this.f6703v = new O(this, 0);
        this.f6704w = new O(this, 1);
        this.f6705x = new c1.w(this);
        View decorView = activity.getWindow().getDecorView();
        s(decorView);
        if (z4) {
            return;
        }
        this.f6689g = decorView.findViewById(R.id.content);
    }

    @Override // e.AbstractC0397a
    public final boolean b() {
        D1 d12;
        InterfaceC0585e0 interfaceC0585e0 = this.f6688e;
        if (interfaceC0585e0 == null || (d12 = ((I1) interfaceC0585e0).f7694a.f3527O) == null || d12.f7672d == null) {
            return false;
        }
        D1 d13 = ((I1) interfaceC0585e0).f7694a.f3527O;
        C0510k c0510k = d13 == null ? null : d13.f7672d;
        if (c0510k == null) {
            return true;
        }
        c0510k.collapseActionView();
        return true;
    }

    @Override // e.AbstractC0397a
    public final void c(boolean z4) {
        if (z4 == this.f6694l) {
            return;
        }
        this.f6694l = z4;
        ArrayList arrayList = this.f6695m;
        if (arrayList.size() <= 0) {
            return;
        }
        B.f.F(arrayList.get(0));
        throw null;
    }

    @Override // e.AbstractC0397a
    public final int d() {
        return ((I1) this.f6688e).f7695b;
    }

    @Override // e.AbstractC0397a
    public final Context e() {
        if (this.f6685b == null) {
            TypedValue typedValue = new TypedValue();
            this.f6684a.getTheme().resolveAttribute(com.wssyncmldm.R.attr.actionBarWidgetTheme, typedValue, true);
            int i5 = typedValue.resourceId;
            if (i5 != 0) {
                this.f6685b = new ContextThemeWrapper(this.f6684a, i5);
            } else {
                this.f6685b = this.f6684a;
            }
        }
        return this.f6685b;
    }

    @Override // e.AbstractC0397a
    public final void g() {
        t();
    }

    @Override // e.AbstractC0397a
    public final boolean i(int i5, KeyEvent keyEvent) {
        MenuC0508i menuC0508i;
        P p4 = this.f6691i;
        if (p4 == null || (menuC0508i = p4.f) == null) {
            return false;
        }
        menuC0508i.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuC0508i.performShortcut(i5, keyEvent, 0);
    }

    @Override // e.AbstractC0397a
    public final void l(boolean z4) {
        if (this.f6690h) {
            return;
        }
        m(z4);
    }

    @Override // e.AbstractC0397a
    public final void m(boolean z4) {
        int i5 = z4 ? 4 : 0;
        I1 i12 = (I1) this.f6688e;
        int i6 = i12.f7695b;
        this.f6690h = true;
        i12.a((i5 & 4) | (i6 & (-5)));
    }

    @Override // e.AbstractC0397a
    public final void n(boolean z4) {
        i.l lVar;
        this.f6701t = z4;
        if (z4 || (lVar = this.f6700s) == null) {
            return;
        }
        lVar.a();
    }

    @Override // e.AbstractC0397a
    public final void o(int i5) {
        String string = this.f6684a.getString(i5);
        I1 i12 = (I1) this.f6688e;
        i12.f7699g = true;
        i12.f7700h = string;
        if ((i12.f7695b & 8) != 0) {
            Toolbar toolbar = i12.f7694a;
            toolbar.setTitle(string);
            if (i12.f7699g) {
                J.Q.i(toolbar.getRootView(), string);
            }
        }
    }

    @Override // e.AbstractC0397a
    public final void p(CharSequence charSequence) {
        I1 i12 = (I1) this.f6688e;
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

    @Override // e.AbstractC0397a
    public final AbstractC0474b q(v vVar) {
        P p4 = this.f6691i;
        if (p4 != null) {
            p4.a();
        }
        this.f6686c.setHideOnContentScrollEnabled(false);
        this.f.e();
        P p5 = new P(this, this.f.getContext(), vVar);
        MenuC0508i menuC0508i = p5.f;
        menuC0508i.w();
        try {
            if (!p5.f6679g.f(p5, menuC0508i)) {
                return null;
            }
            this.f6691i = p5;
            p5.i();
            this.f.c(p5);
            r(true);
            return p5;
        } finally {
            menuC0508i.v();
        }
    }

    public final void r(boolean z4) {
        a0 a0VarJ;
        a0 a0VarJ2;
        if (z4) {
            if (!this.f6698q) {
                this.f6698q = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f6686c;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                u(false);
            }
        } else if (this.f6698q) {
            this.f6698q = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f6686c;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            u(false);
        }
        ActionBarContainer actionBarContainer = this.f6687d;
        WeakHashMap weakHashMap = J.Q.f940a;
        if (!actionBarContainer.isLaidOut()) {
            if (z4) {
                ((I1) this.f6688e).f7694a.setVisibility(4);
                this.f.setVisibility(0);
                return;
            } else {
                ((I1) this.f6688e).f7694a.setVisibility(0);
                this.f.setVisibility(8);
                return;
            }
        }
        if (z4) {
            I1 i12 = (I1) this.f6688e;
            a0VarJ = J.Q.a(i12.f7694a);
            a0VarJ.a(0.0f);
            a0VarJ.c(100L);
            a0VarJ.d(new i.k(i12, 4));
            a0VarJ2 = this.f.j(0, 200L);
        } else {
            I1 i13 = (I1) this.f6688e;
            a0 a0VarA = J.Q.a(i13.f7694a);
            a0VarA.a(1.0f);
            a0VarA.c(200L);
            a0VarA.d(new i.k(i13, 0));
            a0VarJ = this.f.j(8, 100L);
            a0VarJ2 = a0VarA;
        }
        i.l lVar = new i.l();
        ArrayList arrayList = lVar.f7138a;
        arrayList.add(a0VarJ);
        View view = (View) a0VarJ.f954a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) a0VarJ2.f954a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        arrayList.add(a0VarJ2);
        lVar.b();
    }

    public final void s(View view) {
        InterfaceC0585e0 wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(com.wssyncmldm.R.id.decor_content_parent);
        this.f6686c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback callbackFindViewById = view.findViewById(com.wssyncmldm.R.id.action_bar);
        if (callbackFindViewById instanceof InterfaceC0585e0) {
            wrapper = (InterfaceC0585e0) callbackFindViewById;
        } else {
            if (!(callbackFindViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById != null ? callbackFindViewById.getClass().getSimpleName() : "null"));
            }
            wrapper = ((Toolbar) callbackFindViewById).getWrapper();
        }
        this.f6688e = wrapper;
        this.f = (ActionBarContextView) view.findViewById(com.wssyncmldm.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(com.wssyncmldm.R.id.action_bar_container);
        this.f6687d = actionBarContainer;
        InterfaceC0585e0 interfaceC0585e0 = this.f6688e;
        if (interfaceC0585e0 == null || this.f == null || actionBarContainer == null) {
            throw new IllegalStateException(Q.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        this.f6684a = ((I1) interfaceC0585e0).f7694a.getContext();
        InterfaceC0585e0 interfaceC0585e02 = this.f6688e;
        if ((((I1) interfaceC0585e02).f7695b & 4) != 0) {
            this.f6690h = true;
        }
        interfaceC0585e02.getClass();
        t();
        TypedArray typedArrayObtainStyledAttributes = this.f6684a.obtainStyledAttributes(null, AbstractC0206a.f5161a, com.wssyncmldm.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f6686c;
            if (!actionBarOverlayLayout2.f3305j) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.f6702u = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.f6687d;
            WeakHashMap weakHashMap = J.Q.f940a;
            J.I.s(actionBarContainer2, dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void t() {
        ((I1) this.f6688e).getClass();
        this.f6687d.setTabContainer(null);
        this.f6688e.getClass();
        ((I1) this.f6688e).f7694a.setCollapsible(false);
        this.f6686c.setHasNonEmbeddedTabs(false);
    }

    public final void u(boolean z4) {
        boolean z5 = this.f6698q || !this.f6697p;
        View view = this.f6689g;
        c1.w wVar = this.f6705x;
        if (!z5) {
            if (this.f6699r) {
                this.f6699r = false;
                i.l lVar = this.f6700s;
                if (lVar != null) {
                    lVar.a();
                }
                int i5 = this.n;
                O o2 = this.f6703v;
                if (i5 != 0 || (!this.f6701t && !z4)) {
                    o2.c();
                    return;
                }
                this.f6687d.setAlpha(1.0f);
                this.f6687d.setTransitioning(true);
                i.l lVar2 = new i.l();
                float f = -this.f6687d.getHeight();
                if (z4) {
                    this.f6687d.getLocationInWindow(new int[]{0, 0});
                    f -= r12[1];
                }
                a0 a0VarA = J.Q.a(this.f6687d);
                a0VarA.e(f);
                View view2 = (View) a0VarA.f954a.get();
                if (view2 != null) {
                    view2.animate().setUpdateListener(wVar != null ? new Z(wVar, view2) : null);
                }
                boolean z6 = lVar2.f7142e;
                ArrayList arrayList = lVar2.f7138a;
                if (!z6) {
                    arrayList.add(a0VarA);
                }
                if (this.f6696o && view != null) {
                    a0 a0VarA2 = J.Q.a(view);
                    a0VarA2.e(f);
                    if (!lVar2.f7142e) {
                        arrayList.add(a0VarA2);
                    }
                }
                AccelerateInterpolator accelerateInterpolator = f6682y;
                boolean z7 = lVar2.f7142e;
                if (!z7) {
                    lVar2.f7140c = accelerateInterpolator;
                }
                if (!z7) {
                    lVar2.f7139b = 250L;
                }
                if (!z7) {
                    lVar2.f7141d = o2;
                }
                this.f6700s = lVar2;
                lVar2.b();
                return;
            }
            return;
        }
        if (this.f6699r) {
            return;
        }
        this.f6699r = true;
        i.l lVar3 = this.f6700s;
        if (lVar3 != null) {
            lVar3.a();
        }
        this.f6687d.setVisibility(0);
        int i6 = this.n;
        O o5 = this.f6704w;
        if (i6 == 0 && (this.f6701t || z4)) {
            this.f6687d.setTranslationY(0.0f);
            float f5 = -this.f6687d.getHeight();
            if (z4) {
                this.f6687d.getLocationInWindow(new int[]{0, 0});
                f5 -= r12[1];
            }
            this.f6687d.setTranslationY(f5);
            i.l lVar4 = new i.l();
            a0 a0VarA3 = J.Q.a(this.f6687d);
            a0VarA3.e(0.0f);
            View view3 = (View) a0VarA3.f954a.get();
            if (view3 != null) {
                view3.animate().setUpdateListener(wVar != null ? new Z(wVar, view3) : null);
            }
            boolean z8 = lVar4.f7142e;
            ArrayList arrayList2 = lVar4.f7138a;
            if (!z8) {
                arrayList2.add(a0VarA3);
            }
            if (this.f6696o && view != null) {
                view.setTranslationY(f5);
                a0 a0VarA4 = J.Q.a(view);
                a0VarA4.e(0.0f);
                if (!lVar4.f7142e) {
                    arrayList2.add(a0VarA4);
                }
            }
            DecelerateInterpolator decelerateInterpolator = f6683z;
            boolean z9 = lVar4.f7142e;
            if (!z9) {
                lVar4.f7140c = decelerateInterpolator;
            }
            if (!z9) {
                lVar4.f7139b = 250L;
            }
            if (!z9) {
                lVar4.f7141d = o5;
            }
            this.f6700s = lVar4;
            lVar4.b();
        } else {
            this.f6687d.setAlpha(1.0f);
            this.f6687d.setTranslationY(0.0f);
            if (this.f6696o && view != null) {
                view.setTranslationY(0.0f);
            }
            o5.c();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f6686c;
        if (actionBarOverlayLayout != null) {
            WeakHashMap weakHashMap = J.Q.f940a;
            J.G.c(actionBarOverlayLayout);
        }
    }

    public Q(Dialog dialog) {
        new ArrayList();
        this.f6695m = new ArrayList();
        this.n = 0;
        this.f6696o = true;
        this.f6699r = true;
        this.f6703v = new O(this, 0);
        this.f6704w = new O(this, 1);
        this.f6705x = new c1.w(this);
        s(dialog.getWindow().getDecorView());
    }
}
