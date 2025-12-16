package androidx.picker.widget;

import android.os.Handler;
import android.text.TextUtils;
import android.widget.EditText;

/* loaded from: classes.dex */
public final class T implements InterfaceC0179v, InterfaceC0177t {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4460a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ W f4461b;

    public /* synthetic */ T(W w2, int i5) {
        this.f4460a = i5;
        this.f4461b = w2;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0070  */
    @Override // androidx.picker.widget.InterfaceC0179v
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(SeslNumberPicker seslNumberPicker, int i5, int i6) throws NumberFormatException {
        switch (this.f4460a) {
            case 0:
                W w2 = this.f4461b;
                if (!w2.f4479e && !w2.f4497y) {
                    boolean z4 = false;
                    int i7 = w2.f4496x == 'K' ? 0 : 12;
                    if ((i5 == 11 && i6 == i7) || (i5 == i7 && i6 == 11)) {
                        SeslNumberPicker seslNumberPicker2 = w2.f4484k;
                        w2.f = seslNumberPicker2.getValue() != 0;
                        seslNumberPicker2.setEnabled(false);
                        D d2 = seslNumberPicker2.f4453c;
                        if (d2.f4149f0 && d2.f4160o != d2.n) {
                            z4 = true;
                        }
                        d2.c(z4);
                        w2.f4498z = true;
                        new Handler().postDelayed(new J(6, this), 500L);
                    }
                }
                w2.e();
                break;
            case 1:
                this.f4461b.e();
                break;
            default:
                W w4 = this.f4461b;
                if (!w4.f4484k.isEnabled()) {
                    w4.f4484k.setEnabled(true);
                }
                int i8 = 0;
                if (!w4.f4498z) {
                    boolean z5 = w4.f;
                    if (!z5 || i6 != 0) {
                        if (z5 || i6 != 1) {
                            w4.f = i6 == 0;
                            w4.j();
                            w4.e();
                            if (w4.f4497y) {
                                EditText editText = w4.f4485l;
                                if (editText != null && editText.hasFocus()) {
                                    if (!TextUtils.isEmpty(editText.getText())) {
                                        int i9 = Integer.parseInt(String.valueOf(editText.getText()));
                                        if (w4.f4479e) {
                                            i8 = i9;
                                            w4.f(i8, true);
                                            editText.selectAll();
                                        } else {
                                            boolean z6 = w4.f;
                                            if (!z6 && i9 != 12) {
                                                i8 = i9 + 12;
                                            } else if (!z6 || i9 != 12) {
                                            }
                                            w4.f(i8, true);
                                            editText.selectAll();
                                        }
                                    }
                                }
                                EditText editText2 = w4.f4486m;
                                if (editText2 != null && editText2.hasFocus() && !TextUtils.isEmpty(editText2.getText())) {
                                    w4.h(Integer.parseInt(String.valueOf(editText2.getText())));
                                    editText2.selectAll();
                                    break;
                                }
                            }
                        }
                    }
                } else {
                    w4.f4498z = false;
                    break;
                }
                break;
        }
    }

    @Override // androidx.picker.widget.InterfaceC0177t
    public void b(boolean z4) {
        W w2 = this.f4461b;
        w2.g(z4);
        if (w2.f4497y == z4 || z4) {
            return;
        }
        SeslNumberPicker seslNumberPicker = w2.f4482i;
        if (seslNumberPicker.f4453c.f4152h0) {
            seslNumberPicker.setEditTextMode(false);
        }
        SeslNumberPicker seslNumberPicker2 = w2.f4483j;
        if (seslNumberPicker2.f4453c.f4152h0) {
            seslNumberPicker2.setEditTextMode(false);
        }
    }
}
