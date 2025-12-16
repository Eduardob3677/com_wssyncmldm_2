package androidx.picker.widget;

import android.content.res.Resources;
import android.os.Handler;
import android.view.inputmethod.InputMethodManager;
import f0.DialogInterfaceOnClickListenerC0419b;

/* loaded from: classes.dex */
public final class J implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4234c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f4235d;

    public /* synthetic */ J(int i5, Object obj) {
        this.f4234c = i5;
        this.f4235d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() throws Resources.NotFoundException {
        switch (this.f4234c) {
            case 0:
                J j3 = (J) this.f4235d;
                P p4 = (P) ((K) ((K) j3.f4235d).f4238e).f4238e;
                p4.k(p4.f4315w);
                K k5 = (K) j3.f4235d;
                ((P) ((K) k5.f4238e).f4238e).f4315w.abortAnimation();
                ((P) ((K) k5.f4238e).f4238e).f4319y.abortAnimation();
                ((P) ((K) k5.f4238e).f4238e).c(0);
                P p5 = (P) ((K) k5.f4238e).f4238e;
                p5.f4315w = p5.f4299i0;
                p5.f4294f0 = false;
                ((SeslSpinningDatePickerSpinner) p5.f4233b).invalidate();
                ((P) ((K) k5.f4238e).f4238e).r(true);
                c1.w wVar = ((P) ((K) k5.f4238e).f4238e).f4262H0;
                if (wVar != null) {
                    ((DialogInterfaceOnClickListenerC0419b) wVar.f5265c).f6823m = false;
                    break;
                }
                break;
            case 1:
                K k6 = (K) this.f4235d;
                P p6 = (P) ((K) k6.f4238e).f4238e;
                if (!p6.k(p6.f4315w)) {
                    P p7 = (P) ((K) k6.f4238e).f4238e;
                    p7.k(p7.f4319y);
                }
                P p8 = (P) ((K) k6.f4238e).f4238e;
                p8.f4321z = 0;
                p8.f4315w.startScroll(0, 0, 0, -k6.f4237d, 557);
                ((SeslSpinningDatePickerSpinner) ((P) ((K) k6.f4238e).f4238e).f4233b).invalidate();
                new Handler().postDelayed(new J(0, this), 857L);
                break;
            case 2:
                SeslDatePicker seslDatePicker = (SeslDatePicker) this.f4235d;
                seslDatePicker.f4392R.u(seslDatePicker.f4386K, false);
                break;
            case 3:
                x xVar = (x) this.f4235d;
                InputMethodManager inputMethodManager = (InputMethodManager) xVar.f4545d.f4232a.getSystemService("input_method");
                if (inputMethodManager != null) {
                    D d2 = xVar.f4545d;
                    if (d2.f4152h0 && d2.f4147e.isFocused()) {
                        inputMethodManager.showSoftInput(xVar.f4545d.f4147e, 0);
                        break;
                    }
                }
                break;
            case 4:
                J j5 = (J) this.f4235d;
                D d5 = (D) ((K) ((K) j5.f4235d).f4238e).f4238e;
                d5.o(d5.f4094D);
                K k7 = (K) j5.f4235d;
                ((D) ((K) k7.f4238e).f4238e).f4094D.abortAnimation();
                ((D) ((K) k7.f4238e).f4238e).f4097F.abortAnimation();
                ((D) ((K) k7.f4238e).f4238e).e(0);
                D d6 = (D) ((K) k7.f4238e).f4238e;
                d6.f4094D = d6.q0;
                d6.n0 = false;
                ((SeslNumberPicker) d6.f4233b).invalidate();
                ((D) ((K) k7.f4238e).f4238e).z(true);
                c1.w wVar2 = ((D) ((K) k7.f4238e).f4238e).f4134Y0;
                if (wVar2 != null) {
                    ((DialogInterfaceOnClickListenerC0419b) wVar2.f5265c).f6823m = false;
                    break;
                }
                break;
            case 5:
                K k8 = (K) this.f4235d;
                D d7 = (D) ((K) k8.f4238e).f4238e;
                if (!d7.o(d7.f4094D)) {
                    D d8 = (D) ((K) k8.f4238e).f4238e;
                    d8.o(d8.f4097F);
                }
                ((D) ((K) k8.f4238e).f4238e).z(false);
                D d9 = (D) ((K) k8.f4238e).f4238e;
                d9.f4099G = 0;
                d9.f4094D.startScroll(0, 0, 0, -k8.f4237d, d9.f4149f0 ? 857 : 557);
                ((SeslNumberPicker) ((D) ((K) k8.f4238e).f4238e).f4233b).invalidate();
                new Handler().postDelayed(new J(4, this), 857L);
                break;
            case 6:
                W w2 = ((T) this.f4235d).f4461b;
                w2.f4498z = false;
                SeslNumberPicker seslNumberPicker = w2.f4484k;
                if (seslNumberPicker != null) {
                    seslNumberPicker.setEnabled(true);
                    break;
                }
                break;
            default:
                W w4 = (W) this.f4235d;
                InputMethodManager inputMethodManager2 = (InputMethodManager) w4.f4476b.getSystemService("input_method");
                if (w4.f4497y && inputMethodManager2 != null) {
                    inputMethodManager2.showSoftInput(w4.f4486m.hasFocus() ? w4.f4486m : w4.f4485l, 0);
                    break;
                }
                break;
        }
    }
}
