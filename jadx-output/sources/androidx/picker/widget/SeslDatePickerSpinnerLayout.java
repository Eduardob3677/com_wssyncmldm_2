package androidx.picker.widget;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.text.DateFormatSymbols;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes.dex */
class SeslDatePickerSpinnerLayout extends LinearLayout {

    /* renamed from: A, reason: collision with root package name */
    public static final /* synthetic */ int f4429A = 0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4430c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f4431d;

    /* renamed from: e, reason: collision with root package name */
    public Calendar f4432e;
    public Calendar f;

    /* renamed from: g, reason: collision with root package name */
    public Calendar f4433g;

    /* renamed from: h, reason: collision with root package name */
    public Calendar f4434h;

    /* renamed from: i, reason: collision with root package name */
    public int f4435i;

    /* renamed from: j, reason: collision with root package name */
    public final Locale f4436j;

    /* renamed from: k, reason: collision with root package name */
    public SeslDatePicker f4437k;

    /* renamed from: l, reason: collision with root package name */
    public final SeslNumberPicker f4438l;

    /* renamed from: m, reason: collision with root package name */
    public final SeslNumberPicker f4439m;
    public final SeslNumberPicker n;

    /* renamed from: o, reason: collision with root package name */
    public final EditText f4440o;

    /* renamed from: p, reason: collision with root package name */
    public final EditText f4441p;

    /* renamed from: q, reason: collision with root package name */
    public final EditText f4442q;

    /* renamed from: r, reason: collision with root package name */
    public final View f4443r;

    /* renamed from: s, reason: collision with root package name */
    public final View f4444s;

    /* renamed from: t, reason: collision with root package name */
    public String[] f4445t;

    /* renamed from: u, reason: collision with root package name */
    public String[] f4446u;

    /* renamed from: v, reason: collision with root package name */
    public final String f4447v;

    /* renamed from: w, reason: collision with root package name */
    public Toast f4448w;

    /* renamed from: x, reason: collision with root package name */
    public C0164f f4449x;

    /* renamed from: y, reason: collision with root package name */
    public final EditText[] f4450y;

    /* renamed from: z, reason: collision with root package name */
    public final C0173o f4451z;

