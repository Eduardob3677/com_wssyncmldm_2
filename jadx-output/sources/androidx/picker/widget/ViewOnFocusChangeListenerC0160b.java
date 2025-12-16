package androidx.picker.widget;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;

/* renamed from: androidx.picker.widget.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnFocusChangeListenerC0160b implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4507a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4508b;

    public /* synthetic */ ViewOnFocusChangeListenerC0160b(int i5, Object obj) {
        this.f4507a = i5;
        this.f4508b = obj;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z4) {
        switch (this.f4507a) {
            case 0:
                if (!z4) {
                    ((SeslDatePicker) this.f4508b).l();
                    break;
                }
                break;
            case 1:
                if (z4) {
                    SeslDatePicker seslDatePicker = (SeslDatePicker) this.f4508b;
                    if (seslDatePicker.f4422t == 1) {
                        seslDatePicker.setEditTextMode(false);
                        break;
                    }
                }
                break;
            default:
                D d2 = (D) this.f4508b;
                if (!z4) {
                    d2.f4147e.setSelection(0, 0);
                    d2.getClass();
                    String strValueOf = String.valueOf(((TextView) view).getText());
                    int iH = d2.h(strValueOf);
                    if (!TextUtils.isEmpty(strValueOf) && d2.f4160o != iH) {
                        int i5 = d2.f4161p;
                        if (i5 != 1 && d2.f4163q) {
                            d2.b(iH % i5 == 0);
                        }
                        d2.w(iH, true);
                        break;
                    } else {
                        int i6 = d2.f4161p;
                        if (i6 == 1 || !d2.f4163q || !d2.f4164r) {
                            d2.C();
                            break;
                        } else {
                            d2.b(iH % i6 == 0);
                            break;
                        }
                    }
                } else {
                    d2.u(true);
                    d2.f4147e.selectAll();
                    break;
                }
                break;
        }
    }
}
