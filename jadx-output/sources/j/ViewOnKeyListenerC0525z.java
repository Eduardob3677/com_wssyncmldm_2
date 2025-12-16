package j;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import k.B0;
import k.C0606l0;

/* renamed from: j.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnKeyListenerC0525z implements PopupWindow.OnDismissListener, View.OnKeyListener, InterfaceC0524y, InterfaceC0520u, AdapterView.OnItemClickListener {

    /* renamed from: c, reason: collision with root package name */
    public Rect f7305c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f7306d;

    /* renamed from: e, reason: collision with root package name */
    public final MenuC0508i f7307e;
    public final C0505f f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f7308g;

    /* renamed from: h, reason: collision with root package name */
    public final int f7309h;

    /* renamed from: i, reason: collision with root package name */
    public final int f7310i;

    /* renamed from: j, reason: collision with root package name */
    public final int f7311j;

    /* renamed from: k, reason: collision with root package name */
    public final B0 f7312k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f7313l;

    /* renamed from: o, reason: collision with root package name */
    public final R1.e f7315o;

    /* renamed from: p, reason: collision with root package name */
    public final S1.m f7316p;

    /* renamed from: q, reason: collision with root package name */
    public PopupWindow.OnDismissListener f7317q;

    /* renamed from: r, reason: collision with root package name */
    public View f7318r;

    /* renamed from: s, reason: collision with root package name */
    public View f7319s;

    /* renamed from: t, reason: collision with root package name */
    public InterfaceC0519t f7320t;

    /* renamed from: u, reason: collision with root package name */
    public ViewTreeObserver f7321u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f7322v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f7323w;

    /* renamed from: x, reason: collision with root package name */
    public int f7324x;

    /* renamed from: z, reason: collision with root package name */
    public boolean f7326z;

    /* renamed from: m, reason: collision with root package name */
    public C0606l0 f7314m = null;
    public boolean n = true;

    /* renamed from: y, reason: collision with root package name */
    public int f7325y = 0;

    public ViewOnKeyListenerC0525z(int i5, int i6, Context context, View view, MenuC0508i menuC0508i, boolean z4) throws Resources.NotFoundException {
        int i7 = 0;
        this.f7313l = false;
        int i8 = 1;
        this.f7315o = new R1.e(i8, this);
        this.f7316p = new S1.m(i8, this);
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.popupTheme, typedValue, false);
        if (typedValue.data != 0) {
            this.f7306d = new i.e(context, typedValue.data);
        } else {
            this.f7306d = context;
        }
        this.f7307e = menuC0508i;
        this.f7313l = menuC0508i instanceof SubMenuC0499A;
        this.f7308g = z4;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        int size = menuC0508i.f.size();
        while (true) {
            if (i7 >= size) {
                this.f = new C0505f(menuC0508i, layoutInflaterFrom, this.f7308g, com.wssyncmldm.R.layout.sesl_popup_menu_item_layout);
                break;
            } else {
                if (((C0510k) this.f7307e.getItem(i7)).h()) {
                    this.f = new C0505f(menuC0508i, layoutInflaterFrom, this.f7308g, com.wssyncmldm.R.layout.sesl_popup_sub_menu_item_layout);
                    break;
                }
                i7++;
            }
        }
        this.f7310i = i5;
        this.f7311j = i6;
        this.f7309h = context.getResources().getDisplayMetrics().widthPixels - (this.f7306d.getResources().getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_menu_popup_offset_horizontal) * 2);
        this.f7318r = view;
        B0 b02 = new B0(this.f7306d, null, i5, i6);
        this.f7312k = b02;
        b02.f8027A = this.f7308g;
        menuC0508i.b(this, context);
    }

    public static int i(C0505f c0505f, Context context, int i5) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = c0505f.getCount();
        int i6 = 0;
        int i7 = 0;
        FrameLayout frameLayout = null;
        View view = null;
        for (int i8 = 0; i8 < count; i8++) {
            int itemViewType = c0505f.getItemViewType(i8);
            if (itemViewType != i7) {
                view = null;
                i7 = itemViewType;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(context);
            }
            view = c0505f.getView(i8, view, frameLayout);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i5) {
                return i5;
            }
            if (measuredWidth > i6) {
                i6 = measuredWidth;
            }
        }
        return i6;
    }

    public static boolean k(MenuC0508i menuC0508i) {
        int size = menuC0508i.f.size();
        for (int i5 = 0; i5 < size; i5++) {
            MenuItem item = menuC0508i.getItem(i5);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    @Override // j.InterfaceC0520u
    public final void a(MenuC0508i menuC0508i, boolean z4) {
        if (menuC0508i != this.f7307e) {
            return;
        }
        dismiss();
        InterfaceC0519t interfaceC0519t = this.f7320t;
        if (interfaceC0519t != null) {
            interfaceC0519t.a(menuC0508i, z4);
        }
    }

    @Override // j.InterfaceC0524y
    public final boolean b() {
        return !this.f7322v && this.f7312k.f8050z.isShowing();
    }

    @Override // j.InterfaceC0520u
    public final void c(Context context, MenuC0508i menuC0508i) {
    }

    @Override // j.InterfaceC0520u
    public final boolean d() {
        return false;
    }

    @Override // j.InterfaceC0524y
    public final void dismiss() {
        if (b()) {
            this.f7312k.dismiss();
        }
    }

    @Override // j.InterfaceC0520u
    public final boolean e(C0510k c0510k) {
        return false;
    }

    @Override // j.InterfaceC0520u
    public final void f() {
        this.f7323w = false;
        C0505f c0505f = this.f;
        if (c0505f != null) {
            c0505f.notifyDataSetChanged();
        }
    }

    @Override // j.InterfaceC0520u
    public final boolean g(C0510k c0510k) {
        return false;
    }

    @Override // j.InterfaceC0520u
    public final boolean h(SubMenuC0499A subMenuC0499A) throws Resources.NotFoundException {
        MenuItem item;
        if (subMenuC0499A.hasVisibleItems()) {
            C0518s c0518s = new C0518s(this.f7310i, this.f7311j, this.f7306d, this.f7319s, subMenuC0499A, this.f7308g);
            InterfaceC0519t interfaceC0519t = this.f7320t;
            c0518s.f7299i = interfaceC0519t;
            ViewOnKeyListenerC0525z viewOnKeyListenerC0525z = c0518s.f7300j;
            if (viewOnKeyListenerC0525z != null) {
                viewOnKeyListenerC0525z.f7320t = interfaceC0519t;
            }
            boolean zK = k(subMenuC0499A);
            c0518s.f7298h = zK;
            ViewOnKeyListenerC0525z viewOnKeyListenerC0525z2 = c0518s.f7300j;
            if (viewOnKeyListenerC0525z2 != null) {
                viewOnKeyListenerC0525z2.f.f7224g = zK;
            }
            c0518s.f7301k = this.f7317q;
            View childAt = null;
            this.f7317q = null;
            MenuC0508i menuC0508i = this.f7307e;
            int size = menuC0508i.f.size();
            int i5 = 0;
            while (true) {
                if (i5 >= size) {
                    item = null;
                    break;
                }
                item = menuC0508i.getItem(i5);
                if (item.hasSubMenu() && subMenuC0499A == item.getSubMenu()) {
                    break;
                }
                i5++;
            }
            C0505f c0505f = this.f;
            int count = c0505f.getCount();
            int i6 = 0;
            while (true) {
                if (i6 >= count) {
                    i6 = -1;
                    break;
                }
                if (item == c0505f.getItem(i6)) {
                    break;
                }
                i6++;
            }
            C0606l0 c0606l0 = this.f7314m;
            if (c0606l0 != null) {
                int firstVisiblePosition = i6 - c0606l0.getFirstVisiblePosition();
                if (firstVisiblePosition >= 0) {
                    this.f7314m.getChildCount();
                }
                childAt = this.f7314m.getChildAt(firstVisiblePosition);
            }
            if (childAt != null) {
                childAt.getMeasuredHeight();
            }
            c0518s.f7297g = this.f7325y;
            menuC0508i.c(false);
            if (!c0518s.b()) {
                if (c0518s.f != null) {
                    c0518s.d(true, true);
                }
            }
            InterfaceC0519t interfaceC0519t2 = this.f7320t;
            if (interfaceC0519t2 != null) {
                interfaceC0519t2.b(subMenuC0499A);
            }
            return true;
        }
        return false;
    }

    @Override // j.InterfaceC0524y
    public final C0606l0 j() {
        return this.f7312k.f8031e;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f7322v = true;
        this.f7307e.c(true);
        ViewTreeObserver viewTreeObserver = this.f7321u;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f7321u = this.f7319s.getViewTreeObserver();
            }
            this.f7321u.removeGlobalOnLayoutListener(this.f7315o);
            this.f7321u = null;
        }
        this.f7319s.removeOnAttachStateChangeListener(this.f7316p);
        PopupWindow.OnDismissListener onDismissListener = this.f7317q;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i5, long j3) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        (listAdapter instanceof HeaderViewListAdapter ? (C0505f) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (C0505f) listAdapter).f7221c.q((MenuItem) listAdapter.getItem(i5), this, 0);
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i5, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i5 != 82) {
            return false;
        }
        dismiss();
        return true;
    }
}