    public SeslDatePickerSpinnerLayout(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet, R.attr.datePickerStyle, 0);
        C0172n c0172n = new C0172n(this);
        this.f4450y = new EditText[3];
        this.f4451z = new C0173o(0, this);
        this.f4431d = context;
        LayoutInflater.from(context).inflate(com.wssyncmldm.R.layout.sesl_date_picker_spinner, (ViewGroup) this, true);
        Locale locale = Locale.getDefault();
        this.f4436j = locale;
        b(locale);
        C0172n c0172n2 = new C0172n(this);
        LinearLayout linearLayout = (LinearLayout) findViewById(com.wssyncmldm.R.id.sesl_date_picker_pickers);
        this.f4443r = findViewById(com.wssyncmldm.R.id.sesl_date_picker_spinner_day_padding);
        this.f4444s = findViewById(com.wssyncmldm.R.id.sesl_date_picker_spinner_year_padding);
        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) findViewById(com.wssyncmldm.R.id.sesl_date_picker_spinner_day);
        this.f4438l = seslNumberPicker;
        this.f4440o = (EditText) seslNumberPicker.findViewById(com.wssyncmldm.R.id.numberpicker_input);
        seslNumberPicker.setFormatter(SeslNumberPicker.getTwoDigitFormatter());
        seslNumberPicker.setOnValueChangedListener(c0172n2);
        seslNumberPicker.setOnEditTextModeChangedListener(c0172n);
        seslNumberPicker.setMaxInputLength(2);
        seslNumberPicker.a();
        SeslNumberPicker seslNumberPicker2 = (SeslNumberPicker) findViewById(com.wssyncmldm.R.id.sesl_date_picker_spinner_month);
        this.f4439m = seslNumberPicker2;
        EditText editText = (EditText) seslNumberPicker2.findViewById(com.wssyncmldm.R.id.numberpicker_input);
        this.f4441p = editText;
        if (k()) {
            seslNumberPicker2.setMinValue(1);
            seslNumberPicker2.setMaxValue(12);
            seslNumberPicker2.a();
            seslNumberPicker2.setMaxInputLength(2);
        } else {
            seslNumberPicker2.setMinValue(0);
            seslNumberPicker2.setMaxValue(this.f4435i - 1);
            seslNumberPicker2.setFormatter(null);
            seslNumberPicker2.setDisplayedValues(this.f4445t);
            editText.setInputType(1);
            EditText editText2 = seslNumberPicker2.f4453c.f4147e;
            editText2.setImeOptions(33554432);
            editText2.setPrivateImeOptions("inputType=month_edittext");
            editText2.setText("");
            seslNumberPicker2.setCustomTalkbackFormatter(new C0172n(this));
        }
        seslNumberPicker2.setOnValueChangedListener(c0172n2);
        seslNumberPicker2.setOnEditTextModeChangedListener(c0172n);
        SeslNumberPicker seslNumberPicker3 = (SeslNumberPicker) findViewById(com.wssyncmldm.R.id.sesl_date_picker_spinner_year);
        this.n = seslNumberPicker3;
        this.f4442q = (EditText) seslNumberPicker3.findViewById(com.wssyncmldm.R.id.numberpicker_input);
        seslNumberPicker3.setOnValueChangedListener(c0172n2);
        seslNumberPicker3.setOnEditTextModeChangedListener(c0172n);
        seslNumberPicker3.setMaxInputLength(4);
        seslNumberPicker3.a();
        Typeface typefaceCreate = Build.VERSION.SDK_INT >= 34 ? Typeface.create(Typeface.create("sec", 0), 600, false) : Typeface.create("sec-roboto-light", 1);
        seslNumberPicker.setTextTypeface(typefaceCreate);
        seslNumberPicker2.setTextTypeface(typefaceCreate);
        seslNumberPicker3.setTextTypeface(typefaceCreate);
        this.f4447v = context.getResources().getString(com.wssyncmldm.R.string.sesl_number_picker_invalid_value_entered);
        f();
        seslNumberPicker.setPickerContentDescription(context.getResources().getString(com.wssyncmldm.R.string.sesl_date_picker_day));
        seslNumberPicker2.setPickerContentDescription(context.getResources().getString(com.wssyncmldm.R.string.sesl_date_picker_month));
        seslNumberPicker3.setPickerContentDescription(context.getResources().getString(com.wssyncmldm.R.string.sesl_date_picker_year));
        this.f4434h.setTimeInMillis(System.currentTimeMillis());
        c(this.f4434h.get(1), this.f4434h.get(2), this.f4434h.get(5));
        j(true, true, true, true);
        linearLayout.removeAllViews();
        char[] dateFormatOrder = DateFormat.getDateFormatOrder(context);
        int length = dateFormatOrder.length;
        for (int i5 = 0; i5 < length; i5++) {
            char c2 = dateFormatOrder[i5];
            if (c2 == 'M') {
                SeslNumberPicker seslNumberPicker4 = this.f4439m;
                linearLayout.addView(seslNumberPicker4);
                e(seslNumberPicker4, length, i5);
            } else if (c2 == 'd') {
                SeslNumberPicker seslNumberPicker5 = this.f4438l;
                linearLayout.addView(seslNumberPicker5);
                e(seslNumberPicker5, length, i5);
            } else {
                if (c2 != 'y') {
                    throw new IllegalArgumentException(Arrays.toString(dateFormatOrder));
                }
                SeslNumberPicker seslNumberPicker6 = this.n;
                linearLayout.addView(seslNumberPicker6);
                e(seslNumberPicker6, length, i5);
            }
        }
        char c5 = dateFormatOrder[0];
        View view = this.f4443r;
        View view2 = this.f4444s;
        if (c5 == 'y') {
            linearLayout.addView(view2, 0);
            linearLayout.addView(view);
        } else {
            linearLayout.addView(view, 0);
            linearLayout.addView(view2);
        }
        char c6 = dateFormatOrder[0];
        char c7 = dateFormatOrder[1];
        if (c6 == 'M') {
            g(0);
            return;
        }
        if (c6 == 'd') {
            g(1);
        } else {
            if (c6 != 'y') {
                return;
            }
            if (c7 == 'd') {
                g(3);
            } else {
                g(2);
            }
        }
    }

    public static Calendar a(Calendar calendar, Locale locale) {
        if (calendar == null) {
            return Calendar.getInstance(locale);
        }
        long timeInMillis = calendar.getTimeInMillis();
        Calendar calendar2 = Calendar.getInstance(locale);
        calendar2.setTimeInMillis(timeInMillis);
        return calendar2;
    }

    public static void e(SeslNumberPicker seslNumberPicker, int i5, int i6) {
        ((TextView) seslNumberPicker.findViewById(com.wssyncmldm.R.id.numberpicker_input)).setImeOptions(i6 < i5 + (-1) ? 33554437 : 33554438);
    }

    public final void b(Locale locale) {
        this.f4432e = a(this.f4432e, locale);
        this.f = a(this.f, locale);
        this.f4433g = a(this.f4433g, locale);
        this.f4434h = a(this.f4434h, locale);
        this.f4435i = this.f4432e.getActualMaximum(2) + 1;
        this.f4445t = new DateFormatSymbols().getShortMonths();
        this.f4446u = new DateFormatSymbols().getMonths();
        int i5 = 0;
        int i6 = 0;
        while (true) {
            String[] strArr = this.f4445t;
            if (i6 >= strArr.length) {
                break;
            }
            strArr[i6] = strArr[i6].toUpperCase();
            i6++;
        }
        if (k()) {
            this.f4445t = new String[this.f4435i];
            while (i5 < this.f4435i) {
                int i7 = i5 + 1;
                this.f4445t[i5] = String.format("%d", Integer.valueOf(i7));
                i5 = i7;
            }
        }
    }

    public final void c(int i5, int i6, int i7) {
        this.f4434h.set(i5, i6, i7);
        if (this.f4434h.before(this.f)) {
            this.f4434h.setTimeInMillis(this.f.getTimeInMillis());
        } else if (this.f4434h.after(this.f4433g)) {
            this.f4434h.setTimeInMillis(this.f4433g.getTimeInMillis());
        }
    }

    public final void d(boolean z4) {
        if (this.f4430c == z4) {
            return;
        }
        this.f4430c = z4;
        InputMethodManager inputMethodManager = (InputMethodManager) this.f4431d.getSystemService("input_method");
        SeslNumberPicker seslNumberPicker = this.f4438l;
        seslNumberPicker.setEditTextMode(z4);
        this.f4439m.setEditTextMode(z4);
        this.n.setEditTextMode(z4);
        if (inputMethodManager != null) {
            if (this.f4430c) {
                inputMethodManager.showSoftInput(seslNumberPicker, 0);
            } else {
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            }
        }
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    public final void f() throws Resources.NotFoundException {
        Resources resources = this.f4431d.getResources();
        int integer = resources.getInteger(com.wssyncmldm.R.integer.sesl_date_picker_spinner_number_text_size);
        int integer2 = resources.getInteger(com.wssyncmldm.R.integer.sesl_date_picker_spinner_number_text_size_with_unit);
        float f = integer;
        SeslNumberPicker seslNumberPicker = this.f4438l;
        seslNumberPicker.setTextSize(f);
        SeslNumberPicker seslNumberPicker2 = this.n;
        seslNumberPicker2.setTextSize(f);
        String language = this.f4436j.getLanguage();
        if ("my".equals(language) || "ml".equals(language) || "ar".equals(language) || "fa".equals(language)) {
            integer = resources.getInteger(com.wssyncmldm.R.integer.sesl_date_picker_spinner_long_month_text_size);
        } else if ("ga".equals(language)) {
            integer = resources.getInteger(com.wssyncmldm.R.integer.sesl_date_picker_spinner_long_month_text_size) - 1;
        } else if ("hu".equals(language)) {
            integer -= 4;
        }
        boolean zK = k();
        SeslNumberPicker seslNumberPicker3 = this.f4439m;
        if (zK) {
            seslNumberPicker3.setTextSize(f);
        } else {
            seslNumberPicker3.setTextSize(integer);
        }
        if ("ko".equals(language) || "zh".equals(language) || "ja".equals(language)) {
            float f5 = integer2;
            seslNumberPicker.setTextSize(f5);
            seslNumberPicker3.setTextSize(f5);
            seslNumberPicker2.setTextSize(f5);
            seslNumberPicker.setDateUnit(997);
            seslNumberPicker3.setDateUnit(998);
            seslNumberPicker2.setDateUnit(androidx.room.j.MAX_BIND_PARAMETER_CNT);
        }
    }

    public final void g(int i5) {
        int i6;
        int i7;
        int i8;
        k();
        if (i5 == 0) {
            i6 = 1;
            i7 = 2;
            i8 = 0;
        } else if (i5 != 1) {
            if (i5 == 2) {
                i8 = 1;
                i6 = 2;
            } else if (i5 != 3) {
                i7 = -1;
                i8 = -1;
                i6 = -1;
            } else {
                i6 = 1;
                i8 = 2;
            }
            i7 = 0;
        } else {
            i8 = 1;
            i7 = 2;
            i6 = 0;
        }
        EditText editText = this.n.getEditText();
        EditText[] editTextArr = this.f4450y;
        editTextArr[i7] = editText;
        editTextArr[i8] = this.f4439m.getEditText();
        editTextArr[i6] = this.f4438l.getEditText();
        editTextArr[i7].addTextChangedListener(new C0175q(this, 4, i7, false));
        if (k()) {
            editTextArr[i8].addTextChangedListener(new C0175q(this, 2, i8, true));
        } else {
            editTextArr[i8].addTextChangedListener(new C0175q(this, 3, i8, true));
        }
        editTextArr[i6].addTextChangedListener(new C0175q(this, 2, i6, false));
        if (i5 != 3 || k()) {
            editTextArr[editTextArr.length - 1].setOnEditorActionListener(this.f4451z);
        }
        editTextArr[i7].setOnKeyListener(new ViewOnKeyListenerC0174p(0, this));
        editTextArr[i8].setOnKeyListener(new ViewOnKeyListenerC0174p(0, this));
        editTextArr[i6].setOnKeyListener(new ViewOnKeyListenerC0174p(0, this));
    }

    public final void h(int i5, int i6, int i7) {
        if (this.f4434h.get(1) == i5 && this.f4434h.get(2) == i6 && this.f4434h.get(5) == i7) {
            return;
        }
        c(i5, i6, i7);
        j(true, true, true, true);
    }

    public final void i() {
        InputMethodManager inputMethodManager = (InputMethodManager) this.f4431d.getSystemService("input_method");
        if (inputMethodManager != null) {
            EditText editText = this.f4442q;
            if (inputMethodManager.isActive(editText)) {
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
                editText.clearFocus();
                return;
            }
            EditText editText2 = this.f4441p;
            if (inputMethodManager.isActive(editText2)) {
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
                editText2.clearFocus();
                return;
            }
            EditText editText3 = this.f4440o;
            if (inputMethodManager.isActive(editText3)) {
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
                editText3.clearFocus();
            }
        }
    }

    public final void j(boolean z4, boolean z5, boolean z6, boolean z7) {
        EditText[] editTextArr;
        int actualMaximum;
        int i5;
        int i6;
        int i7;
        SeslNumberPicker seslNumberPicker = this.n;
        if (z5) {
            seslNumberPicker.setMinValue(this.f.get(1));
            seslNumberPicker.setMaxValue(this.f4433g.get(1));
            seslNumberPicker.setWrapSelectorWheel(false);
        }
        SeslNumberPicker seslNumberPicker2 = this.f4439m;
        if (z6) {
            if (this.f4433g.get(1) - this.f.get(1) == 0) {
                i6 = this.f.get(2);
                i7 = this.f4433g.get(2);
            } else {
                int i8 = this.f4434h.get(1);
                if (i8 == this.f.get(1)) {
                    i6 = this.f.get(2);
                } else if (i8 == this.f4433g.get(1)) {
                    i7 = this.f4433g.get(2);
                    i6 = 0;
                } else {
                    i6 = 0;
                }
                i7 = 11;
            }
            if (k()) {
                i6++;
                i7++;
            }
            seslNumberPicker2.setDisplayedValues(null);
            seslNumberPicker2.setMinValue(i6);
            seslNumberPicker2.setMaxValue(i7);
            if (!k()) {
                seslNumberPicker2.setDisplayedValues((String[]) Arrays.copyOfRange(this.f4445t, seslNumberPicker2.getMinValue(), seslNumberPicker2.getMaxValue() + 1));
            }
        }
        SeslNumberPicker seslNumberPicker3 = this.f4438l;
        if (z7) {
            int i9 = this.f4433g.get(1) - this.f.get(1);
            int i10 = this.f4433g.get(2) - this.f.get(2);
            if (i9 == 0 && i10 == 0) {
                i5 = this.f.get(5);
                actualMaximum = this.f4433g.get(5);
            } else {
                int i11 = this.f4434h.get(1);
                int i12 = this.f4434h.get(2);
                if (i11 == this.f.get(1) && i12 == this.f.get(2)) {
                    i5 = this.f.get(5);
                    actualMaximum = this.f4434h.getActualMaximum(5);
                } else {
                    actualMaximum = (i11 == this.f4433g.get(1) && i12 == this.f4433g.get(2)) ? this.f4433g.get(5) : this.f4434h.getActualMaximum(5);
                    i5 = 1;
                }
            }
            seslNumberPicker3.setMinValue(i5);
            seslNumberPicker3.setMaxValue(actualMaximum);
        }
        if (z4) {
            seslNumberPicker.setValue(this.f4434h.get(1));
            int i13 = this.f4434h.get(2);
            if (k()) {
                seslNumberPicker2.setValue(i13 + 1);
            } else {
                seslNumberPicker2.setValue(i13);
            }
            seslNumberPicker3.setValue(this.f4434h.get(5));
            if (k()) {
                this.f4441p.setRawInputType(2);
            }
            if (!this.f4430c || (editTextArr = this.f4450y) == null) {
                return;
            }
            for (EditText editText : editTextArr) {
                if (editText.hasFocus()) {
                    editText.setSelection(0, 0);
                    editText.selectAll();
                    return;
                }
            }
        }
    }

    public final boolean k() {
        return Character.isDigit(this.f4445t[0].charAt(0));
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) throws Resources.NotFoundException {
        super.onConfigurationChanged(configuration);
        b(configuration.locale);
        f();
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.getText().add(DateUtils.formatDateTime(this.f4431d, this.f4434h.getTimeInMillis(), 20));
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        super.requestLayout();
        SeslNumberPicker seslNumberPicker = this.f4438l;
        if (seslNumberPicker != null) {
            seslNumberPicker.requestLayout();
        }
        SeslNumberPicker seslNumberPicker2 = this.n;
        if (seslNumberPicker2 != null) {
            seslNumberPicker2.requestLayout();
        }
        SeslNumberPicker seslNumberPicker3 = this.f4439m;
        if (seslNumberPicker3 != null) {
            seslNumberPicker3.requestLayout();
        }
    }

    @Override // android.view.View
    public final void setEnabled(boolean z4) {
        this.f4438l.setEnabled(z4);
        this.f4439m.setEnabled(z4);
        this.n.setEnabled(z4);
    }
}
