package androidx.picker.widget;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.wssyncmldm.R;
import java.util.Calendar;
import java.util.Objects;

/* renamed from: androidx.picker.widget.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0175q implements TextWatcher {

    /* renamed from: c, reason: collision with root package name */
    public final int f4533c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4534d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4535e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public String f4536g;

    /* renamed from: h, reason: collision with root package name */
    public int f4537h = 0;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f4538i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ SeslDatePickerSpinnerLayout f4539j;

    public C0175q(SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout, int i5, int i6, boolean z4) {
        this.f4539j = seslDatePickerSpinnerLayout;
        this.f4533c = i5;
        this.f4534d = i6;
        this.f4538i = z4;
        int i7 = i6 - 1;
        this.f = i7;
        if (i7 < 0) {
            this.f = 2;
        }
        int i8 = i6 + 1;
        this.f4535e = i8 > 2 ? -1 : i8;
    }

    public final void a() {
        SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout = this.f4539j;
        AccessibilityManager accessibilityManager = (AccessibilityManager) seslDatePickerSpinnerLayout.f4431d.getSystemService("accessibility");
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            seslDatePickerSpinnerLayout.getClass();
            int i5 = this.f4535e;
            if (i5 >= 0) {
                if (!seslDatePickerSpinnerLayout.f4450y[this.f].isFocused()) {
                    seslDatePickerSpinnerLayout.f4450y[i5].requestFocus();
                }
                EditText[] editTextArr = seslDatePickerSpinnerLayout.f4450y;
                int i6 = this.f4534d;
                if (editTextArr[i6].isFocused()) {
                    seslDatePickerSpinnerLayout.f4450y[i6].clearFocus();
                }
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        editable.toString();
        int i5 = SeslDatePickerSpinnerLayout.f4429A;
        this.f4539j.getClass();
    }

    public final void b(int i5, String str) {
        SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout = this.f4539j;
        EditText[] editTextArr = seslDatePickerSpinnerLayout.f4450y;
        int i6 = this.f4534d;
        editTextArr[i6].setText(str);
        if (i5 != 0) {
            seslDatePickerSpinnerLayout.f4450y[i6].setSelection(i5);
        }
        if (seslDatePickerSpinnerLayout.f4448w == null) {
            seslDatePickerSpinnerLayout.f4448w = Toast.makeText(seslDatePickerSpinnerLayout.f4431d, seslDatePickerSpinnerLayout.f4447v, 0);
            View viewInflate = LayoutInflater.from(seslDatePickerSpinnerLayout.f4431d).inflate(R.layout.sesl_custom_toast_layout, (ViewGroup) null);
            ((TextView) viewInflate.findViewById(R.id.message)).setText(seslDatePickerSpinnerLayout.f4447v);
            seslDatePickerSpinnerLayout.f4448w.setView(viewInflate);
        }
        seslDatePickerSpinnerLayout.f4448w.show();
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
        Objects.toString(charSequence);
        int i8 = SeslDatePickerSpinnerLayout.f4429A;
        this.f4539j.getClass();
        this.f4536g = charSequence.toString();
        this.f4537h = i7;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) throws NumberFormatException {
        Objects.toString(charSequence);
        int i8 = SeslDatePickerSpinnerLayout.f4429A;
        SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout = this.f4539j;
        seslDatePickerSpinnerLayout.getClass();
        int length = charSequence.length();
        String string = charSequence.toString();
        EditText[] editTextArr = seslDatePickerSpinnerLayout.f4450y;
        int i9 = this.f4534d;
        String str = (String) editTextArr[i9].getTag();
        if ((str == null || !("onClick".equals(str) || "onLongClick".equals(str))) && seslDatePickerSpinnerLayout.f4450y[i9].isFocused()) {
            boolean z4 = this.f4538i;
            int i10 = this.f4533c;
            SeslNumberPicker seslNumberPicker = seslDatePickerSpinnerLayout.f4439m;
            if (z4) {
                if (seslDatePickerSpinnerLayout.k() && this.f4537h == 1) {
                    int minValue = seslNumberPicker.getMinValue();
                    int i11 = Integer.parseInt(string);
                    if (length == i10) {
                        if (i11 >= minValue) {
                            a();
                            return;
                        } else if (Character.getNumericValue(string.charAt(0)) < 2) {
                            b(1, Character.toString(string.charAt(0)));
                            return;
                        } else {
                            b(0, "");
                            return;
                        }
                    }
                    if (length > 0) {
                        if (minValue >= 10 && "0".equals(string)) {
                            b(0, "");
                            return;
                        }
                        if ("1".equals(string) || "0".equals(string)) {
                            return;
                        }
                        if (i11 < minValue) {
                            b(0, "");
                            return;
                        } else {
                            a();
                            return;
                        }
                    }
                    return;
                }
                String str2 = this.f4536g;
                if (TextUtils.isEmpty(str2) || !Character.isDigit(str2.charAt(0))) {
                    if (length >= i10) {
                        String language = seslDatePickerSpinnerLayout.f4436j.getLanguage();
                        if (!"ar".equals(language) && !"fa".equals(language) && !"ur".equals(language)) {
                            a();
                            return;
                        }
                        if (TextUtils.isEmpty(this.f4536g)) {
                            for (int i12 = 0; i12 < seslDatePickerSpinnerLayout.f4435i; i12++) {
                                if (string.equals(seslDatePickerSpinnerLayout.f4445t[i12])) {
                                    a();
                                    return;
                                }
                            }
                            return;
                        }
                        return;
                    }
                    String language2 = seslDatePickerSpinnerLayout.f4436j.getLanguage();
                    if (("hi".equals(language2) || "ta".equals(language2) || "ml".equals(language2) || "te".equals(language2) || "or".equals(language2) || "ne".equals(language2) || "as".equals(language2) || "bn".equals(language2) || "gu".equals(language2) || "si".equals(language2) || "pa".equals(language2) || "kn".equals(language2) || "mr".equals(language2) || "fa".equals(seslDatePickerSpinnerLayout.f4436j.getLanguage())) && length > 0) {
                        if (TextUtils.isEmpty(string) || !Character.isDigit(string.charAt(0))) {
                            a();
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (this.f4537h == 1) {
                SeslNumberPicker seslNumberPicker2 = seslDatePickerSpinnerLayout.f4438l;
                if (i10 >= 3) {
                    SeslNumberPicker seslNumberPicker3 = seslDatePickerSpinnerLayout.n;
                    int minValue2 = seslNumberPicker3.getMinValue();
                    int maxValue = seslNumberPicker3.getMaxValue();
                    int i13 = Integer.parseInt(string);
                    if (this.f4536g.length() >= length || length != i10) {
                        int i14 = length - 1;
                        int iPow = (int) (1000.0d / Math.pow(10.0d, i14));
                        String strSubstring = length != 1 ? string.substring(0, i14) : "";
                        if (i13 < minValue2 / iPow || i13 > maxValue / iPow) {
                            b(i14, strSubstring);
                            return;
                        }
                        return;
                    }
                    if (i13 < minValue2 || i13 > maxValue) {
                        b(3, string.substring(0, 3));
                        return;
                    }
                    int value = seslDatePickerSpinnerLayout.k() ? seslNumberPicker.getValue() - 1 : seslNumberPicker.getValue();
                    seslDatePickerSpinnerLayout.f4432e.clear();
                    seslDatePickerSpinnerLayout.f4432e.set(i13, value, seslNumberPicker2.getValue());
                    Calendar calendar = Calendar.getInstance();
                    calendar.clear();
                    calendar.set(seslDatePickerSpinnerLayout.f.get(1), seslDatePickerSpinnerLayout.f.get(2), seslDatePickerSpinnerLayout.f.get(5));
                    if (seslDatePickerSpinnerLayout.f4432e.before(calendar) || seslDatePickerSpinnerLayout.f4432e.after(seslDatePickerSpinnerLayout.f4433g)) {
                        b(3, string.substring(0, 3));
                        return;
                    } else {
                        a();
                        return;
                    }
                }
                int minValue3 = seslNumberPicker2.getMinValue();
                int i15 = Integer.parseInt(string);
                if (this.f4536g.length() < length && length == i10) {
                    if (i15 >= minValue3) {
                        a();
                        return;
                    } else if (Character.getNumericValue(string.charAt(0)) < 4) {
                        b(1, Character.toString(string.charAt(0)));
                        return;
                    } else {
                        b(0, "");
                        return;
                    }
                }
                if ((minValue3 >= 10 && i15 == 0) || ((minValue3 >= 20 && (i15 == 0 || i15 == 1)) || (minValue3 >= 30 && (i15 == 0 || i15 == 1 || i15 == 2)))) {
                    b(0, "");
                    return;
                }
                if (i15 > 3) {
                    if (i15 < minValue3) {
                        b(0, "");
                        return;
                    }
                    a();
                }
                if ((seslDatePickerSpinnerLayout.k() ? seslNumberPicker.getValue() - 1 : seslNumberPicker.getValue()) == 1 && i15 == 3) {
                    if (i15 < minValue3) {
                        b(0, "");
                    } else {
                        a();
                    }
                }
            }
        }
    }
}
