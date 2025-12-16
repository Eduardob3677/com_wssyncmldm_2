package androidx.picker.widget;

import android.os.Handler;

/* loaded from: classes.dex */
public final class K implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4236c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f4237d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f4238e;

    public /* synthetic */ K(int i5, Object obj, int i6) {
        this.f4236c = i6;
        this.f4238e = obj;
        this.f4237d = i5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4236c) {
            case 0:
                P p4 = (P) this.f4238e;
                int i5 = p4.f4311t;
                if (i5 != 0) {
                    p4.f4294f0 = true;
                    p4.f4315w = p4.f4297h0;
                    p4.o(i5 * 5);
                    ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate();
                    new Handler().postDelayed(new K((int) (i5 * 5.4d), this, 3), this.f4237d);
                    break;
                } else {
                    p4.g0 = true;
                    break;
                }
            case 1:
                new Handler().postDelayed(new J(5, this), 100L);
                break;
            case 2:
                D d2 = (D) this.f4238e;
                int i6 = d2.f4089A;
                if (i6 != 0) {
                    d2.n0 = true;
                    d2.f4094D = d2.f4162p0;
                    int i7 = d2.f4160o;
                    int i8 = d2.f4159m;
                    int i9 = i7 != i8 ? i6 : -i6;
                    int i10 = i7 - i8;
                    boolean z4 = d2.f4118Q;
                    int i11 = (z4 || i10 >= 5) ? 5 : i10;
                    float f = (z4 || i10 >= 5) ? 5.4f : i10 + 0.4f;
                    boolean z5 = d2.f4149f0;
                    int i12 = z5 ? i9 : i11 * i6;
                    if (!z5) {
                        i9 = (int) (i6 * f);
                    }
                    d2.t(i12);
                    ((SeslNumberPicker) d2.f4233b).invalidate();
                    new Handler().postDelayed(new K(i9, this, 1), this.f4237d);
                    break;
                } else {
                    d2.o0 = true;
                    break;
                }
            default:
                new Handler().postDelayed(new J(1, this), 100L);
                break;
        }
    }

    public K(P p4) {
        this.f4236c = 0;
        this.f4238e = p4;
        this.f4237d = 0;
    }
}
