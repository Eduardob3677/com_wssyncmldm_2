package k;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import com.wssyncmldm.R;
import j.ActionProviderVisibilityListenerC0511l;
import j.C0510k;
import j.InterfaceC0519t;
import j.InterfaceC0520u;
import j.InterfaceC0521v;
import j.InterfaceC0522w;
import j.MenuC0508i;
import j.SubMenuC0499A;
import j.ViewOnKeyListenerC0525z;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Locale;

/* renamed from: k.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0602k implements InterfaceC0520u {

    /* renamed from: c, reason: collision with root package name */
    public final Context f7879c;

    /* renamed from: d, reason: collision with root package name */
    public Context f7880d;

    /* renamed from: e, reason: collision with root package name */
    public MenuC0508i f7881e;
    public final LayoutInflater f;

    /* renamed from: g, reason: collision with root package name */
    public InterfaceC0519t f7882g;

    /* renamed from: j, reason: collision with root package name */
    public InterfaceC0522w f7885j;

    /* renamed from: k, reason: collision with root package name */
    public C0596i f7886k;

    /* renamed from: l, reason: collision with root package name */
    public Drawable f7887l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f7888m;
    public boolean n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f7889o;

    /* renamed from: p, reason: collision with root package name */
    public int f7890p;

    /* renamed from: q, reason: collision with root package name */
    public int f7891q;

    /* renamed from: r, reason: collision with root package name */
    public int f7892r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f7893s;

    /* renamed from: u, reason: collision with root package name */
    public C0587f f7895u;

    /* renamed from: v, reason: collision with root package name */
    public C0587f f7896v;

    /* renamed from: w, reason: collision with root package name */
    public G.a f7897w;

    /* renamed from: x, reason: collision with root package name */
    public C0590g f7898x;

    /* renamed from: z, reason: collision with root package name */
    public final boolean f7900z;

    /* renamed from: h, reason: collision with root package name */
    public final int f7883h = R.layout.sesl_action_menu_layout;

    /* renamed from: i, reason: collision with root package name */
    public final int f7884i = R.layout.sesl_action_menu_item_layout;

    /* renamed from: t, reason: collision with root package name */
    public final SparseBooleanArray f7894t = new SparseBooleanArray();

    /* renamed from: y, reason: collision with root package name */
    public final C0555A f7899y = new C0555A(this);

    /* renamed from: A, reason: collision with root package name */
    public final NumberFormat f7878A = NumberFormat.getInstance(Locale.getDefault());

    public C0602k(Context context) {
        this.f7879c = context;
        this.f = LayoutInflater.from(context);
        this.f7900z = context.getResources().getBoolean(R.bool.sesl_action_bar_text_item_mode);
    }

    @Override // j.InterfaceC0520u
    public final void a(MenuC0508i menuC0508i, boolean z4) {
        i();
        C0587f c0587f = this.f7896v;
        if (c0587f != null && c0587f.b()) {
            c0587f.f7300j.dismiss();
        }
        InterfaceC0519t interfaceC0519t = this.f7882g;
        if (interfaceC0519t != null) {
            interfaceC0519t.a(menuC0508i, z4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v4, types: [j.v] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    public final View b(C0510k c0510k, View view, ViewGroup viewGroup) {
        View actionView = c0510k.getActionView();
        if (actionView == null || c0510k.f()) {
            ActionMenuItemView actionMenuItemView = view instanceof InterfaceC0521v ? (InterfaceC0521v) view : (InterfaceC0521v) this.f.inflate(this.f7884i, viewGroup, false);
            actionMenuItemView.d(c0510k);
            ActionMenuItemView actionMenuItemView2 = actionMenuItemView;
            actionMenuItemView2.setItemInvoker((ActionMenuView) this.f7885j);
            if (this.f7898x == null) {
                this.f7898x = new C0590g(this);
            }
            actionMenuItemView2.setPopupCallback(this.f7898x);
            actionView = actionMenuItemView;
        }
        actionView.setVisibility(c0510k.f7256C ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof C0608m)) {
            actionView.setLayoutParams(ActionMenuView.m(layoutParams));
        }
        return actionView;
    }

    @Override // j.InterfaceC0520u
    public final void c(Context context, MenuC0508i menuC0508i) {
        this.f7880d = context;
        LayoutInflater.from(context);
        this.f7881e = menuC0508i;
        Resources resources = context.getResources();
        if (!this.f7889o) {
            this.n = true;
        }
        this.f7890p = (int) (context.getResources().getDisplayMetrics().widthPixels * 0.7f);
        Configuration configuration = context.getResources().getConfiguration();
        int i5 = configuration.screenWidthDp;
        int i6 = configuration.screenHeightDp;
        this.f7892r = (configuration.smallestScreenWidthDp > 600 || i5 > 600 || (i5 > 960 && i6 > 720) || (i5 > 720 && i6 > 960)) ? 5 : (i5 >= 500 || (i5 > 640 && i6 > 480) || (i5 > 480 && i6 > 640)) ? 4 : i5 >= 360 ? 3 : 2;
        int measuredWidth = this.f7890p;
        if (this.n) {
            if (this.f7886k == null) {
                C0596i c0596i = new C0596i(this, this.f7879c);
                this.f7886k = c0596i;
                c0596i.setId(R.id.sesl_action_bar_overflow_button);
                if (this.f7888m) {
                    if (this.f7900z) {
                        ((C0632x) this.f7886k.f7863e).setImageDrawable(this.f7887l);
                    }
                    this.f7887l = null;
                    this.f7888m = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f7886k.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f7886k.getMeasuredWidth();
        } else {
            this.f7886k = null;
        }
        this.f7891q = measuredWidth;
        float f = resources.getDisplayMetrics().density;
    }

    @Override // j.InterfaceC0520u
    public final boolean d() {
        int size;
        ArrayList arrayListL;
        int i5;
        boolean z4;
        MenuC0508i menuC0508i = this.f7881e;
        if (menuC0508i != null) {
            arrayListL = menuC0508i.l();
            size = arrayListL.size();
        } else {
            size = 0;
            arrayListL = null;
        }
        int i6 = this.f7892r;
        int i7 = this.f7891q;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        Object obj = this.f7885j;
        if (obj == null) {
            Log.d("ActionMenuPresenter", "mMenuView is null, maybe Menu has not been initialized.");
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) obj;
        int i8 = 0;
        boolean z5 = false;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            i5 = 2;
            z4 = true;
            if (i8 >= size) {
                break;
            }
            C0510k c0510k = (C0510k) arrayListL.get(i8);
            int i11 = c0510k.f7279y;
            if ((i11 & 2) == 2) {
                i9++;
            } else if ((i11 & 1) == 1) {
                i10++;
            } else {
                z5 = true;
            }
            if (this.f7893s && c0510k.f7256C) {
                i6 = 0;
            }
            i8++;
        }
        if (this.n && (z5 || i10 + i9 > i6)) {
            i6--;
        }
        int i12 = i6 - i9;
        SparseBooleanArray sparseBooleanArray = this.f7894t;
        sparseBooleanArray.clear();
        int i13 = 0;
        int i14 = 0;
        while (i13 < size) {
            C0510k c0510k2 = (C0510k) arrayListL.get(i13);
            int i15 = c0510k2.f7279y;
            boolean z6 = (i15 & 2) == i5 ? z4 : false;
            int i16 = c0510k2.f7258b;
            if (z6) {
                View viewB = b(c0510k2, null, viewGroup);
                viewB.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = viewB.getMeasuredWidth();
                i7 -= measuredWidth;
                if (i14 == 0) {
                    i14 = measuredWidth;
                }
                if (i16 != 0) {
                    sparseBooleanArray.put(i16, z4);
                }
                c0510k2.i(z4);
            } else if ((i15 & 1) == z4) {
                boolean z7 = sparseBooleanArray.get(i16);
                boolean z8 = ((i12 > 0 || z7) && i7 > 0) ? z4 : false;
                if (z8) {
                    View viewB2 = b(c0510k2, null, viewGroup);
                    viewB2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    int measuredWidth2 = viewB2.getMeasuredWidth();
                    i7 -= measuredWidth2;
                    if (i14 == 0) {
                        i14 = measuredWidth2;
                    }
                    z8 &= i7 >= 0;
                }
                if (z8 && i16 != 0) {
                    sparseBooleanArray.put(i16, true);
                } else if (z7) {
                    sparseBooleanArray.put(i16, false);
                    for (int i17 = 0; i17 < i13; i17++) {
                        C0510k c0510k3 = (C0510k) arrayListL.get(i17);
                        if (c0510k3.f7258b == i16) {
                            if (c0510k3.g()) {
                                i12++;
                            }
                            c0510k3.i(false);
                        }
                    }
                }
                if (z8) {
                    i12--;
                }
                c0510k2.i(z8);
            } else {
                c0510k2.i(false);
                i13++;
                i5 = 2;
                z4 = true;
            }
            i13++;
            i5 = 2;
            z4 = true;
        }
        return z4;
    }

    @Override // j.InterfaceC0520u
    public final boolean e(C0510k c0510k) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00bf  */
    @Override // j.InterfaceC0520u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f() {
        boolean z4;
        InterfaceC0522w interfaceC0522w;
        String str;
        int dimension;
        int dimension2;
        int i5;
        ViewGroup viewGroup = (ViewGroup) this.f7885j;
        ArrayList arrayList = null;
        if (viewGroup != null) {
            MenuC0508i menuC0508i = this.f7881e;
            if (menuC0508i != null) {
                menuC0508i.i();
                ArrayList arrayListL = this.f7881e.l();
                int size = arrayListL.size();
                i5 = 0;
                for (int i6 = 0; i6 < size; i6++) {
                    C0510k c0510k = (C0510k) arrayListL.get(i6);
                    if (c0510k.g()) {
                        View childAt = viewGroup.getChildAt(i5);
                        C0510k itemData = childAt instanceof InterfaceC0521v ? ((InterfaceC0521v) childAt).getItemData() : null;
                        View viewB = b(c0510k, childAt, viewGroup);
                        if (c0510k != itemData) {
                            viewB.setPressed(false);
                            viewB.jumpDrawablesToCurrentState();
                        }
                        if (viewB != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) viewB.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(viewB);
                            }
                            ((ViewGroup) this.f7885j).addView(viewB, i5);
                        }
                        i5++;
                    }
                }
            } else {
                i5 = 0;
            }
            while (i5 < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i5) == this.f7886k) {
                    i5++;
                } else {
                    viewGroup.removeViewAt(i5);
                }
            }
        }
        Object obj = this.f7885j;
        if (obj != null) {
            ((View) obj).requestLayout();
        }
        MenuC0508i menuC0508i2 = this.f7881e;
        if (menuC0508i2 != null) {
            menuC0508i2.i();
            ArrayList arrayList2 = menuC0508i2.f7236i;
            int size2 = arrayList2.size();
            for (int i7 = 0; i7 < size2; i7++) {
                ActionProviderVisibilityListenerC0511l actionProviderVisibilityListenerC0511l = ((C0510k) arrayList2.get(i7)).f7254A;
            }
        }
        MenuC0508i menuC0508i3 = this.f7881e;
        if (menuC0508i3 != null) {
            menuC0508i3.i();
            arrayList = menuC0508i3.f7237j;
        }
        if (!this.n || arrayList == null) {
            z4 = false;
        } else {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z4 = !((C0510k) arrayList.get(0)).f7256C;
            } else if (size3 > 0) {
                z4 = true;
            }
        }
        if (z4) {
            if (this.f7886k == null) {
                C0596i c0596i = new C0596i(this, this.f7879c);
                this.f7886k = c0596i;
                c0596i.setId(R.id.sesl_action_bar_overflow_button);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f7886k.getParent();
            if (viewGroup3 != this.f7885j) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.f7886k);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f7885j;
                if (actionMenuView != null) {
                    C0596i c0596i2 = this.f7886k;
                    C0608m c0608mL = ActionMenuView.l();
                    c0608mL.f7929a = true;
                    actionMenuView.addView(c0596i2, c0608mL);
                }
            }
        } else {
            C0596i c0596i3 = this.f7886k;
            if (c0596i3 != null) {
                Object parent = c0596i3.getParent();
                Object obj2 = this.f7885j;
                if (parent == obj2) {
                    if (obj2 != null) {
                        ((ViewGroup) obj2).removeView(this.f7886k);
                    }
                    if (j()) {
                        i();
                    }
                }
            }
        }
        if (this.f7886k != null && (interfaceC0522w = this.f7885j) != null) {
            ActionMenuView actionMenuView2 = (ActionMenuView) interfaceC0522w;
            String overflowBadgeText = actionMenuView2.getOverflowBadgeText();
            C0596i c0596i4 = this.f7886k;
            int sumOfDigitsInBadges = actionMenuView2.getSumOfDigitsInBadges();
            c0596i4.getClass();
            if (sumOfDigitsInBadges > 99) {
                sumOfDigitsInBadges = 99;
            }
            ViewGroup viewGroup4 = c0596i4.f7861c;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewGroup4.getLayoutParams();
            if (overflowBadgeText != null) {
                dimension = (int) c0596i4.getResources().getDimension(R.dimen.sesl_menu_item_badge_size);
                dimension2 = (int) c0596i4.getResources().getDimension(R.dimen.sesl_menu_item_badge_size);
                str = "";
            } else {
                str = c0596i4.f7865h.f7878A.format(sumOfDigitsInBadges);
                dimension = (int) ((c0596i4.getResources().getDimension(R.dimen.sesl_badge_additional_width) * str.length()) + c0596i4.getResources().getDimension(R.dimen.sesl_badge_default_width));
                dimension2 = (int) (c0596i4.getResources().getDimension(R.dimen.sesl_badge_additional_width) + c0596i4.getResources().getDimension(R.dimen.sesl_badge_default_width));
                marginLayoutParams.topMargin = (int) c0596i4.getResources().getDimension(R.dimen.sesl_menu_item_number_badge_top_margin);
                marginLayoutParams.setMarginEnd((int) c0596i4.getResources().getDimension(R.dimen.sesl_menu_item_number_badge_end_margin));
            }
            c0596i4.f7862d.setText(str);
            marginLayoutParams.width = dimension;
            marginLayoutParams.height = dimension2;
            viewGroup4.setLayoutParams(marginLayoutParams);
            viewGroup4.setVisibility(sumOfDigitsInBadges <= 0 ? 8 : 0);
            int visibility = viewGroup4.getVisibility();
            View view = c0596i4.f7863e;
            if (visibility == 0) {
                if (view instanceof C0593h) {
                    view.setContentDescription(c0596i4.f7864g);
                }
            } else if (view instanceof C0593h) {
                view.setContentDescription(c0596i4.f);
            }
        }
        C0596i c0596i5 = this.f7886k;
        if ((c0596i5 == null || c0596i5.getVisibility() != 0) && j()) {
            i();
        }
        InterfaceC0522w interfaceC0522w2 = this.f7885j;
        if (interfaceC0522w2 != null) {
            ((ActionMenuView) interfaceC0522w2).setOverflowReserved(this.n);
        }
    }

    @Override // j.InterfaceC0520u
    public final boolean g(C0510k c0510k) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j.InterfaceC0520u
    public final boolean h(SubMenuC0499A subMenuC0499A) throws Resources.NotFoundException {
        boolean z4;
        if (subMenuC0499A == null || !subMenuC0499A.hasVisibleItems()) {
            return false;
        }
        SubMenuC0499A subMenuC0499A2 = subMenuC0499A;
        while (true) {
            MenuC0508i menuC0508i = subMenuC0499A2.f7198z;
            if (menuC0508i == this.f7881e) {
                break;
            }
            subMenuC0499A2 = (SubMenuC0499A) menuC0508i;
        }
        ViewGroup viewGroup = (ViewGroup) this.f7885j;
        View view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i5 = 0;
            while (true) {
                if (i5 >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i5);
                if ((childAt instanceof InterfaceC0521v) && ((InterfaceC0521v) childAt).getItemData() == subMenuC0499A2.f7197A) {
                    view = childAt;
                    break;
                }
                i5++;
            }
        }
        if (view == null) {
            return false;
        }
        subMenuC0499A.f7197A.getClass();
        int size = subMenuC0499A.f.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                z4 = false;
                break;
            }
            MenuItem item = subMenuC0499A.getItem(i6);
            if (item.isVisible() && item.getIcon() != null) {
                z4 = true;
                break;
            }
            i6++;
        }
        C0587f c0587f = new C0587f(this, this.f7880d, subMenuC0499A, view);
        this.f7896v = c0587f;
        c0587f.f7298h = z4;
        ViewOnKeyListenerC0525z viewOnKeyListenerC0525z = c0587f.f7300j;
        if (viewOnKeyListenerC0525z != null) {
            viewOnKeyListenerC0525z.f.f7224g = z4;
        }
        if (!c0587f.b()) {
            if (c0587f.f == null) {
                throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
            }
            c0587f.d(false, false);
        }
        InterfaceC0519t interfaceC0519t = this.f7882g;
        if (interfaceC0519t != null) {
            interfaceC0519t.b(subMenuC0499A);
        }
        return true;
    }

    public final boolean i() {
        Object obj;
        G.a aVar = this.f7897w;
        if (aVar != null && (obj = this.f7885j) != null) {
            ((View) obj).removeCallbacks(aVar);
            this.f7897w = null;
            return true;
        }
        C0587f c0587f = this.f7895u;
        if (c0587f == null) {
            return false;
        }
        if (c0587f.b()) {
            c0587f.f7300j.dismiss();
        }
        return true;
    }

    public final boolean j() {
        C0587f c0587f = this.f7895u;
        return c0587f != null && c0587f.b();
    }

    public final void k() {
        C0596i c0596i;
        Configuration configuration = this.f7880d.getResources().getConfiguration();
        int i5 = configuration.screenWidthDp;
        int i6 = configuration.screenHeightDp;
        this.f7892r = (configuration.smallestScreenWidthDp > 600 || i5 > 600 || (i5 > 960 && i6 > 720) || (i5 > 720 && i6 > 960)) ? 5 : (i5 >= 500 || (i5 > 640 && i6 > 480) || (i5 > 480 && i6 > 640)) ? 4 : i5 >= 360 ? 3 : 2;
        int i7 = (int) (r0.getResources().getDisplayMetrics().widthPixels * 0.7f);
        this.f7890p = i7;
        if (!this.n || (c0596i = this.f7886k) == null) {
            this.f7891q = i7;
        } else {
            this.f7891q = i7 - c0596i.getMeasuredWidth();
        }
        MenuC0508i menuC0508i = this.f7881e;
        if (menuC0508i != null) {
            menuC0508i.p(true);
        }
    }

    public final boolean l() {
        MenuC0508i menuC0508i;
        if (!this.n || j() || (menuC0508i = this.f7881e) == null || this.f7885j == null || this.f7897w != null) {
            return false;
        }
        menuC0508i.i();
        if (menuC0508i.f7237j.isEmpty()) {
            return false;
        }
        G.a aVar = new G.a(this, new C0587f(this, this.f7880d, this.f7881e, this.f7886k), 8, false);
        this.f7897w = aVar;
        ((View) this.f7885j).post(aVar);
        return true;
    }
}
