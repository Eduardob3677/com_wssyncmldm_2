package androidx.picker.widget;

import android.view.inputmethod.InputMethodManager;

/* loaded from: classes.dex */
public final class x implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4544c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ D f4545d;

    public /* synthetic */ x(D d2, int i5) {
        this.f4544c = i5;
        this.f4545d = d2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4544c) {
            case 0:
                D d2 = this.f4545d;
                InputMethodManager inputMethodManager = (InputMethodManager) d2.f4232a.getSystemService("input_method");
                if (inputMethodManager != null && d2.f4152h0 && d2.f4147e.isFocused() && !inputMethodManager.showSoftInput(d2.f4147e, 0)) {
                    ((SeslNumberPicker) d2.f4233b).postDelayed(new J(3, this), 20L);
                    break;
                }
                break;
            case 1:
                D d5 = this.f4545d;
                d5.f4126U = true;
                if (d5.g0) {
                    d5.m0 = true;
                    break;
                }
                break;
            default:
                D d6 = this.f4545d;
                d6.f4126U = true;
                d6.f4128V = true;
                d6.b(true ^ d6.f4163q);
                break;
        }
    }
}
