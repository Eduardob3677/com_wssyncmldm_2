package androidx.picker.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.icu.text.DateFormatSymbols;
import android.icu.util.GregorianCalendar;
import android.os.Build;
import android.provider.Settings;
import android.text.SpannableStringBuilder;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import e0.AbstractC0414a;
import java.io.File;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes.dex */
public final class W {

    /* renamed from: H, reason: collision with root package name */
    public static final char[] f4468H = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 1632, 1633, 1634, 1635, 1636, 1637, 1638, 1639, 1640, 1641, 1776, 1777, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785, 2406, 2407, 2408, 2409, 2410, 2411, 2412, 2413, 2414, 2415, 2534, 2535, 2536, 2537, 2538, 2539, 2540, 2541, 2542, 2543, 3302, 3303, 3304, 3305, 3306, 3307, 3308, 3309, 3310, 3311, 4160, 4161, 4162, 4163, 4164, 4165, 4166, 4167, 4168, 4169};

    /* renamed from: A, reason: collision with root package name */
    public final boolean f4469A;

    /* renamed from: B, reason: collision with root package name */
    public final int f4470B;

    /* renamed from: C, reason: collision with root package name */
    public final int f4471C;

    /* renamed from: D, reason: collision with root package name */
    public int f4472D;
    public final EditText[] E;

    /* renamed from: F, reason: collision with root package name */
    public final T f4473F;

    /* renamed from: G, reason: collision with root package name */
    public final C0173o f4474G;

    /* renamed from: a, reason: collision with root package name */
    public SeslTimePicker f4475a;

    /* renamed from: b, reason: collision with root package name */
    public Context f4476b;

    /* renamed from: c, reason: collision with root package name */
    public Locale f4477c;

    /* renamed from: d, reason: collision with root package name */
    public S f4478d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4479e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4480g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f4481h;

    /* renamed from: i, reason: collision with root package name */
    public final SeslNumberPicker f4482i;

    /* renamed from: j, reason: collision with root package name */
    public final SeslNumberPicker f4483j;

    /* renamed from: k, reason: collision with root package name */
    public final SeslNumberPicker f4484k;

    /* renamed from: l, reason: collision with root package name */
    public final EditText f4485l;

    /* renamed from: m, reason: collision with root package name */
    public final EditText f4486m;
    public final TextView n;

    /* renamed from: o, reason: collision with root package name */
    public final View f4487o;

    /* renamed from: p, reason: collision with root package name */
    public final View f4488p;

    /* renamed from: q, reason: collision with root package name */
    public final View f4489q;

    /* renamed from: r, reason: collision with root package name */
    public final View f4490r;

    /* renamed from: s, reason: collision with root package name */
    public final View f4491s;

    /* renamed from: t, reason: collision with root package name */
    public final LinearLayout f4492t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f4493u;

    /* renamed from: v, reason: collision with root package name */
    public Calendar f4494v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f4495w;

    /* renamed from: x, reason: collision with root package name */
    public char f4496x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f4497y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f4498z;

    public W(SeslTimePicker seslTimePicker, Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        String[] amPmStrings;
        String string;
        Typeface typefaceCreateFromFile;
        int i5;
        this.f4475a = seslTimePicker;
        this.f4476b = context;
        Locale locale = Locale.getDefault();
        if (!locale.equals(this.f4477c)) {
            this.f4477c = locale;
        }
        this.f4494v = Calendar.getInstance(locale);
        this.f4480g = false;
        this.f4481h = false;
        this.f4493u = true;
        this.f4498z = false;
        this.f4472D = 1;
        this.E = new EditText[3];
        T t2 = new T(this, 3);
        this.f4473F = t2;
        C0173o c0173o = new C0173o(1, this);
        this.f4474G = c0173o;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0414a.f6804c, R.attr.timePickerStyle, 0);
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        this.f4469A = z4;
        int i6 = typedArrayObtainStyledAttributes.getInt(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        if (!z4) {
            layoutInflaterFrom.inflate(com.wssyncmldm.R.layout.sesl_time_picker_spinner, (ViewGroup) seslTimePicker, true);
        } else if (i6 == 1) {
            layoutInflaterFrom.inflate(com.wssyncmldm.R.layout.sesl_spinning_datepicker_time_picker_spinner_phone, (ViewGroup) seslTimePicker, true);
        } else if (i6 == 2) {
            layoutInflaterFrom.inflate(com.wssyncmldm.R.layout.sesl_spinning_datepicker_time_picker_spinner_multipane, (ViewGroup) seslTimePicker, true);
        } else {
            layoutInflaterFrom.inflate(com.wssyncmldm.R.layout.sesl_spinning_datepicker_time_picker_spinner, (ViewGroup) seslTimePicker, true);
        }
        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) seslTimePicker.findViewById(com.wssyncmldm.R.id.sesl_timepicker_hour);
        this.f4482i = seslNumberPicker;
        seslNumberPicker.setPickerContentDescription(context.getResources().getString(com.wssyncmldm.R.string.sesl_time_picker_hour));
        seslNumberPicker.setOnEditTextModeChangedListener(t2);
        seslNumberPicker.setOnValueChangedListener(new T(this, 0));
        EditText editText = (EditText) seslNumberPicker.findViewById(com.wssyncmldm.R.id.numberpicker_input);
        this.f4485l = editText;
        seslNumberPicker.a();
        editText.setImeOptions(33554437);
        seslNumberPicker.setMaxInputLength(2);
        editText.setOnEditorActionListener(c0173o);
        TextView textView = (TextView) seslTimePicker.findViewById(com.wssyncmldm.R.id.sesl_timepicker_divider);
        this.n = textView;
        if (textView != null) {
            String bestDateTimePattern = DateFormat.getBestDateTimePattern(this.f4477c, this.f4479e ? "Hm" : "hm");
            int i7 = 0;
            boolean z5 = false;
            while (true) {
                if (i7 >= bestDateTimePattern.length()) {
                    string = ":";
                    break;
                }
                char cCharAt = bestDateTimePattern.charAt(i7);
                if (cCharAt != ' ') {
                    if (cCharAt != '\'') {
                        if (cCharAt != 'H' && cCharAt != 'K' && cCharAt != 'h' && cCharAt != 'k') {
                            if (z5) {
                                string = Character.toString(bestDateTimePattern.charAt(i7));
                                break;
                            }
                        } else {
                            z5 = true;
                        }
                    } else if (z5) {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(bestDateTimePattern.substring(i7));
                        int length = spannableStringBuilder.length();
                        if (1 >= length || spannableStringBuilder.charAt(1) != '\'') {
                            spannableStringBuilder.delete(0, 1);
                            int i8 = length - 1;
                            int i9 = 0;
                            i5 = 0;
                            while (i9 < i8) {
                                if (spannableStringBuilder.charAt(i9) == '\'') {
                                    int i10 = i9 + 1;
                                    if (i10 >= i8 || spannableStringBuilder.charAt(i10) != '\'') {
                                        spannableStringBuilder.delete(i9, i10);
                                        break;
                                    }
                                    spannableStringBuilder.delete(i9, i10);
                                    i8--;
                                    i5++;
                                    i9 = i10;
                                } else {
                                    i9++;
                                    i5++;
                                }
                            }
                        } else {
                            spannableStringBuilder.delete(0, 1);
                            i5 = 1;
                        }
                        string = spannableStringBuilder.subSequence(0, i5).toString();
                    }
                }
                i7++;
            }
            TextView textView2 = this.n;
            textView2.setText(string);
            Typeface typefaceDefaultFromStyle = Typeface.defaultFromStyle(0);
            Typeface typefaceCreate = Typeface.create("sec-roboto-condensed-light", 0);
            Typeface typefaceCreate2 = Build.VERSION.SDK_INT >= 34 ? Typeface.create(Typeface.create("sec", 0), 400, false) : Typeface.create("sec-roboto-light", 0);
            if (!typefaceDefaultFromStyle.equals(typefaceCreate2)) {
                typefaceCreate = typefaceCreate2;
            } else if (typefaceCreate.equals(typefaceCreate2)) {
                typefaceCreate = Typeface.create("sans-serif-thin", 0);
            }
            String string2 = Settings.System.getString(this.f4476b.getContentResolver(), "theme_font_clock");
            if (string2 != null && !string2.equals("")) {
                if (new File(string2).exists()) {
                    try {
                        typefaceCreateFromFile = Typeface.createFromFile(string2);
                    } catch (Exception unused) {
                    }
                    textView2.setTypeface(typefaceCreateFromFile);
                } else {
                    typefaceCreateFromFile = null;
                    textView2.setTypeface(typefaceCreateFromFile);
                }
            }
            textView2.setTypeface(typefaceCreate);
        }
        Resources resources = this.f4475a.getResources();
        int i11 = resources.getConfiguration().smallestScreenWidthDp;
        if (i11 >= 600) {
            this.f4470B = resources.getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_time_picker_dialog_min_width);
        } else {
            this.f4470B = (int) (TypedValue.applyDimension(1, i11, resources.getDisplayMetrics()) + 0.5f);
        }
        this.f4471C = resources.getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_time_picker_spinner_height);
        SeslNumberPicker seslNumberPicker2 = (SeslNumberPicker) this.f4475a.findViewById(com.wssyncmldm.R.id.sesl_timepicker_minute);
        this.f4483j = seslNumberPicker2;
        seslNumberPicker2.a();
        seslNumberPicker2.setMinValue(0);
        seslNumberPicker2.setMaxValue(59);
        seslNumberPicker2.setOnLongPressUpdateInterval(100L);
        seslNumberPicker2.setSkipValuesOnLongPressEnabled(true);
        seslNumberPicker2.setFormatter(SeslNumberPicker.getTwoDigitFormatter());
        seslNumberPicker2.setPickerContentDescription(context.getResources().getString(com.wssyncmldm.R.string.sesl_time_picker_minute));
        seslNumberPicker2.setOnEditTextModeChangedListener(this.f4473F);
        seslNumberPicker2.setOnValueChangedListener(new T(this, 1));
        EditText editText2 = (EditText) seslNumberPicker2.findViewById(com.wssyncmldm.R.id.numberpicker_input);
        this.f4486m = editText2;
        editText2.setImeOptions(33554438);
        seslNumberPicker2.setMaxInputLength(2);
        editText2.setOnEditorActionListener(this.f4474G);
        String[] strArr = new String[2];
        DateFormatSymbols dateFormatSymbols = new DateFormatSymbols((Class<? extends android.icu.util.Calendar>) GregorianCalendar.class, context.getResources().getConfiguration().locale);
        String[] amPmStrings2 = dateFormatSymbols.getAmPmStrings();
        Method methodK = i3.x.K("com.samsung.sesl.icu.SemDateFormatSymbols", "getAmpmNarrowStrings", i3.x.E("android.icu.text.DateFormatSymbols"));
        Object objJ0 = methodK != null ? i3.x.j0(null, methodK, dateFormatSymbols) : null;
        if (objJ0 instanceof String[]) {
            amPmStrings = (String[]) objJ0;
        } else {
            Log.e("SeslLocaleDataReflector", "amPm narrow strings failed. Use getAmPmStrings for ampm");
            amPmStrings = new java.text.DateFormatSymbols().getAmPmStrings();
        }
        String language = Locale.getDefault().getLanguage();
        if ("lo".equals(language) || "ar".equals(language) || "fa".equals(language) || "ur".equals(language)) {
            strArr[0] = amPmStrings2[0];
            strArr[1] = amPmStrings2[1];
        } else {
            strArr[0] = amPmStrings2[0].length() > 4 ? amPmStrings[0] : amPmStrings2[0];
            strArr[1] = amPmStrings2[1].length() > 4 ? amPmStrings[1] : amPmStrings2[1];
        }
        View viewFindViewById = this.f4475a.findViewById(com.wssyncmldm.R.id.sesl_timepicker_ampm);
        this.f4488p = this.f4475a.findViewById(com.wssyncmldm.R.id.sesl_datetimepicker_padding_right);
        View viewFindViewById2 = this.f4475a.findViewById(com.wssyncmldm.R.id.sesl_datetimepicker_padding_left);
        this.f4489q = viewFindViewById2;
        this.f4491s = this.f4475a.findViewById(com.wssyncmldm.R.id.sesl_timepicker_padding_left);
        this.f4490r = this.f4475a.findViewById(com.wssyncmldm.R.id.sesl_timepicker_padding_right);
        this.f4492t = (LinearLayout) this.f4475a.findViewById(com.wssyncmldm.R.id.sesl_timepicker_hour_minute_layout);
        View viewFindViewById3 = this.f4475a.findViewById(com.wssyncmldm.R.id.sesl_timepicker_ampm_picker_margin);
        this.f4487o = viewFindViewById3;
        SeslNumberPicker seslNumberPicker3 = (SeslNumberPicker) viewFindViewById;
        this.f4484k = seslNumberPicker3;
        D d2 = seslNumberPicker3.f4453c;
        d2.f4149f0 = true;
        int dimensionPixelSize = d2.f4232a.getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_time_picker_spinner_am_pm_text_size);
        d2.f4157k = dimensionPixelSize;
        d2.f4174y.setTextSize(dimensionPixelSize);
        float f = d2.f4157k;
        EditText editText3 = d2.f4147e;
        editText3.setTextSize(0, f);
        if (d2.g0) {
            if (d2.f4152h0) {
                d2.u(false);
            }
            editText3.setAccessibilityDelegate(null);
            d2.g0 = false;
        }
        seslNumberPicker3.setMinValue(0);
        seslNumberPicker3.setMaxValue(1);
        seslNumberPicker3.setDisplayedValues(strArr);
        seslNumberPicker3.setOnValueChangedListener(new T(this, 2));
        EditText editText4 = (EditText) seslNumberPicker3.findViewById(com.wssyncmldm.R.id.numberpicker_input);
        editText4.setInputType(0);
        editText4.setCursorVisible(false);
        editText4.setFocusable(false);
        editText4.setFocusableInTouchMode(false);
        byte directionality = Character.getDirectionality(strArr[0].charAt(0));
        boolean z6 = directionality == 1 || directionality == 2;
        Locale locale2 = this.f4477c;
        byte directionality2 = Character.getDirectionality(locale2.getDisplayName(locale2).charAt(0));
        boolean z7 = directionality2 == 1 || directionality2 == 2;
        boolean zStartsWith = DateFormat.getBestDateTimePattern(this.f4477c, "hm").startsWith("a");
        if ((zStartsWith && z7 == z6) || (!zStartsWith && z7 != z6)) {
            ViewGroup viewGroup = (ViewGroup) this.f4475a.findViewById(com.wssyncmldm.R.id.sesl_timepicker_layout);
            viewGroup.removeView(seslNumberPicker3);
            viewGroup.removeView(viewFindViewById3);
            int iIndexOfChild = this.f4469A ? viewGroup.indexOfChild(viewFindViewById2) + 1 : 1;
            viewGroup.addView(viewFindViewById3, iIndexOfChild);
            viewGroup.addView(seslNumberPicker3, iIndexOfChild);
        }
        c();
        k();
        j();
        Calendar calendar = this.f4494v;
        if (calendar != null) {
            f(calendar.get(11), true);
            h(this.f4494v.get(12));
        }
        if (!this.f4493u) {
            seslNumberPicker2.setEnabled(false);
            TextView textView3 = this.n;
            if (textView3 != null) {
                textView3.setEnabled(false);
            }
            this.f4482i.setEnabled(false);
            seslNumberPicker3.setEnabled(false);
            this.f4493u = false;
        }
        if (this.f4475a.getImportantForAccessibility() == 0) {
            this.f4475a.setImportantForAccessibility(1);
        }
        EditText editText5 = this.f4482i.getEditText();
        EditText[] editTextArr = this.E;
        editTextArr[0] = editText5;
        editTextArr[1] = seslNumberPicker2.getEditText();
        editTextArr[0].addTextChangedListener(new V(this, 0));
        editTextArr[1].addTextChangedListener(new V(this, 1));
        editTextArr[0].setOnKeyListener(new ViewOnKeyListenerC0174p(2, this));
        editTextArr[1].setOnKeyListener(new ViewOnKeyListenerC0174p(2, this));
        if (this.f4469A) {
            float dimensionPixelSize2 = (resources.getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_spinning_date_picker_date_spinner_text_size) * 160.0f) / resources.getDisplayMetrics().densityDpi;
            i(0, dimensionPixelSize2);
            i(1, dimensionPixelSize2);
            i(3, dimensionPixelSize2);
            i(2, dimensionPixelSize2);
        }
    }

    public static void a(W w2) {
        InputMethodManager inputMethodManager = (InputMethodManager) w2.f4476b.getSystemService("input_method");
        if (inputMethodManager != null) {
            EditText editText = w2.f4485l;
            boolean zIsActive = inputMethodManager.isActive(editText);
            SeslTimePicker seslTimePicker = w2.f4475a;
            if (zIsActive) {
                inputMethodManager.hideSoftInputFromWindow(seslTimePicker.getWindowToken(), 0);
                if (editText != null) {
                    editText.clearFocus();
                    return;
                }
                return;
            }
            EditText editText2 = w2.f4486m;
            if (inputMethodManager.isActive(editText2)) {
                inputMethodManager.hideSoftInputFromWindow(seslTimePicker.getWindowToken(), 0);
                if (editText2 != null) {
                    editText2.clearFocus();
                }
            }
        }
    }

    public final int b() {
        int value = this.f4482i.getValue();
        return this.f4479e ? value : this.f ? value % 12 : (value % 12) + 12;
    }

    public final void c() {
        String bestDateTimePattern = DateFormat.getBestDateTimePattern(this.f4477c, this.f4479e ? "Hm" : "hm");
        int length = bestDateTimePattern.length();
        this.f4495w = false;
        for (int i5 = 0; i5 < length; i5++) {
            char cCharAt = bestDateTimePattern.charAt(i5);
            if (cCharAt == 'H' || cCharAt == 'h' || cCharAt == 'K' || cCharAt == 'k') {
                this.f4496x = cCharAt;
                int i6 = i5 + 1;
                if (i6 >= length || cCharAt != bestDateTimePattern.charAt(i6)) {
                    return;
                }
                this.f4495w = true;
                return;
            }
        }
    }

    public final void d(AccessibilityEvent accessibilityEvent) {
        int i5 = this.f4479e ? 129 : 65;
        this.f4494v.set(11, b());
        this.f4494v.set(12, this.f4483j.getValue());
        accessibilityEvent.getText().add(DateUtils.formatDateTime(this.f4476b, this.f4494v.getTimeInMillis(), i5));
    }

    public final void e() {
        S s5 = this.f4478d;
        if (s5 != null) {
            b();
            this.f4483j.getValue();
            s5.getClass();
        }
    }

    public final void f(int i5, boolean z4) {
        if (i5 == b()) {
            return;
        }
        if (!this.f4479e) {
            if (i5 >= 12) {
                this.f = false;
                if (i5 > 12) {
                    i5 -= 12;
                }
            } else {
                this.f = true;
                if (i5 == 0) {
                    i5 = 12;
                }
            }
            j();
        }
        this.f4482i.setValue(i5);
        if (z4) {
            e();
        }
    }

    public final void g(boolean z4) {
        if (this.f4497y == z4) {
            return;
        }
        this.f4497y = z4;
        InputMethodManager inputMethodManager = (InputMethodManager) this.f4476b.getSystemService("input_method");
        this.f4482i.setEditTextMode(z4);
        this.f4483j.setEditTextMode(z4);
        if (inputMethodManager != null) {
            boolean z5 = this.f4497y;
            SeslTimePicker seslTimePicker = this.f4475a;
            if (!z5) {
                inputMethodManager.hideSoftInputFromWindow(seslTimePicker.getWindowToken(), 0);
                return;
            }
            EditText editText = this.f4486m;
            if (!editText.hasFocus()) {
                editText = this.f4485l;
            }
            if (inputMethodManager.showSoftInput(editText, 0)) {
                return;
            }
            seslTimePicker.postDelayed(new J(7, this), 20L);
        }
    }

    public final void h(int i5) {
        int i6 = this.f4472D;
        SeslNumberPicker seslNumberPicker = this.f4483j;
        if (i6 != 1) {
            if (this.f4497y) {
                seslNumberPicker.setValue(i5);
            } else {
                if (i5 % i6 == 0) {
                    seslNumberPicker.f4453c.b(true);
                } else {
                    seslNumberPicker.f4453c.b(false);
                }
                seslNumberPicker.setValue(i5);
            }
        } else {
            if (i5 == seslNumberPicker.getValue()) {
                String language = Locale.getDefault().getLanguage();
                if ("lo".equals(language) || "ar".equals(language) || "fa".equals(language) || "ur".equals(language) || "my".equals(language)) {
                    seslNumberPicker.setValue(i5);
                    return;
                }
                return;
            }
            seslNumberPicker.setValue(i5);
        }
        e();
    }

    public final void i(int i5, float f) {
        if (i5 == 0) {
            this.f4482i.setTextSize(f);
            return;
        }
        SeslNumberPicker seslNumberPicker = this.f4483j;
        if (i5 == 1) {
            seslNumberPicker.setTextSize(f);
            return;
        }
        if (i5 == 2) {
            this.f4484k.setTextSize(f);
        } else if (i5 != 3) {
            seslNumberPicker.setTextSize(f);
        } else {
            this.n.setTextSize(1, f);
        }
    }

    public final void j() {
        boolean z4 = this.f4479e;
        boolean z5 = this.f4469A;
        View view = this.f4488p;
        LinearLayout linearLayout = this.f4492t;
        TextView textView = this.n;
        View view2 = this.f4487o;
        SeslNumberPicker seslNumberPicker = this.f4484k;
        View view3 = this.f4490r;
        View view4 = this.f4491s;
        if (z4) {
            view2.setVisibility(8);
            seslNumberPicker.setVisibility(8);
            if (z5) {
                view3.setVisibility(0);
                view.setVisibility(8);
                this.f4489q.setVisibility(8);
                return;
            } else {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 560.0f);
                view4.setLayoutParams(layoutParams);
                view3.setLayoutParams(layoutParams);
                textView.setLayoutParams(layoutParams);
                linearLayout.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 3080.0f));
                return;
            }
        }
        seslNumberPicker.setValue(!this.f ? 1 : 0);
        seslNumberPicker.setVisibility(0);
        view2.setVisibility(0);
        if (z5) {
            view4.setVisibility(8);
            view3.setVisibility(8);
            view.setVisibility(0);
        } else {
            view4.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 270.0f));
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -1, 180.0f);
            view3.setLayoutParams(layoutParams2);
            textView.setLayoutParams(layoutParams2);
            linearLayout.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 2700.0f));
        }
    }

    public final void k() {
        boolean z4 = this.f4479e;
        SeslNumberPicker seslNumberPicker = this.f4482i;
        if (z4) {
            if (this.f4496x == 'k') {
                seslNumberPicker.setMinValue(1);
                seslNumberPicker.setMaxValue(24);
            } else {
                seslNumberPicker.setMinValue(0);
                seslNumberPicker.setMaxValue(23);
            }
        } else if (this.f4496x == 'K') {
            seslNumberPicker.setMinValue(0);
            seslNumberPicker.setMaxValue(11);
        } else {
            seslNumberPicker.setMinValue(1);
            seslNumberPicker.setMaxValue(12);
        }
        seslNumberPicker.setFormatter(this.f4495w ? SeslNumberPicker.getTwoDigitFormatter() : null);
    }
}
