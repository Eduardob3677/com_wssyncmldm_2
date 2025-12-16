package com.google.android.material.carousel;

import D1.c;
import D1.d;
import D1.e;
import D1.f;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.CarouselLayoutManager;
import j0.J;
import j0.K;
import j0.P;
import j0.W;
import j0.X;
import java.util.List;
import v1.a;

/* loaded from: classes.dex */
public class CarouselLayoutManager extends J implements W {

    /* renamed from: p, reason: collision with root package name */
    public e f5915p;

    /* renamed from: q, reason: collision with root package name */
    public final View.OnLayoutChangeListener f5916q;

    public CarouselLayoutManager() {
        new P1.e(2);
        new d();
        this.f5916q = new View.OnLayoutChangeListener() { // from class: D1.a
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
                CarouselLayoutManager carouselLayoutManager = this.f454a;
                carouselLayoutManager.getClass();
                if (i5 == i9 && i6 == i10 && i7 == i11 && i8 == i12) {
                    return;
                }
                view.post(new b(0, carouselLayoutManager));
            }
        };
        n0();
        H0(0);
    }

    public static e4.d E0(List list, float f, boolean z4) {
        float f5 = Float.MAX_VALUE;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        float f6 = -3.4028235E38f;
        float f7 = Float.MAX_VALUE;
        float f8 = Float.MAX_VALUE;
        for (int i9 = 0; i9 < list.size(); i9++) {
            ((f) list.get(i9)).getClass();
            float fAbs = Math.abs(0.0f - f);
            if (0.0f <= f && fAbs <= f5) {
                i5 = i9;
                f5 = fAbs;
            }
            if (0.0f > f && fAbs <= f7) {
                i7 = i9;
                f7 = fAbs;
            }
            if (0.0f <= f8) {
                f8 = 0.0f;
                i6 = i9;
            }
            if (0.0f > f6) {
                f6 = 0.0f;
                i8 = i9;
            }
        }
        if (i5 == -1) {
            i5 = i6;
        }
        if (i7 == -1) {
            i7 = i8;
        }
        return new e4.d((f) list.get(i5), (f) list.get(i7));
    }

    public final float C0(int i5) {
        this.f5915p.d();
        throw null;
    }

    public final int D0() {
        return F0() ? this.n : this.f7351o;
    }

    public final boolean F0() {
        return this.f5915p.f461a == 0;
    }

    public final boolean G0() {
        return F0() && A() == 1;
    }

    public final void H0(int i5) {
        e eVar;
        if (i5 != 0 && i5 != 1) {
            throw new IllegalArgumentException(B.f.t(i5, "invalid orientation:"));
        }
        c(null);
        e eVar2 = this.f5915p;
        if (eVar2 == null || i5 != eVar2.f461a) {
            if (i5 == 0) {
                eVar = new e(this, 1);
            } else {
                if (i5 != 1) {
                    throw new IllegalArgumentException("invalid orientation");
                }
                eVar = new e(this, 0);
            }
            this.f5915p = eVar;
            n0();
        }
    }

    @Override // j0.J
    public final void P(RecyclerView recyclerView) {
        h0();
        recyclerView.addOnLayoutChangeListener(this.f5916q);
    }

    @Override // j0.J
    public final void Q(RecyclerView recyclerView) {
        recyclerView.removeOnLayoutChangeListener(this.f5916q);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0053  */
    @Override // j0.J
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View R(View view, int i5, P p4, X x4) {
        char c2;
        if (v() == 0) {
            return null;
        }
        int i6 = this.f5915p.f461a;
        if (i5 == 1) {
            c2 = 65535;
        } else if (i5 == 2) {
            c2 = 1;
        } else if (i5 == 17) {
            if (i6 == 0) {
                if (G0()) {
                }
            }
            c2 = 0;
        } else if (i5 != 33) {
            if (i5 != 66) {
                if (i5 != 130) {
                    Log.d("CarouselLayoutManager", "Unknown focus request:" + i5);
                } else if (i6 == 1) {
                }
                c2 = 0;
            } else {
                if (i6 == 0) {
                    if (G0()) {
                    }
                }
                c2 = 0;
            }
        } else if (i6 != 1) {
            c2 = 0;
        }
        if (c2 == 0) {
            return null;
        }
        if (c2 == 65535) {
            if (J.F(view) == 0) {
                return null;
            }
            int iF = J.F(u(0)) - 1;
            if (iF < 0 || iF >= z()) {
                return u(G0() ? v() - 1 : 0);
            }
            C0(iF);
            View view2 = p4.k(iF, Long.MAX_VALUE).f7406a;
            throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
        }
        if (J.F(view) == z() - 1) {
            return null;
        }
        int iF2 = J.F(u(v() - 1)) + 1;
        if (iF2 < 0 || iF2 >= z()) {
            return u(G0() ? 0 : v() - 1);
        }
        C0(iF2);
        View view3 = p4.k(iF2, Long.MAX_VALUE).f7406a;
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // j0.J
    public final void S(AccessibilityEvent accessibilityEvent) {
        super.S(accessibilityEvent);
        if (v() > 0) {
            accessibilityEvent.setFromIndex(J.F(u(0)));
            accessibilityEvent.setToIndex(J.F(u(v() - 1)));
        }
    }

    @Override // j0.J
    public final void W(int i5, int i6) {
        z();
    }

    @Override // j0.J
    public final void Z(int i5, int i6) {
        z();
    }

    @Override // j0.W
    public final PointF a(int i5) {
        return null;
    }

    @Override // j0.J
    public final void b0(P p4, X x4) {
        if (x4.b() <= 0 || D0() <= 0.0f) {
            i0(p4);
        } else {
            G0();
            View view = p4.k(0, Long.MAX_VALUE).f7406a;
            throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
        }
    }

    @Override // j0.J
    public final void c0(X x4) {
        if (v() == 0) {
            return;
        }
        J.F(u(0));
    }

    @Override // j0.J
    public final boolean d() {
        return F0();
    }

    @Override // j0.J
    public final boolean e() {
        return !F0();
    }

    @Override // j0.J
    public final int j(X x4) {
        v();
        return 0;
    }

    @Override // j0.J
    public final int k(X x4) {
        return 0;
    }

    @Override // j0.J
    public final int l(X x4) {
        return 0;
    }

    @Override // j0.J
    public final int m(X x4) {
        v();
        return 0;
    }

    @Override // j0.J
    public final boolean m0(RecyclerView recyclerView, View view, Rect rect, boolean z4, boolean z5) {
        return false;
    }

    @Override // j0.J
    public final int n(X x4) {
        return 0;
    }

    @Override // j0.J
    public final int o(X x4) {
        return 0;
    }

    @Override // j0.J
    public final int o0(int i5, P p4, X x4) {
        if (!F0() || v() == 0 || i5 == 0) {
            return 0;
        }
        View view = p4.k(0, Long.MAX_VALUE).f7406a;
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // j0.J
    public final void p0(int i5) {
    }

    @Override // j0.J
    public final int q0(int i5, P p4, X x4) {
        if (!e() || v() == 0 || i5 == 0) {
            return 0;
        }
        View view = p4.k(0, Long.MAX_VALUE).f7406a;
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // j0.J
    public final K r() {
        return new K(-2, -2);
    }

    @Override // j0.J
    public final void y(Rect rect, View view) {
        RecyclerView.W(rect, view);
        rect.centerY();
        if (F0()) {
            rect.centerX();
        }
        throw null;
    }

    @Override // j0.J
    public final void z0(RecyclerView recyclerView, int i5) {
        c cVar = new c(this, recyclerView.getContext(), 0);
        cVar.f7580a = i5;
        A0(cVar);
    }

    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i5, int i6) {
        new d();
        this.f5916q = new View.OnLayoutChangeListener() { // from class: D1.a
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i52, int i62, int i7, int i8, int i9, int i10, int i11, int i12) {
                CarouselLayoutManager carouselLayoutManager = this.f454a;
                carouselLayoutManager.getClass();
                if (i52 == i9 && i62 == i10 && i7 == i11 && i8 == i12) {
                    return;
                }
                view.post(new b(0, carouselLayoutManager));
            }
        };
        new P1.e(2);
        n0();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f9528b);
            typedArrayObtainStyledAttributes.getInt(0, 0);
            n0();
            H0(typedArrayObtainStyledAttributes.getInt(0, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
