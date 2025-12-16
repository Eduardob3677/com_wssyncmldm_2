package androidx.picker.widget;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;

/* loaded from: classes.dex */
public final class V implements TextWatcher {

    /* renamed from: c, reason: collision with root package name */
    public final int f4464c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4465d;

    /* renamed from: e, reason: collision with root package name */
    public int f4466e = 0;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ W f4467g;

    public V(W w2, int i5) {
        this.f4467g = w2;
        this.f4464c = i5;
        int i6 = i5 + 1;
        this.f4465d = i6 >= 2 ? -1 : i6;
    }

    public static int b(String str) {
        char[] cArr = W.f4468H;
        int i5 = 0;
        for (int i6 = 0; i6 < 70; i6++) {
            if (str.equals(Character.toString(cArr[i6]))) {
                return i5 % 10;
            }
            i5++;
        }
        return -1;
    }

    public final void a() {
        W w2 = this.f4467g;
        boolean zIsTouchExplorationEnabled = ((AccessibilityManager) w2.f4476b.getSystemService("accessibility")).isTouchExplorationEnabled();
        int i5 = this.f4464c;
        if (zIsTouchExplorationEnabled) {
            if (i5 == 0) {
                w2.f(Integer.parseInt(String.valueOf(w2.E[i5].getText())), true);
                w2.E[i5].selectAll();
                return;
            } else {
                if (i5 == 1) {
                    w2.h(Integer.parseInt(String.valueOf(w2.E[i5].getText())));
                    w2.E[i5].selectAll();
                    return;
                }
                return;
            }
        }
        int i6 = this.f4465d;
        if (i6 >= 0) {
            w2.E[i6].requestFocus();
            if (w2.E[i5].isFocused()) {
                w2.E[i5].clearFocus();
                return;
            }
            return;
        }
        if (i5 == 1) {
            w2.h(Integer.parseInt(String.valueOf(w2.E[i5].getText())));
            w2.E[i5].selectAll();
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
        this.f = charSequence.toString();
        this.f4466e = i7;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
        W w2 = this.f4467g;
        EditText[] editTextArr = w2.E;
        int i8 = this.f4464c;
        String str = (String) editTextArr[i8].getTag();
        if (str != null && (str.equals("onClick") || str.equals("onLongClick"))) {
            w2.E[i8].setTag("");
            return;
        }
        if (i8 == 0) {
            if (this.f4466e == 1) {
                if (charSequence.length() == 2) {
                    if (w2.E[i8].isFocused()) {
                        a();
                        return;
                    }
                    return;
                } else {
                    if (charSequence.length() > 0) {
                        int iB = b(charSequence.toString());
                        if ((iB > 2 || (iB > 1 && !w2.f4479e)) && w2.E[i8].isFocused()) {
                            a();
                            return;
                        }
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i8 != 1) {
            if (this.f.length() < charSequence.length() && charSequence.length() == 2 && w2.E[i8].isFocused()) {
                a();
                return;
            }
            return;
        }
        if (this.f4466e == 1) {
            if (charSequence.length() == 2) {
                if (w2.E[i8].isFocused()) {
                    a();
                    return;
                }
                return;
            }
            if (charSequence.length() > 0) {
                int iB2 = b(charSequence.toString());
                if (iB2 >= 6 && iB2 <= 9) {
                    if (w2.E[i8].isFocused()) {
                        w2.f4480g = true;
                        a();
                        return;
                    }
                    return;
                }
                if (w2.f4480g && (iB2 == 5 || iB2 == 0)) {
                    w2.f4480g = false;
                    w2.f4481h = true;
                } else {
                    w2.f4480g = false;
                    w2.f4481h = false;
                }
            }
        }
    }
}
