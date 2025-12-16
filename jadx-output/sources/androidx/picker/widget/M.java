package androidx.picker.widget;

/* loaded from: classes.dex */
public final class M {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4241a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4242b;

    public /* synthetic */ M(int i5, Object obj) {
        this.f4241a = i5;
        this.f4242b = obj;
    }

    public final void a(V.e eVar, float f, float f5) {
        switch (this.f4241a) {
            case 0:
                P p4 = (P) this.f4242b;
                float f6 = f - p4.f4249A;
                if (!p4.f4260G0 && Math.round(f6) == 0) {
                    eVar.b();
                    p4.c(0);
                    break;
                } else {
                    if (Math.round(f6) == 0) {
                        p4.f4260G0 = false;
                    }
                    p4.o(Math.round(f6));
                    p4.f4249A = f;
                    ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate();
                    break;
                }
                break;
            default:
                if (f5 <= 0.0f) {
                    f5 = -f5;
                }
                D d2 = (D) this.f4242b;
                d2.f4127U0 = f5;
                float f7 = f - d2.f4101H;
                if (!d2.f4125T0 && Math.round(f7) == 0) {
                    eVar.b();
                    if (!d2.e(0)) {
                        d2.C();
                        break;
                    }
                } else {
                    if (Math.round(f7) == 0) {
                        d2.f4125T0 = false;
                    }
                    d2.t(Math.round(f7));
                    d2.f4101H = f;
                    ((SeslNumberPicker) d2.f4233b).invalidate();
                    break;
                }
                break;
        }
    }
}
