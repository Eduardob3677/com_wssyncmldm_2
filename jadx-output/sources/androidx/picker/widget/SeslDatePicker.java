package androidx.picker.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.text.format.Time;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewAnimator;
import androidx.viewpager.widget.ViewPager;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import com.samsung.android.lib.episode.EternalContract;
import e0.AbstractC0414a;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Formatter;
import java.util.Locale;
import p0.AbstractC0740b;

/* loaded from: classes.dex */
public class SeslDatePicker extends LinearLayout implements F, View.OnClickListener, View.OnLongClickListener, G {
    public static final PathInterpolator u0 = new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f);

    /* renamed from: A, reason: collision with root package name */
    public int f4377A;

    /* renamed from: B, reason: collision with root package name */
    public final int f4378B;

    /* renamed from: C, reason: collision with root package name */
    public int f4379C;

    /* renamed from: D, reason: collision with root package name */
    public int f4380D;
    public int E;

    /* renamed from: F, reason: collision with root package name */
    public int f4381F;

    /* renamed from: G, reason: collision with root package name */
    public final int f4382G;

    /* renamed from: H, reason: collision with root package name */
    public int f4383H;

    /* renamed from: I, reason: collision with root package name */
    public int f4384I;

    /* renamed from: J, reason: collision with root package name */
    public final int f4385J;

    /* renamed from: K, reason: collision with root package name */
    public int f4386K;

    /* renamed from: L, reason: collision with root package name */
    public int f4387L;

    /* renamed from: M, reason: collision with root package name */
    public int f4388M;

    /* renamed from: N, reason: collision with root package name */
    public int f4389N;

    /* renamed from: O, reason: collision with root package name */
    public final String f4390O;

    /* renamed from: Q, reason: collision with root package name */
    public final C0165g f4391Q;

    /* renamed from: R, reason: collision with root package name */
    public final ViewPager f4392R;

    /* renamed from: T, reason: collision with root package name */
    public final RelativeLayout f4393T;

    /* renamed from: U, reason: collision with root package name */
    public final TextView f4394U;

    /* renamed from: V, reason: collision with root package name */
    public final LinearLayout f4395V;

    /* renamed from: W, reason: collision with root package name */
    public final C0167i f4396W;

    /* renamed from: a0, reason: collision with root package name */
    public final ViewAnimator f4397a0;

    /* renamed from: b0, reason: collision with root package name */
    public final SeslDatePickerSpinnerLayout f4398b0;

    /* renamed from: c, reason: collision with root package name */
    public N f4399c;

    /* renamed from: c0, reason: collision with root package name */
    public final LinearLayout f4400c0;

    /* renamed from: d, reason: collision with root package name */
    public final Context f4401d;

    /* renamed from: d0, reason: collision with root package name */
    public final RelativeLayout f4402d0;

    /* renamed from: e, reason: collision with root package name */
    public Locale f4403e;

    /* renamed from: e0, reason: collision with root package name */
    public final LinearLayout f4404e0;
    public boolean f;

    /* renamed from: f0, reason: collision with root package name */
    public SimpleDateFormat f4405f0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4406g;
    public final ImageButton g0;

    /* renamed from: h, reason: collision with root package name */
    public boolean f4407h;

    /* renamed from: h0, reason: collision with root package name */
    public final ImageButton f4408h0;

    /* renamed from: i, reason: collision with root package name */
    public boolean f4409i;

    /* renamed from: i0, reason: collision with root package name */
    public final View f4410i0;

    /* renamed from: j, reason: collision with root package name */
    public boolean f4411j;

    /* renamed from: j0, reason: collision with root package name */
    public final View f4412j0;

    /* renamed from: k, reason: collision with root package name */
    public boolean f4413k;
    public final View k0;

    /* renamed from: l, reason: collision with root package name */
    public boolean f4414l;
    public final ObjectAnimator l0;

    /* renamed from: m, reason: collision with root package name */
    public final Calendar f4415m;
    public final ObjectAnimator m0;
    public final Calendar n;
    public boolean n0;

    /* renamed from: o, reason: collision with root package name */
    public final Calendar f4416o;
    public FrameLayout o0;

    /* renamed from: p, reason: collision with root package name */
    public final Calendar f4417p;

    /* renamed from: p0, reason: collision with root package name */
    public Window f4418p0;

    /* renamed from: q, reason: collision with root package name */
    public final Calendar f4419q;
    public int q0;

    /* renamed from: r, reason: collision with root package name */
    public final Calendar f4420r;
    public int r0;

    /* renamed from: s, reason: collision with root package name */
    public final Calendar f4421s;
    public final HandlerC0161c s0;

    /* renamed from: t, reason: collision with root package name */
    public int f4422t;
    public final ViewOnClickListenerC0163e t0;

    /* renamed from: u, reason: collision with root package name */
    public int f4423u;

    /* renamed from: v, reason: collision with root package name */
    public int f4424v;

    /* renamed from: w, reason: collision with root package name */
    public int f4425w;

    /* renamed from: x, reason: collision with root package name */
    public int f4426x;

    /* renamed from: y, reason: collision with root package name */
    public int f4427y;

    /* renamed from: z, reason: collision with root package name */
    public int f4428z;

    public SeslDatePicker(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet, R.attr.datePickerStyle, 0);
        this.f4406g = false;
        this.f4409i = true;
        this.f4413k = true;
        this.f4422t = -1;
        this.f4377A = -1;
        this.f4378B = 0;
        this.f4385J = -1;
        this.f4388M = 0;
        this.f4389N = 0;
        this.f4390O = null;
        this.n0 = false;
        ViewOnFocusChangeListenerC0160b viewOnFocusChangeListenerC0160b = new ViewOnFocusChangeListenerC0160b(0, this);
        this.s0 = new HandlerC0161c(this, Looper.getMainLooper(), 0);
        ViewOnTouchListenerC0162d viewOnTouchListenerC0162d = new ViewOnTouchListenerC0162d(0, this);
        ViewOnKeyListenerC0174p viewOnKeyListenerC0174p = new ViewOnKeyListenerC0174p(1, this);
        ViewOnClickListenerC0163e viewOnClickListenerC0163e = new ViewOnClickListenerC0163e(this);
        this.t0 = viewOnClickListenerC0163e;
        this.f4401d = context;
        this.f4403e = Locale.getDefault();
        this.f4411j = g();
        this.f4407h = "fa".equals(this.f4403e.getLanguage());
        if (h()) {
            this.f4405f0 = new SimpleDateFormat("EEEEE", this.f4403e);
        } else {
            this.f4405f0 = new SimpleDateFormat("EEE", this.f4403e);
        }
        Calendar calendarF = f(this.f4419q, this.f4403e);
        this.f4419q = calendarF;
        Calendar calendarF2 = f(this.f4420r, this.f4403e);
        this.f4420r = calendarF2;
        this.f4421s = f(calendarF2, this.f4403e);
        Calendar calendarF3 = f(this.f4415m, this.f4403e);
        this.f4415m = calendarF3;
        this.f4417p = f(calendarF3, this.f4403e);
        Resources resources = getResources();
        int[] iArr = AbstractC0414a.f6802a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.datePickerStyle, 0);
        calendarF.set(typedArrayObtainStyledAttributes.getInt(0, 1902), 0, 1);
        calendarF2.set(typedArrayObtainStyledAttributes.getInt(1, 2100), 11, 31);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(com.wssyncmldm.R.layout.sesl_date_picker, (ViewGroup) this, true);
        int i5 = typedArrayObtainStyledAttributes.getInt(2, 0);
        if (i5 != 0) {
            setFirstDayOfWeek(i5);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f4390O = getMonthViewColorStringForSpecific();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, R.attr.datePickerStyle, 0);
        try {
            C0167i c0167i = new C0167i(this, context, typedArrayObtainStyledAttributes2);
            this.f4396W = c0167i;
            int color = typedArrayObtainStyledAttributes2.getColor(7, resources.getColor(com.wssyncmldm.R.color.sesl_date_picker_header_text_color_light));
            int color2 = typedArrayObtainStyledAttributes2.getColor(3, resources.getColor(com.wssyncmldm.R.color.sesl_date_picker_button_tint_color_light));
            typedArrayObtainStyledAttributes2.recycle();
            C0165g c0165g = new C0165g(this);
            this.f4391Q = c0165g;
            ViewPager viewPager = (ViewPager) findViewById(com.wssyncmldm.R.id.sesl_date_picker_calendar);
            this.f4392R = viewPager;
            viewPager.setAdapter(c0165g);
            viewPager.setOnPageChangeListener(new C0164f(this));
            viewPager.f4999a0 = true;
            viewPager.f5006e0 = true;
            this.f4378B = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_calendar_view_padding);
            this.f4393T = (RelativeLayout) findViewById(com.wssyncmldm.R.id.sesl_date_picker_calendar_header);
            LinearLayout linearLayout = (LinearLayout) findViewById(com.wssyncmldm.R.id.sesl_date_picker_calendar_header_text_spinner_layout);
            this.f4404e0 = linearLayout;
            View viewFindViewById = findViewById(com.wssyncmldm.R.id.sesl_date_picker_calendar_header_spinner);
            this.k0 = viewFindViewById;
            TextView textView = (TextView) findViewById(com.wssyncmldm.R.id.sesl_date_picker_calendar_header_text);
            this.f4394U = textView;
            textView.setTextColor(color);
            this.n = f(calendarF3, this.f4403e);
            this.f4416o = f(calendarF3, this.f4403e);
            this.f4397a0 = (ViewAnimator) findViewById(com.wssyncmldm.R.id.sesl_date_picker_view_animator);
            SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout = (SeslDatePickerSpinnerLayout) findViewById(com.wssyncmldm.R.id.sesl_date_picker_spinner_view);
            this.f4398b0 = seslDatePickerSpinnerLayout;
            C0164f c0164f = new C0164f(this);
            if (seslDatePickerSpinnerLayout.f4437k == null) {
                seslDatePickerSpinnerLayout.f4437k = this;
            }
            seslDatePickerSpinnerLayout.f4449x = c0164f;
            this.f4422t = 0;
            linearLayout.setOnClickListener(viewOnClickListenerC0163e);
            linearLayout.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0160b(1, this));
            this.f4383H = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_calendar_day_height);
            this.E = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_calendar_view_width);
            this.f4382G = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_calendar_view_margin);
            this.f4384I = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_calendar_view_width);
            LinearLayout linearLayout2 = (LinearLayout) findViewById(com.wssyncmldm.R.id.sesl_date_picker_day_of_the_week);
            this.f4395V = linearLayout2;
            linearLayout2.addView(c0167i);
            this.f4400c0 = (LinearLayout) findViewById(com.wssyncmldm.R.id.sesl_date_picker_layout);
            this.f4402d0 = (RelativeLayout) findViewById(com.wssyncmldm.R.id.sesl_date_picker_calendar_header_layout);
            if (this.f4411j) {
                ImageButton imageButton = (ImageButton) findViewById(com.wssyncmldm.R.id.sesl_date_picker_calendar_header_next_button);
                this.g0 = imageButton;
                ImageButton imageButton2 = (ImageButton) findViewById(com.wssyncmldm.R.id.sesl_date_picker_calendar_header_prev_button);
                this.f4408h0 = imageButton2;
                imageButton.setContentDescription(context.getString(com.wssyncmldm.R.string.sesl_date_picker_decrement_month));
                imageButton2.setContentDescription(context.getString(com.wssyncmldm.R.string.sesl_date_picker_increment_month));
            } else {
                this.g0 = (ImageButton) findViewById(com.wssyncmldm.R.id.sesl_date_picker_calendar_header_prev_button);
                this.f4408h0 = (ImageButton) findViewById(com.wssyncmldm.R.id.sesl_date_picker_calendar_header_next_button);
            }
            this.g0.setOnClickListener(this);
            this.f4408h0.setOnClickListener(this);
            this.g0.setOnLongClickListener(this);
            this.f4408h0.setOnLongClickListener(this);
            this.g0.setOnTouchListener(viewOnTouchListenerC0162d);
            this.f4408h0.setOnTouchListener(viewOnTouchListenerC0162d);
            this.g0.setOnKeyListener(viewOnKeyListenerC0174p);
            this.f4408h0.setOnKeyListener(viewOnKeyListenerC0174p);
            this.g0.setOnFocusChangeListener(viewOnFocusChangeListenerC0160b);
            this.f4408h0.setOnFocusChangeListener(viewOnFocusChangeListenerC0160b);
            this.g0.setColorFilter(color2);
            this.f4408h0.setColorFilter(color2);
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.selectableItemBackgroundBorderless, typedValue, true);
            this.f4385J = typedValue.resourceId;
            this.f4379C = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_calendar_header_height);
            this.f4380D = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_calendar_view_height);
            this.f4381F = this.E;
            linearLayout.setFocusable(true);
            this.g0.setNextFocusRightId(com.wssyncmldm.R.id.sesl_date_picker_calendar_header_text);
            this.f4408h0.setNextFocusLeftId(com.wssyncmldm.R.id.sesl_date_picker_calendar_header_text);
            linearLayout.setNextFocusRightId(com.wssyncmldm.R.id.sesl_date_picker_calendar_header_next_button);
            linearLayout.setNextFocusLeftId(com.wssyncmldm.R.id.sesl_date_picker_calendar_header_prev_button);
            this.f4410i0 = findViewById(com.wssyncmldm.R.id.sesl_date_picker_between_header_and_weekend);
            this.f4423u = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_gap_between_header_and_weekend);
            this.f4412j0 = findViewById(com.wssyncmldm.R.id.sesl_date_picker_between_weekend_and_calender);
            int dimensionPixelOffset = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_gap_between_weekend_and_calender);
            this.f4424v = dimensionPixelOffset;
            this.f4425w = this.f4379C + this.f4423u + this.f4383H + dimensionPixelOffset + this.f4380D;
            n(true);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewFindViewById, "rotation", -180.0f, 0.0f);
            this.l0 = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(350L);
            PathInterpolator pathInterpolator = u0;
            objectAnimatorOfFloat.setInterpolator(pathInterpolator);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(viewFindViewById, "rotation", 0.0f, -180.0f);
            this.m0 = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(350L);
            objectAnimatorOfFloat2.setInterpolator(pathInterpolator);
            TypedValue typedValue2 = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.windowIsFloating, typedValue2, true);
            boolean z4 = typedValue2.data != 0;
            Activity activityM = m(context);
            if (activityM != null && !z4) {
                this.o0 = (FrameLayout) activityM.getWindow().getDecorView().findViewById(R.id.content);
            } else if (activityM == null) {
                Log.e("SeslDatePicker", "Cannot get window of this context. context:" + context);
            }
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes2.recycle();
            throw th;
        }
    }

    public static String a(SeslDatePicker seslDatePicker, Calendar calendar) {
        if (seslDatePicker.f4407h) {
            return new SimpleDateFormat("LLLL y", seslDatePicker.f4403e).format(calendar.getTime());
        }
        int i5 = seslDatePicker.f4401d.getResources().getConfiguration().screenWidthDp;
        StringBuilder sb = new StringBuilder(50);
        Formatter formatter = new Formatter(sb, seslDatePicker.f4403e);
        sb.setLength(0);
        long timeInMillis = calendar.getTimeInMillis();
        return i5 <= 250 ? DateUtils.formatDateRange(seslDatePicker.getContext(), formatter, timeInMillis, timeInMillis, 65572, Time.getCurrentTimezone()).toString().toUpperCase() : DateUtils.formatDateRange(seslDatePicker.getContext(), formatter, timeInMillis, timeInMillis, 36, Time.getCurrentTimezone()).toString();
    }

    public static void c(SeslDatePicker seslDatePicker, float f, boolean z4) {
        ImageButton imageButton = seslDatePicker.g0;
        imageButton.setImageAlpha((int) (f * 255.0f));
        if (z4) {
            imageButton.setBackgroundResource(seslDatePicker.f4385J);
            imageButton.setEnabled(true);
            imageButton.setFocusable(true);
        } else {
            imageButton.setBackground(null);
            imageButton.setEnabled(false);
            imageButton.setFocusable(false);
        }
    }

    public static void d(SeslDatePicker seslDatePicker, float f, boolean z4) {
        ImageButton imageButton = seslDatePicker.f4408h0;
        imageButton.setImageAlpha((int) (f * 255.0f));
        if (z4) {
            imageButton.setBackgroundResource(seslDatePicker.f4385J);
            imageButton.setEnabled(true);
            imageButton.setFocusable(true);
        } else {
            imageButton.setBackground(null);
            imageButton.setEnabled(false);
            imageButton.setFocusable(false);
        }
    }

    public static void e(Calendar calendar, int i5, int i6, int i7) {
        calendar.clear();
        calendar.set(1, i5);
        calendar.set(2, i6);
        calendar.set(5, i7);
    }

    public static Calendar f(Calendar calendar, Locale locale) {
        if (calendar == null) {
            return Calendar.getInstance(locale);
        }
        long timeInMillis = calendar.getTimeInMillis();
        Calendar calendar2 = Calendar.getInstance(locale);
        calendar2.setTimeInMillis(timeInMillis);
        return calendar2;
    }

    private static String getCalendarPackageName() {
        Method methodK = i3.x.K("com.samsung.sesl.feature.SemFloatingFeature", "hidden_getString", String.class, String.class);
        Object objJ0 = methodK != null ? i3.x.j0(null, methodK, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME", "com.android.calendar") : null;
        String str = objJ0 instanceof String ? (String) objJ0 : "com.android.calendar";
        if ("com.android.calendar".equals(str)) {
            return str;
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDayOffset() {
        H h5 = (H) this.f4391Q.f4515c.get(this.f4386K);
        this.f4428z = h5 == null ? 1 : h5.f4184D - (h5.f4186G - 1);
        int i5 = (((this.f4415m.get(5) % 7) + this.f4428z) - 1) % 7;
        if (i5 == 0) {
            return 7;
        }
        return i5;
    }

    private String getFormattedCurrentDate() {
        return DateUtils.formatDateTime(this.f4401d, this.f4415m.getTimeInMillis(), 20);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String getMonthViewColorStringForSpecific() {
        String simOperator;
        try {
            if ("wifi-only".equalsIgnoreCase(AbstractC0740b.b("ro.carrier"))) {
                String strB = AbstractC0740b.b("persist.sys.selected_country_iso");
                if (TextUtils.isEmpty(strB)) {
                    strB = AbstractC0740b.b("ro.csc.countryiso_code");
                }
                if ("AE".equals(strB)) {
                    return "XXXXXBR";
                }
            } else {
                Method methodK = i3.x.K("android.os.SemSystemProperties", "getSalesCode", new Class[0]);
                if (methodK != null) {
                    Object objJ0 = i3.x.j0(null, methodK, new Object[0]);
                    String str = objJ0 instanceof String ? (String) objJ0 : null;
                    if ("XSG".equals(str) && (simOperator = ((TelephonyManager) this.f4401d.getSystemService(EternalContract.DEVICE_TYPE_PHONE)).getSimOperator()) != null && simOperator.length() > 3 && Integer.parseInt(simOperator.substring(0, 3)) == 424) {
                        return "XXXXXBR";
                    }
                }
            }
            return null;
        } catch (NoClassDefFoundError e5) {
            Log.e("SeslDatePicker", "msg : " + e5.getMessage());
            return null;
        }
    }

    public static Activity m(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return m(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    private void setCalendarHeaderPadding(boolean z4) {
        LinearLayout linearLayout = this.f4404e0;
        if (!z4) {
            linearLayout.setPadding(0, getPaddingTop(), 0, getPaddingBottom());
        } else {
            Context context = this.f4401d;
            linearLayout.setPadding(context.getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_date_picker_calendar_header_layout_padding_left), getPaddingTop(), context.getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_date_picker_calendar_header_layout_padding_right), getPaddingBottom());
        }
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.getText().add(getFormattedCurrentDate());
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    public final boolean g() {
        if ("ur".equals(this.f4403e.getLanguage())) {
            return false;
        }
        Locale locale = this.f4403e;
        byte directionality = Character.getDirectionality(locale.getDisplayName(locale).charAt(0));
        return directionality == 1 || directionality == 2;
    }

    public int getCurrentViewType() {
        return this.f4422t;
    }

    public int getDateMode() {
        return this.f4388M;
    }

    public int getDayOfMonth() {
        return this.f4415m.get(5);
    }

    public Calendar getEndDate() {
        return this.f4416o;
    }

    public int getFirstDayOfWeek() {
        int i5 = this.f4389N;
        return i5 != 0 ? i5 : this.f4415m.getFirstDayOfWeek();
    }

    public int[] getLunarEndDate() {
        return new int[]{0, 0, 0, 0};
    }

    public int[] getLunarStartDate() {
        return new int[]{0, 0, 0, 0};
    }

    public long getMaxDate() {
        return this.f4420r.getTimeInMillis();
    }

    public int getMaxDay() {
        return this.f4420r.get(5);
    }

    public int getMaxMonth() {
        return this.f4420r.get(2);
    }

    public int getMaxYear() {
        return this.f4420r.get(1);
    }

    public long getMinDate() {
        return this.f4419q.getTimeInMillis();
    }

    public int getMinDay() {
        return this.f4419q.get(5);
    }

    public int getMinMonth() {
        return this.f4419q.get(2);
    }

    public int getMinYear() {
        return this.f4419q.get(1);
    }

    public int getMonth() {
        return this.f4415m.get(2);
    }

    public Calendar getStartDate() {
        return this.n;
    }

    public int getYear() {
        return this.f4415m.get(1);
    }

    public final boolean h() {
        String language = this.f4403e.getLanguage();
        Locale locale = Locale.SIMPLIFIED_CHINESE;
        return language.equals(locale.getLanguage()) && this.f4403e.getCountry().equals(locale.getCountry());
    }

    public final boolean i() {
        return Settings.Global.getFloat(this.f4401d.getContentResolver(), "animator_duration_scale", 1.0f) == 0.0f;
    }

    @Override // android.view.View
    public final boolean isEnabled() {
        return this.f4413k;
    }

    public final void j(boolean z4) {
        View view = this.k0;
        LinearLayout linearLayout = this.f4404e0;
        if (z4) {
            linearLayout.setOnClickListener(null);
            linearLayout.setClickable(false);
            setCalendarHeaderPadding(false);
            view.setVisibility(8);
            return;
        }
        if (linearLayout.hasOnClickListeners()) {
            return;
        }
        linearLayout.setOnClickListener(this.t0);
        linearLayout.setClickable(true);
        setCalendarHeaderPadding(true);
        view.setVisibility(0);
    }

    public final void k(H h5, int i5, int i6, int i7) {
        if (!this.f) {
            this.f4428z = h5.f4184D - (h5.f4186G - 1);
        }
        Calendar calendar = this.f4415m;
        int i8 = calendar.get(1);
        int i9 = calendar.get(2);
        calendar.set(1, i5);
        calendar.set(2, i6);
        calendar.set(5, i7);
        HandlerC0161c handlerC0161c = this.s0;
        Message messageObtainMessage = handlerC0161c.obtainMessage();
        messageObtainMessage.what = 1000;
        handlerC0161c.sendMessage(messageObtainMessage);
        int i10 = this.f4388M;
        Calendar calendar2 = this.n;
        Calendar calendar3 = this.f4416o;
        if (i10 == 1) {
            if (calendar2.compareTo(calendar3) == 0 || calendar.compareTo(calendar3) >= 0) {
                e(calendar3, i5, i6, i7);
            }
            e(calendar2, i5, i6, i7);
        } else if (i10 == 2) {
            if (calendar.compareTo(calendar2) < 0) {
                e(calendar2, i5, i6, i7);
            }
            e(calendar3, i5, i6, i7);
        } else if (i10 != 3) {
            e(calendar2, i5, i6, i7);
            e(calendar3, i5, i6, i7);
        } else {
            this.f4414l = true;
            int i11 = (((i7 % 7) + this.f4428z) - 1) % 7;
            o(i11 != 0 ? i11 : 7, i5, i6, i7);
        }
        if (this.f4388M != 0) {
            calendar2.after(calendar3);
        }
        boolean z4 = this.f4386K != ((i5 - getMinYear()) * 12) + (i6 - getMinMonth());
        if (i5 != i8 || i6 != i9 || i7 != this.f4377A || z4) {
            this.f4377A = i7;
            this.f4391Q.c();
        }
        h5.l(i7, i6, i5, getFirstDayOfWeek(), (getMinMonth() == i6 && getMinYear() == i5) ? getMinDay() : 1, (getMaxMonth() == i6 && getMaxYear() == i5) ? getMaxDay() : 31, this.f4419q, this.f4420r, calendar2.get(1), calendar2.get(2), calendar2.get(5), 0, calendar3.get(1), calendar3.get(2), calendar3.get(5), 0, this.f4388M);
        h5.invalidate();
        this.f = false;
    }

    public final void l() {
        N n = this.f4399c;
        if (n != null) {
            removeCallbacks(n);
            new Handler().postDelayed(new J(2, this), 200L);
        }
    }

    public final void n(boolean z4) throws Resources.NotFoundException {
        Calendar calendar = this.f4415m;
        int i5 = calendar.get(2);
        int minMonth = (i5 - getMinMonth()) + ((calendar.get(1) - getMinYear()) * 12);
        this.f4386K = minMonth;
        boolean zI = i();
        ViewPager viewPager = this.f4392R;
        if (zI) {
            viewPager.u(minMonth, false);
        } else {
            viewPager.u(minMonth, z4);
        }
        HandlerC0161c handlerC0161c = this.s0;
        Message messageObtainMessage = handlerC0161c.obtainMessage();
        messageObtainMessage.what = 1000;
        messageObtainMessage.obj = Boolean.TRUE;
        handlerC0161c.sendMessage(messageObtainMessage);
        Message messageObtainMessage2 = handlerC0161c.obtainMessage();
        messageObtainMessage2.what = IDMCallbackStatusInterface.IDM_STATUS_INITIALIZING;
        handlerC0161c.sendMessage(messageObtainMessage2);
    }

    public final void o(int i5, int i6, int i7, int i8) {
        e(this.n, i6, i7, (i8 - i5) + 1);
        e(this.f4416o, i6, i7, (7 - i5) + i8);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Resources.NotFoundException {
        int id = view.getId();
        ViewPager viewPager = this.f4392R;
        if (id == com.wssyncmldm.R.id.sesl_date_picker_calendar_header_prev_button) {
            if (this.f4411j) {
                if (this.f4386K == this.f4387L - 1) {
                    return;
                }
                if (i()) {
                    viewPager.u(this.f4386K + 1, false);
                    return;
                } else {
                    viewPager.setCurrentItem(this.f4386K + 1);
                    return;
                }
            }
            if (this.f4386K == 0) {
                return;
            }
            if (i()) {
                viewPager.u(this.f4386K - 1, false);
                return;
            } else {
                viewPager.setCurrentItem(this.f4386K - 1);
                return;
            }
        }
        if (id == com.wssyncmldm.R.id.sesl_date_picker_calendar_header_next_button) {
            if (this.f4411j) {
                if (this.f4386K == 0) {
                    return;
                }
                if (i()) {
                    viewPager.u(this.f4386K - 1, false);
                    return;
                } else {
                    viewPager.setCurrentItem(this.f4386K - 1);
                    return;
                }
            }
            if (this.f4386K == this.f4387L - 1) {
                return;
            }
            if (i()) {
                viewPager.u(this.f4386K + 1, false);
            } else {
                viewPager.setCurrentItem(this.f4386K + 1);
            }
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) throws Resources.NotFoundException {
        super.onConfigurationChanged(configuration);
        this.f4411j = g();
        this.f4407h = "fa".equals(this.f4403e.getLanguage());
        Locale locale = configuration.getLocales().get(0);
        if (!this.f4403e.equals(locale)) {
            this.f4403e = locale;
            if (h()) {
                this.f4405f0 = new SimpleDateFormat("EEEEE", locale);
            } else {
                this.f4405f0 = new SimpleDateFormat("EEE", locale);
            }
        }
        Resources resources = this.f4401d.getResources();
        this.f4400c0.setGravity(1);
        this.f4409i = true;
        this.f4379C = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_calendar_header_height);
        this.f4380D = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_calendar_view_height);
        this.f4383H = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_calendar_day_height);
        this.f4423u = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_gap_between_header_and_weekend);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_gap_between_weekend_and_calender);
        this.f4424v = dimensionPixelOffset;
        this.f4425w = this.f4379C + this.f4423u + this.f4383H + dimensionPixelOffset + this.f4380D;
        if (this.f4411j) {
            this.f4406g = true;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        l();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        Window window;
        super.onLayout(z4, i5, i6, i7, i8);
        if (getLayoutParams().height == -2 || getMeasuredHeight() <= this.f4425w) {
            if (this.o0 == null && (window = this.f4418p0) != null) {
                this.o0 = (FrameLayout) window.findViewById(com.wssyncmldm.R.id.customPanel);
            }
            int measuredHeight = this.r0;
            FrameLayout frameLayout = this.o0;
            if (frameLayout != null) {
                measuredHeight = frameLayout.getMeasuredHeight();
                if (this.f4418p0 != null) {
                    measuredHeight -= this.q0;
                }
            }
            if (this.f4422t == 0 || !this.f4398b0.f4430c) {
                Activity activityM = m(this.f4401d);
                if (activityM == null || !activityM.isInMultiWindowMode()) {
                    j(false);
                } else if (measuredHeight >= this.f4425w) {
                    j(false);
                } else {
                    setCurrentViewType(1);
                    j(true);
                }
            }
        }
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        int id = view.getId();
        if (id == com.wssyncmldm.R.id.sesl_date_picker_calendar_header_prev_button && this.f4386K != 0) {
            long longPressTimeout = ViewConfiguration.getLongPressTimeout();
            Runnable runnable = this.f4399c;
            if (runnable == null) {
                this.f4399c = new N(1, this);
            } else {
                removeCallbacks(runnable);
            }
            N n = this.f4399c;
            n.f4244d = false;
            postDelayed(n, longPressTimeout);
        } else if (id == com.wssyncmldm.R.id.sesl_date_picker_calendar_header_next_button && this.f4386K != this.f4387L - 1) {
            long longPressTimeout2 = ViewConfiguration.getLongPressTimeout();
            Runnable runnable2 = this.f4399c;
            if (runnable2 == null) {
                this.f4399c = new N(1, this);
            } else {
                removeCallbacks(runnable2);
            }
            N n5 = this.f4399c;
            n5.f4244d = true;
            postDelayed(n5, longPressTimeout2);
        }
        return false;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i5, int i6) {
        int size;
        this.r0 = View.MeasureSpec.getSize(i6);
        int i7 = this.E;
        if (i7 != -1) {
            int mode = View.MeasureSpec.getMode(i5);
            if (mode == Integer.MIN_VALUE) {
                int i8 = getResources().getConfiguration().smallestScreenWidthDp;
                size = i8 >= 600 ? getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_date_picker_dialog_min_width) : (int) (TypedValue.applyDimension(1, i8, getResources().getDisplayMetrics()) + 0.5f);
            } else {
                size = View.MeasureSpec.getSize(i5);
            }
            int i9 = this.f4382G;
            if (mode == Integer.MIN_VALUE) {
                int i10 = size - (i9 * 2);
                this.E = i10;
                this.f4384I = i10;
                i5 = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
            } else if (mode == 0) {
                i5 = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
            } else {
                if (mode != 1073741824) {
                    throw new IllegalArgumentException(B.f.t(mode, "Unknown measure mode: "));
                }
                int i11 = size - (i9 * 2);
                this.E = i11;
                this.f4384I = i11;
            }
        }
        if (!this.f4409i && this.f4381F == this.E) {
            super.onMeasure(i5, i6);
            return;
        }
        this.f4409i = false;
        this.f4381F = this.E;
        this.f4402d0.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.f4395V.setLayoutParams(new LinearLayout.LayoutParams(this.f4384I, this.f4383H));
        this.f4396W.setLayoutParams(new LinearLayout.LayoutParams(this.f4384I, this.f4383H));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.E, this.f4380D);
        ViewPager viewPager = this.f4392R;
        viewPager.setLayoutParams(layoutParams);
        if (this.f4411j && this.f4406g) {
            viewPager.f5000b0 = true;
        }
        this.f4410i0.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f4423u));
        this.f4412j0.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f4424v));
        super.onMeasure(i5, i6);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(((View.BaseSavedState) parcelable).getSuperState());
        C0170l c0170l = (C0170l) parcelable;
        this.f4415m.set(c0170l.f4524c, c0170l.f4525d, c0170l.f4526e);
        this.f4419q.setTimeInMillis(c0170l.f);
        this.f4420r.setTimeInMillis(c0170l.f4527g);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        Calendar calendar = this.f4415m;
        return new C0170l(parcelableOnSaveInstanceState, calendar.get(1), calendar.get(2), calendar.get(5), this.f4419q.getTimeInMillis(), this.f4420r.getTimeInMillis());
    }

    @Override // android.view.View
    public final void onSizeChanged(int i5, int i6, int i7, int i8) {
        super.onSizeChanged(i5, i6, i7, i8);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        super.requestLayout();
        SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout = this.f4398b0;
        if (seslDatePickerSpinnerLayout == null || seslDatePickerSpinnerLayout.getVisibility() != 0) {
            return;
        }
        seslDatePickerSpinnerLayout.requestLayout();
    }

    public void setCurrentViewType(int i5) {
        int i6;
        int i7;
        int i8;
        ViewAnimator viewAnimator = this.f4397a0;
        HandlerC0161c handlerC0161c = this.s0;
        SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout = this.f4398b0;
        if (i5 != 0) {
            if (i5 != 1) {
                return;
            }
            if (this.f4422t != i5) {
                this.k0.setRotation(-180.0f);
                int i9 = this.f4388M;
                if (i9 == 1) {
                    Calendar calendar = this.n;
                    i6 = calendar.get(1);
                    i7 = calendar.get(2);
                    i8 = calendar.get(5);
                } else if (i9 != 2) {
                    Calendar calendar2 = this.f4415m;
                    i6 = calendar2.get(1);
                    i7 = calendar2.get(2);
                    i8 = calendar2.get(5);
                } else {
                    Calendar calendar3 = this.f4416o;
                    i6 = calendar3.get(1);
                    i7 = calendar3.get(2);
                    i8 = calendar3.get(5);
                }
                seslDatePickerSpinnerLayout.h(i6, i7, i8);
                viewAnimator.setDisplayedChild(1);
                seslDatePickerSpinnerLayout.setEnabled(true);
                this.f4422t = i5;
                Message messageObtainMessage = handlerC0161c.obtainMessage();
                messageObtainMessage.what = 1000;
                handlerC0161c.sendMessage(messageObtainMessage);
            }
        } else if (this.f4422t != i5) {
            seslDatePickerSpinnerLayout.i();
            seslDatePickerSpinnerLayout.d(false);
            viewAnimator.setDisplayedChild(0);
            seslDatePickerSpinnerLayout.setVisibility(4);
            seslDatePickerSpinnerLayout.setEnabled(false);
            this.f4422t = i5;
            Message messageObtainMessage2 = handlerC0161c.obtainMessage();
            messageObtainMessage2.what = 1000;
            handlerC0161c.sendMessage(messageObtainMessage2);
            this.f4391Q.c();
        }
        Message messageObtainMessage3 = handlerC0161c.obtainMessage();
        messageObtainMessage3.what = IDMCallbackStatusInterface.IDM_STATUS_INITIALIZING;
        handlerC0161c.sendMessage(messageObtainMessage3);
    }

    public void setDateMode(int i5) {
        this.f4388M = i5;
        this.f4414l = false;
        SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout = this.f4398b0;
        Calendar calendar = this.n;
        Calendar calendar2 = this.f4416o;
        if (i5 == 1) {
            seslDatePickerSpinnerLayout.h(calendar.get(1), calendar.get(2), calendar.get(5));
        } else if (i5 == 2) {
            seslDatePickerSpinnerLayout.h(calendar2.get(1), calendar2.get(2), calendar2.get(5));
        }
        if (this.f4422t == 1) {
            seslDatePickerSpinnerLayout.setVisibility(0);
            seslDatePickerSpinnerLayout.setEnabled(true);
        }
        C0165g c0165g = this.f4391Q;
        H h5 = (H) c0165g.f4515c.get(this.f4386K);
        if (h5 != null) {
            Calendar calendar3 = this.f4415m;
            int i6 = calendar3.get(1);
            int i7 = calendar3.get(2);
            int i8 = calendar3.get(5);
            int minDay = (getMinMonth() == i7 && getMinYear() == i6) ? getMinDay() : 1;
            int maxDay = (getMaxMonth() == i7 && getMaxYear() == i6) ? getMaxDay() : 31;
            h5.l(i8, i7, i6, getFirstDayOfWeek(), minDay, maxDay, this.f4419q, this.f4420r, calendar.get(1), calendar.get(2), calendar.get(5), 0, calendar2.get(1), calendar2.get(2), calendar2.get(5), 0, this.f4388M);
            h5.invalidate();
        }
        c0165g.c();
    }

    public void setDateValidator(InterfaceC0166h interfaceC0166h) {
    }

    public void setDialogPaddingVertical(int i5) {
        this.q0 = i5;
    }

    public void setDialogWindow(Window window) {
        if (window != null) {
            this.f4418p0 = window;
        }
    }

    public void setEditTextMode(boolean z4) {
        if (this.f4422t == 0) {
            return;
        }
        this.f4398b0.d(z4);
    }

    @Override // android.view.View
    public void setEnabled(boolean z4) {
        if (this.f4413k == z4) {
            return;
        }
        super.setEnabled(z4);
        this.f4413k = z4;
    }

    public void setFirstDayOfWeek(int i5) {
        if (i5 < 1 || i5 > 7) {
            throw new IllegalArgumentException("firstDayOfWeek must be between 1 and 7");
        }
        this.f4389N = i5;
    }

    public void setMaxDate(long j3) throws Resources.NotFoundException {
        Calendar calendar = this.f4421s;
        calendar.setTimeInMillis(j3);
        int i5 = calendar.get(1);
        Calendar calendar2 = this.f4420r;
        if (i5 != calendar2.get(1) || calendar.get(6) == calendar2.get(6)) {
            Calendar calendar3 = this.f4415m;
            if (calendar3.after(calendar)) {
                calendar3.setTimeInMillis(j3);
            }
            calendar2.setTimeInMillis(j3);
            long timeInMillis = calendar2.getTimeInMillis();
            SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout = this.f4398b0;
            seslDatePickerSpinnerLayout.f4433g.setTimeInMillis(timeInMillis);
            if (seslDatePickerSpinnerLayout.f4434h.after(seslDatePickerSpinnerLayout.f4433g)) {
                seslDatePickerSpinnerLayout.f4434h.setTimeInMillis(seslDatePickerSpinnerLayout.f4433g.getTimeInMillis());
            }
            seslDatePickerSpinnerLayout.j(true, true, true, true);
            this.f4391Q.c();
            n(false);
        }
    }

    public void setMinDate(long j3) throws Resources.NotFoundException {
        Calendar calendar = this.f4421s;
        calendar.setTimeInMillis(j3);
        int i5 = calendar.get(1);
        Calendar calendar2 = this.f4419q;
        if (i5 != calendar2.get(1) || calendar.get(6) == calendar2.get(6)) {
            Calendar calendar3 = this.f4415m;
            if (calendar3.before(calendar)) {
                calendar3.setTimeInMillis(j3);
            }
            calendar2.setTimeInMillis(j3);
            long timeInMillis = calendar2.getTimeInMillis();
            SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout = this.f4398b0;
            seslDatePickerSpinnerLayout.f.setTimeInMillis(timeInMillis);
            if (seslDatePickerSpinnerLayout.f4434h.before(seslDatePickerSpinnerLayout.f)) {
                seslDatePickerSpinnerLayout.f4434h.setTimeInMillis(seslDatePickerSpinnerLayout.f.getTimeInMillis());
            }
            seslDatePickerSpinnerLayout.j(true, true, true, true);
            this.f4391Q.c();
            n(false);
        }
    }

    public void setOnEditTextModeChangedListener(InterfaceC0168j interfaceC0168j) {
        SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout = this.f4398b0;
        if (seslDatePickerSpinnerLayout.f4437k == null) {
            seslDatePickerSpinnerLayout.f4437k = this;
        }
    }

    public void setOnViewTypeChangedListener(InterfaceC0169k interfaceC0169k) {
    }

    public void setSeparateLunarButton(boolean z4) {
        if (this.n0 == z4) {
            return;
        }
        if (z4) {
            Resources resources = this.f4401d.getResources();
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f4393T.getLayoutParams();
            layoutParams.removeRule(16);
            layoutParams.leftMargin = 0;
            ((RelativeLayout.LayoutParams) this.g0.getLayoutParams()).leftMargin = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_calendar_view_margin);
            ((RelativeLayout.LayoutParams) this.f4408h0.getLayoutParams()).rightMargin = resources.getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_date_picker_calendar_view_margin);
        } else {
            this.f4400c0.removeView(null);
            this.f4425w -= this.f4379C;
        }
        this.n0 = z4;
    }

    public void setValidationCallback(InterfaceC0171m interfaceC0171m) {
    }
}
