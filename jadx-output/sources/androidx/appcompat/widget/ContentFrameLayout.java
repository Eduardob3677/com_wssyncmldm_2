package androidx.appcompat.widget;

import J.a0;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import com.wssyncmldm.R;
import e.C;
import e.t;
import j.MenuC0508i;
import k.C0587f;
import k.C0602k;
import k.I1;
import k.InterfaceC0579c0;
import k.InterfaceC0582d0;

/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public TypedValue f3363c;

    /* renamed from: d, reason: collision with root package name */
    public TypedValue f3364d;

    /* renamed from: e, reason: collision with root package name */
    public TypedValue f3365e;
    public TypedValue f;

    /* renamed from: g, reason: collision with root package name */
    public TypedValue f3366g;

    /* renamed from: h, reason: collision with root package name */
    public TypedValue f3367h;

    /* renamed from: i, reason: collision with root package name */
    public final Rect f3368i;

    /* renamed from: j, reason: collision with root package name */
    public InterfaceC0579c0 f3369j;

    /* renamed from: k, reason: collision with root package name */
    public float f3370k;

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f3368i = new Rect();
        a();
    }

    public final void a() {
        this.f3370k = TypedValue.applyDimension(1, r0.getConfiguration().screenWidthDp, getResources().getDisplayMetrics());
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f3366g == null) {
            this.f3366g = new TypedValue();
        }
        return this.f3366g;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f3367h == null) {
            this.f3367h = new TypedValue();
        }
        return this.f3367h;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f3365e == null) {
            this.f3365e = new TypedValue();
        }
        return this.f3365e;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f == null) {
            this.f = new TypedValue();
        }
        return this.f;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f3363c == null) {
            this.f3363c = new TypedValue();
        }
        return this.f3363c;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f3364d == null) {
            this.f3364d = new TypedValue();
        }
        return this.f3364d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        InterfaceC0579c0 interfaceC0579c0 = this.f3369j;
        if (interfaceC0579c0 != null) {
            interfaceC0579c0.getClass();
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f3364d == null) {
            this.f3364d = new TypedValue();
        }
        getContext().getTheme().resolveAttribute(R.attr.windowMinWidthMinor, this.f3364d, true);
        if (this.f3363c == null) {
            this.f3363c = new TypedValue();
        }
        getContext().getTheme().resolveAttribute(R.attr.windowMinWidthMajor, this.f3363c, true);
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        C0602k c0602k;
        super.onDetachedFromWindow();
        InterfaceC0579c0 interfaceC0579c0 = this.f3369j;
        if (interfaceC0579c0 != null) {
            C c2 = ((t) interfaceC0579c0).f6789d;
            InterfaceC0582d0 interfaceC0582d0 = c2.f6639r;
            if (interfaceC0582d0 != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0582d0;
                actionBarOverlayLayout.k();
                ActionMenuView actionMenuView = ((I1) actionBarOverlayLayout.f3302g).f7694a.f3536c;
                if (actionMenuView != null && (c0602k = actionMenuView.f3335v) != null) {
                    c0602k.i();
                    C0587f c0587f = c0602k.f7896v;
                    if (c0587f != null && c0587f.b()) {
                        c0587f.f7300j.dismiss();
                    }
                }
            }
            if (c2.f6644w != null) {
                c2.f6634l.getDecorView().removeCallbacks(c2.f6645x);
                if (c2.f6644w.isShowing()) {
                    try {
                        c2.f6644w.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                c2.f6644w = null;
            }
            a0 a0Var = c2.f6646y;
            if (a0Var != null) {
                a0Var.b();
            }
            MenuC0508i menuC0508i = c2.A(0).f6592h;
            if (menuC0508i != null) {
                menuC0508i.c(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00dc  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i5, int i6) {
        int iMakeMeasureSpec;
        boolean z4;
        int iMakeMeasureSpec2;
        int i7;
        float fraction;
        int i8;
        int i9;
        float fraction2;
        int i10;
        int i11;
        float fraction3;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z5 = true;
        int i12 = 0;
        boolean z6 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i5);
        int mode2 = View.MeasureSpec.getMode(i6);
        Rect rect = this.f3368i;
        if (mode != Integer.MIN_VALUE) {
            iMakeMeasureSpec = i5;
            z4 = false;
        } else {
            TypedValue typedValue = z6 ? this.f : this.f3365e;
            if (typedValue != null && (i10 = typedValue.type) != 0) {
                if (i10 == 5) {
                    fraction3 = typedValue.getDimension(displayMetrics);
                } else if (i10 == 6) {
                    int i13 = displayMetrics.widthPixels;
                    fraction3 = typedValue.getFraction(i13, i13);
                } else {
                    i11 = 0;
                    if (i11 <= 0) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(i11 - (rect.left + rect.right), View.MeasureSpec.getSize(i5)), 1073741824);
                        z4 = true;
                    }
                }
                i11 = (int) fraction3;
                if (i11 <= 0) {
                }
            }
        }
        if (mode2 != Integer.MIN_VALUE) {
            iMakeMeasureSpec2 = i6;
        } else {
            TypedValue typedValue2 = z6 ? this.f3366g : this.f3367h;
            if (typedValue2 != null && (i8 = typedValue2.type) != 0) {
                if (i8 == 5) {
                    fraction2 = typedValue2.getDimension(displayMetrics);
                } else if (i8 == 6) {
                    int i14 = displayMetrics.heightPixels;
                    fraction2 = typedValue2.getFraction(i14, i14);
                } else {
                    i9 = 0;
                    if (i9 <= 0) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.min(i9 - (rect.top + rect.bottom), View.MeasureSpec.getSize(i6)), 1073741824);
                    }
                }
                i9 = (int) fraction2;
                if (i9 <= 0) {
                }
            }
        }
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        if (z4 || mode != Integer.MIN_VALUE) {
            z5 = false;
        } else {
            TypedValue typedValue3 = z6 ? this.f3364d : this.f3363c;
            if (typedValue3 != null && (i7 = typedValue3.type) != 0) {
                if (i7 == 5) {
                    fraction = typedValue3.getDimension(displayMetrics);
                } else {
                    if (i7 == 6) {
                        a();
                        float f = this.f3370k;
                        fraction = typedValue3.getFraction(f, f);
                    }
                    if (i12 > 0) {
                        i12 -= rect.left + rect.right;
                    }
                    iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
                }
                i12 = (int) fraction;
                if (i12 > 0) {
                }
                iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
            }
        }
        if (z5) {
            super.onMeasure(iMakeMeasureSpec3, iMakeMeasureSpec2);
        }
    }

    public void setAttachListener(InterfaceC0579c0 interfaceC0579c0) {
        this.f3369j = interfaceC0579c0;
    }
}
