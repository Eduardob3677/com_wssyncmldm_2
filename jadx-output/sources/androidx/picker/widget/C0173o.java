package androidx.picker.widget;

import android.view.KeyEvent;
import android.widget.TextView;

/* renamed from: androidx.picker.widget.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0173o implements TextView.OnEditorActionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4529a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4530b;

    public /* synthetic */ C0173o(int i5, Object obj) {
        this.f4529a = i5;
        this.f4530b = obj;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i5, KeyEvent keyEvent) {
        switch (this.f4529a) {
            case 0:
                if (i5 == 6) {
                    SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout = (SeslDatePickerSpinnerLayout) this.f4530b;
                    seslDatePickerSpinnerLayout.i();
                    seslDatePickerSpinnerLayout.d(false);
                    break;
                }
                break;
            default:
                if (i5 == 6) {
                    W w2 = (W) this.f4530b;
                    if (!w2.f4481h) {
                        SeslNumberPicker seslNumberPicker = w2.f4483j;
                        D d2 = seslNumberPicker.f4453c;
                        if ((d2.f4161p == 1 || d2.f4163q) && seslNumberPicker.getValue() % 5 != 0) {
                            seslNumberPicker.f4453c.b(false);
                        }
                    }
                    W.a(w2);
                    w2.g(false);
                    break;
                }
                break;
        }
        return false;
    }
}
