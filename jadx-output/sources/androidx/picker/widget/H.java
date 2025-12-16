package androidx.picker.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import com.wssyncmldm.R;
import dalvik.system.PathClassLoader;
import e0.AbstractC0414a;
import java.util.Calendar;
import java.util.Locale;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public final class H extends View {

    /* renamed from: A, reason: collision with root package name */
    public final int f4181A;

    /* renamed from: B, reason: collision with root package name */
    public final int[] f4182B;

    /* renamed from: C, reason: collision with root package name */
    public int f4183C;

    /* renamed from: D, reason: collision with root package name */
    public int f4184D;
    public final int E;

    /* renamed from: F, reason: collision with root package name */
    public int f4185F;

    /* renamed from: G, reason: collision with root package name */
    public int f4186G;

    /* renamed from: H, reason: collision with root package name */
    public int f4187H;

    /* renamed from: I, reason: collision with root package name */
    public int f4188I;

    /* renamed from: J, reason: collision with root package name */
    public int f4189J;

    /* renamed from: K, reason: collision with root package name */
    public boolean f4190K;

    /* renamed from: L, reason: collision with root package name */
    public Paint f4191L;

    /* renamed from: M, reason: collision with root package name */
    public Paint f4192M;

    /* renamed from: N, reason: collision with root package name */
    public Paint f4193N;

    /* renamed from: O, reason: collision with root package name */
    public Paint f4194O;

    /* renamed from: Q, reason: collision with root package name */
    public Paint f4195Q;

    /* renamed from: R, reason: collision with root package name */
    public final Calendar f4196R;

    /* renamed from: T, reason: collision with root package name */
    public Calendar f4197T;

    /* renamed from: U, reason: collision with root package name */
    public Calendar f4198U;

    /* renamed from: V, reason: collision with root package name */
    public final Calendar f4199V;

    /* renamed from: W, reason: collision with root package name */
    public final Calendar f4200W;

    /* renamed from: a0, reason: collision with root package name */
    public final E f4201a0;

    /* renamed from: b0, reason: collision with root package name */
    public F f4202b0;

    /* renamed from: c, reason: collision with root package name */
    public final int f4203c;

    /* renamed from: c0, reason: collision with root package name */
    public final boolean f4204c0;

    /* renamed from: d, reason: collision with root package name */
    public final int f4205d;

    /* renamed from: d0, reason: collision with root package name */
    public final boolean f4206d0;

    /* renamed from: e, reason: collision with root package name */
    public final int f4207e;

    /* renamed from: e0, reason: collision with root package name */
    public final boolean f4208e0;
    public boolean f;

    /* renamed from: f0, reason: collision with root package name */
    public final PathClassLoader f4209f0;

    /* renamed from: g, reason: collision with root package name */
    public final Context f4210g;
    public G g0;

    /* renamed from: h, reason: collision with root package name */
    public int f4211h;

    /* renamed from: h0, reason: collision with root package name */
    public boolean f4212h0;

    /* renamed from: i, reason: collision with root package name */
    public int f4213i;

    /* renamed from: i0, reason: collision with root package name */
    public boolean f4214i0;

    /* renamed from: j, reason: collision with root package name */
    public int f4215j;

    /* renamed from: j0, reason: collision with root package name */
    public final boolean f4216j0;

    /* renamed from: k, reason: collision with root package name */
    public int f4217k;
    public final boolean k0;

    /* renamed from: l, reason: collision with root package name */
    public int f4218l;
    public int l0;

    /* renamed from: m, reason: collision with root package name */
    public int f4219m;
    public boolean m0;
    public final int n;

    /* renamed from: o, reason: collision with root package name */
    public int f4220o;

    /* renamed from: p, reason: collision with root package name */
    public int f4221p;

    /* renamed from: q, reason: collision with root package name */
    public int f4222q;

    /* renamed from: r, reason: collision with root package name */
    public int f4223r;

    /* renamed from: s, reason: collision with root package name */
    public int f4224s;

    /* renamed from: t, reason: collision with root package name */
    public int f4225t;

    /* renamed from: u, reason: collision with root package name */
    public int f4226u;

    /* renamed from: v, reason: collision with root package name */
    public int f4227v;

    /* renamed from: w, reason: collision with root package name */
    public final int f4228w;

    /* renamed from: x, reason: collision with root package name */
    public final int f4229x;

    /* renamed from: y, reason: collision with root package name */
    public final int f4230y;

    /* renamed from: z, reason: collision with root package name */
    public final int f4231z;

    public H(Context context) {
        super(context, null);
        this.f4182B = new int[7];
        this.f4183C = 0;
        this.f4184D = 0;
        this.E = 0;
        this.f4185F = -1;
        this.f4186G = 1;
        this.f4187H = 7;
        this.f4188I = 1;
        this.f4189J = 31;
        this.f4190K = false;
        this.f4196R = Calendar.getInstance();
        this.f4197T = Calendar.getInstance();
        this.f4198U = Calendar.getInstance();
        this.f4199V = Calendar.getInstance();
        this.f4200W = Calendar.getInstance();
        this.f4206d0 = false;
        this.f4208e0 = false;
        this.f4209f0 = null;
        this.f4212h0 = false;
        this.f4214i0 = false;
        this.f4216j0 = false;
        this.k0 = false;
        this.l0 = -1;
        this.m0 = false;
        this.f4210g = context;
        this.f = i();
        Resources resources = context.getResources();
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorPrimary, typedValue, true);
        int i5 = typedValue.resourceId;
        if (i5 != 0) {
            this.f4231z = resources.getColor(i5);
        } else {
            this.f4231z = typedValue.data;
        }
        this.f4229x = resources.getColor(R.color.sesl_date_picker_sunday_number_text_color_light);
        this.f4230y = resources.getColor(R.color.sesl_date_picker_saturday_text_color_light);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, AbstractC0414a.f6802a, android.R.attr.datePickerStyle, 0);
        try {
            this.f4228w = typedArrayObtainStyledAttributes.getColor(5, resources.getColor(R.color.sesl_date_picker_normal_day_number_text_color_light));
            this.f4181A = typedArrayObtainStyledAttributes.getColor(9, resources.getColor(R.color.sesl_date_picker_selected_day_number_text_color_light));
            this.f4203c = typedArrayObtainStyledAttributes.getInteger(4, resources.getInteger(R.integer.sesl_day_number_disabled_alpha_light));
            typedArrayObtainStyledAttributes.recycle();
            this.f4215j = resources.getDimensionPixelOffset(R.dimen.sesl_date_picker_calendar_week_height);
            this.f4219m = resources.getDimensionPixelSize(R.dimen.sesl_date_picker_selected_day_circle_radius);
            this.n = resources.getDimensionPixelSize(R.dimen.sesl_date_picker_selected_day_circle_stroke);
            this.f4218l = resources.getDimensionPixelSize(R.dimen.sesl_date_picker_day_number_text_size);
            this.f4217k = resources.getDimensionPixelOffset(R.dimen.sesl_date_picker_calendar_view_width);
            this.E = resources.getDimensionPixelOffset(R.dimen.sesl_date_picker_calendar_view_padding);
            E e5 = new E(this, this);
            this.f4201a0 = e5;
            J.Q.h(this, e5);
            setImportantForAccessibility(1);
            this.f4204c0 = true;
            if (Settings.System.getString(context.getContentResolver(), "current_sec_active_themepackage") != null) {
                this.f4203c = resources.getInteger(R.integer.sesl_day_number_theme_disabled_alpha);
            }
            this.f4205d = resources.getInteger(R.integer.sesl_day_number_theme_disabled_alpha);
            this.f4207e = resources.getInteger(R.integer.sesl_date_picker_abnormal_start_end_date_background_alpha);
            f();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public static int d(int i5, int i6) {
        switch (i5) {
            case 0:
            case 2:
            case 4:
            case 6:
            case 7:
            case 9:
            case 11:
                return 31;
            case 1:
                if (i6 % 4 == 0) {
                    return (i6 % 100 != 0 || i6 % 400 == 0) ? 29 : 28;
                }
                return 28;
            case 3:
            case 5:
            case 8:
            case 10:
                return 30;
            default:
                throw new IllegalArgumentException("Invalid Month");
        }
    }

    public static boolean i() {
        Locale locale = Locale.getDefault();
        if ("ur".equals(locale.getLanguage())) {
            return false;
        }
        byte directionality = Character.getDirectionality(locale.getDisplayName(locale).charAt(0));
        return directionality == 1 || directionality == 2;
    }

    public final void a() {
        E e5 = this.f4201a0;
        int i5 = e5.f2435k;
        if (i5 != Integer.MIN_VALUE) {
            e5.b(e5.f4180s).c(i5, 128, null);
        }
    }

    public final int b() {
        int i5 = this.f4184D;
        int i6 = this.f4186G;
        if (i5 < i6) {
            i5 += 7;
        }
        return i5 - i6;
    }

    public final int c(float f, float f5) {
        if (this.f) {
            f = this.f4217k - f;
        }
        float f6 = this.E;
        if (f < f6) {
            return -1;
        }
        int i5 = this.f4217k;
        if (f > r0 + i5) {
            return -1;
        }
        return ((((int) f5) / this.f4215j) * 7) + (((int) (((f - f6) * 7.0f) / i5)) - b()) + 1;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.f4201a0.m(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    public final int e(int i5, boolean z4, int i6) {
        int iD = d(i5, i6);
        Log.e("SeslSimpleMonthView", "getDaysInMonthLunar, mSolarLunarConverter is null");
        return iD;
    }

    public final void f() {
        Paint paint = new Paint();
        this.f4193N = paint;
        paint.setAntiAlias(true);
        this.f4193N.setColor(this.f4231z);
        Paint paint2 = this.f4193N;
        Paint.Align align = Paint.Align.CENTER;
        paint2.setTextAlign(align);
        Paint paint3 = this.f4193N;
        int i5 = this.n;
        paint3.setStrokeWidth(i5);
        this.f4193N.setFakeBoldText(true);
        Paint paint4 = this.f4193N;
        Paint.Style style = Paint.Style.FILL;
        paint4.setStyle(style);
        Paint paint5 = new Paint(this.f4193N);
        this.f4194O = paint5;
        int i6 = this.f4228w;
        paint5.setColor(i6);
        this.f4194O.setAlpha(this.f4207e);
        Paint paint6 = new Paint();
        this.f4191L = paint6;
        paint6.setAntiAlias(true);
        this.f4191L.setTextSize(this.f4218l);
        int i7 = Build.VERSION.SDK_INT;
        if (i7 >= 34) {
            this.f4191L.setTypeface(Typeface.create(Typeface.create("sec", 0), 400, false));
        } else {
            this.f4191L.setTypeface(Typeface.create("sec-roboto-light", 0));
        }
        this.f4191L.setTextAlign(align);
        this.f4191L.setStyle(style);
        this.f4191L.setFakeBoldText(false);
        Paint paint7 = new Paint(this.f4191L);
        this.f4192M = paint7;
        if (i7 >= 34) {
            this.f4192M.setTypeface(Typeface.create(Typeface.create("sec", 0), 600, false));
        } else {
            paint7.setTypeface(Typeface.create("sec-roboto-light", 1));
        }
        Paint paint8 = new Paint(this.f4191L);
        this.f4195Q = paint8;
        paint8.setColor(i6);
        this.f4195Q.setAntiAlias(true);
        this.f4195Q.setStrokeWidth(i5);
        this.f4195Q.setStyle(Paint.Style.STROKE);
    }

    public final boolean g() {
        if (!this.f4206d0) {
            int i5 = this.f4213i;
            int i6 = this.f4224s;
            return (i5 == i6 && this.f4211h == this.f4225t - 1) || (i5 == i6 - 1 && this.f4211h == 11 && this.f4225t == 0);
        }
        float f = this.f4211h;
        float f5 = this.f4225t;
        if (this.f4208e0) {
            f += 0.5f;
        }
        if (this.f4227v == 1) {
            f5 += 0.5f;
        }
        float f6 = f5 - f;
        int i7 = this.f4213i;
        int i8 = this.f4224s;
        if (i7 != i8 || (f6 >= 1.0f && (f6 != 1.0f || this.k0))) {
            if (i7 != i8 - 1) {
                return false;
            }
            float f7 = f6 + 12.0f;
            if (f7 >= 1.0f && (f7 != 1.0f || this.k0)) {
                return false;
            }
        }
        return true;
    }

    public final boolean h() {
        if (!this.f4206d0) {
            int i5 = this.f4213i;
            int i6 = this.f4220o;
            return (i5 == i6 && this.f4211h == this.f4221p + 1) || (i5 == i6 + 1 && this.f4211h == 0 && this.f4221p == 11);
        }
        float f = this.f4211h;
        float f5 = this.f4221p;
        if (this.f4208e0) {
            f += 0.5f;
        }
        if (this.f4223r == 1) {
            f5 += 0.5f;
        }
        float f6 = f - f5;
        int i7 = this.f4213i;
        int i8 = this.f4220o;
        if (i7 != i8 || (f6 >= 1.0f && (f6 != 1.0f || this.f4216j0))) {
            if (i7 != i8 + 1) {
                return false;
            }
            float f7 = f6 + 12.0f;
            if (f7 >= 1.0f && (f7 != 1.0f || this.f4216j0)) {
                return false;
            }
        }
        return true;
    }

    public final boolean j(int i5, int i6, int i7) {
        Calendar calendar = this.f4200W;
        int i8 = calendar.get(1);
        int i9 = calendar.get(2);
        int i10 = calendar.get(5);
        boolean z4 = this.f4206d0;
        return i8 == i5 && i9 == i6 && i10 == i7;
    }

    public final void k(int i5, int i6, int i7, boolean z4) {
        if (!this.f4206d0) {
            Calendar calendar = this.f4199V;
            calendar.clear();
            calendar.set(i5, i6, i7);
            if (z4) {
                Calendar calendar2 = Calendar.getInstance();
                calendar2.clear();
                calendar2.set(this.f4197T.get(1), this.f4197T.get(2), this.f4197T.get(5));
                if (calendar.before(calendar2)) {
                    return;
                }
            } else if (calendar.after(this.f4198U)) {
                return;
            }
        }
        if (this.g0 != null) {
            playSoundEffect(0);
            SeslDatePicker seslDatePicker = (SeslDatePicker) this.g0;
            seslDatePicker.f = true;
            H h5 = (H) seslDatePicker.f4391Q.f4515c.get((i6 - seslDatePicker.getMinMonth()) + ((i5 - seslDatePicker.getMinYear()) * 12));
            seslDatePicker.f4428z = h5 == null ? 1 : h5.f4184D - (h5.f4186G - 1);
            seslDatePicker.k(this, i5, i6, i7);
            seslDatePicker.n(true);
        }
        this.f4201a0.y(i7, 1);
    }

    public final void l(int i5, int i6, int i7, int i8, int i9, int i10, Calendar calendar, Calendar calendar2, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
        this.f4183C = i19;
        if (this.f4215j < 10) {
            this.f4215j = 10;
        }
        this.f4185F = i5;
        if (i6 >= 0 && i6 <= 11) {
            this.f4211h = i6;
        }
        this.f4213i = i7;
        Calendar calendar3 = this.f4196R;
        calendar3.clear();
        calendar3.set(2, this.f4211h);
        calendar3.set(1, this.f4213i);
        calendar3.set(5, 1);
        this.f4197T = calendar;
        this.f4198U = calendar2;
        this.f4184D = calendar3.get(7);
        this.f4187H = d(this.f4211h, this.f4213i);
        if (i8 < 1 || i8 > 7) {
            this.f4186G = calendar3.getFirstDayOfWeek();
        } else {
            this.f4186G = i8;
        }
        int i20 = (this.f4211h == calendar.get(2) && this.f4213i == calendar.get(1)) ? calendar.get(5) : i9;
        int i21 = (this.f4211h == calendar2.get(2) && this.f4213i == calendar2.get(1)) ? calendar2.get(5) : i10;
        if (i20 > 0 && i21 < 32) {
            this.f4188I = i20;
        }
        if (i21 > 0 && i21 < 32 && i21 >= i20) {
            this.f4189J = i21;
        }
        this.f4201a0.p();
        this.f4220o = i11;
        this.f4221p = i12;
        this.f4222q = i13;
        this.f4223r = i14;
        this.f4224s = i15;
        this.f4225t = i16;
        this.f4226u = i17;
        this.f4227v = i18;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f = i();
        this.f4201a0.p();
        Resources resources = this.f4210g.getResources();
        this.f4215j = resources.getDimensionPixelOffset(R.dimen.sesl_date_picker_calendar_week_height);
        this.f4219m = resources.getDimensionPixelSize(R.dimen.sesl_date_picker_selected_day_circle_radius);
        this.f4218l = resources.getDimensionPixelSize(R.dimen.sesl_date_picker_day_number_text_size);
        f();
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02e3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x04a7  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x04af  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0500  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x051f  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0655  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onDraw(Canvas canvas) {
        int i5;
        boolean z4;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int[] iArr;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int[] iArr2;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        Calendar calendar;
        int i22;
        String str;
        int i23;
        int i24;
        int i25;
        String str2;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        int i41;
        int i42;
        int i43;
        String str3;
        int i44;
        int i45;
        int i46;
        int i47;
        int i48;
        int[] iArr3;
        Calendar calendar2;
        int i49;
        Paint paint;
        int i50;
        int i51;
        int i52;
        int i53;
        float f;
        float f5;
        int i54;
        int i55;
        int i56;
        int i57;
        int i58;
        int i59;
        int i60;
        int i61;
        int i62;
        int i63;
        int i64;
        int i65;
        int i66;
        int i67;
        int i68;
        int i69;
        int i70;
        int i71;
        int i72;
        int i73;
        int i74 = (this.f4215j * 2) / 3;
        int i75 = this.f4217k / 14;
        int iB = b();
        float f6 = this.f4218l / 2.7f;
        int i76 = this.f4220o;
        float f7 = this.f4221p;
        int i77 = this.f4222q;
        int i78 = this.f4224s;
        float f8 = this.f4225t;
        int i79 = this.f4226u;
        boolean z5 = this.f4206d0;
        if (z5 && this.f4223r == 1) {
            f7 += 0.5f;
        }
        float f9 = f7;
        if (z5 && this.f4227v == 1) {
            f8 += 0.5f;
        }
        float f10 = f8;
        int i80 = this.f4213i;
        float f11 = this.f4211h;
        if (z5 && this.f4208e0) {
            f11 += 0.5f;
        }
        float f12 = f11;
        int i81 = (i76 * IDMCallbackStatusInterface.IDM_RESULTS) + ((int) (f9 * 100.0f));
        int i82 = (i78 * IDMCallbackStatusInterface.IDM_RESULTS) + ((int) (f10 * 100.0f));
        int i83 = (i80 * IDMCallbackStatusInterface.IDM_RESULTS) + ((int) (100.0f * f12));
        if (this.f4183C != 0) {
            i5 = i74;
            z4 = i81 + i77 > i82 + i79;
        } else {
            i5 = i74;
            z4 = false;
        }
        if (z4) {
            i6 = -1;
            i7 = -1;
        } else {
            if (i76 == i78 && f9 == f10 && i80 == i76 && f12 == f9) {
                i7 = i79;
            } else {
                if (i81 < i83 && i83 < i82 && (i80 != i78 || f12 != f10)) {
                    i7 = this.f4187H + 1;
                } else if (i80 == i76 && f12 == f9) {
                    i7 = this.f4187H + 1;
                } else {
                    if (i80 == i78 && f12 == f10) {
                        i7 = i79;
                    }
                    i6 = -1;
                    i7 = -1;
                }
                i6 = 0;
            }
            i6 = i77;
        }
        this.f4190K = AbstractC0739a.l(this);
        int i84 = 0;
        int i85 = i5;
        int i86 = 1;
        int i87 = iB;
        while (true) {
            int i88 = this.f4187H;
            i8 = iB;
            i9 = this.n;
            i10 = i7;
            iArr = this.f4182B;
            i11 = i6;
            i12 = this.f4203c;
            int i89 = i79;
            i13 = this.E;
            int i90 = i78;
            i14 = this.f4181A;
            if (i86 > i88) {
                break;
            }
            int i91 = (((this.f ? (6 - i87) * 2 : i87 * 2) + 1) * i75) + i13;
            int i92 = i75;
            this.f4191L.setColor(iArr[(i87 + this.f4186G) % 7]);
            if (i86 < this.f4188I || i86 > this.f4189J) {
                this.f4191L.setAlpha(i12);
            }
            if (j(this.f4213i, this.f4211h, i86)) {
                canvas.drawCircle(i91, i85 - f6, this.f4219m - i9, this.f4195Q);
            }
            Paint paint2 = this.f4191L;
            if (this.f4190K && paint2.getAlpha() != i12) {
                this.f4192M.setColor(this.f4191L.getColor());
                paint2 = this.f4192M;
            }
            Paint paint3 = paint2;
            if (z4) {
                if (i76 == i80 && f9 == f12 && i77 == i86 && ((i73 = this.f4183C) == 2 || i73 == 3)) {
                    i69 = i89;
                    i67 = i90;
                } else {
                    i67 = i90;
                    if (i67 == i80 && f10 == f12) {
                        i69 = i89;
                        if (i69 != i86 || ((i70 = this.f4183C) != 1 && i70 != 3)) {
                            i68 = i85;
                        }
                    } else {
                        i68 = i85;
                        i69 = i89;
                    }
                    f = f6;
                    if (i67 == i80 || f10 != f12 || i69 != i86 || ((i72 = this.f4183C) != 2 && i72 != 3)) {
                        if (i76 == i80 || f9 != f12 || i77 != i86 || ((i71 = this.f4183C) != 1 && i71 != 3)) {
                            f5 = f9;
                            i54 = i67;
                            i55 = i69;
                            i56 = i77;
                            i61 = i11;
                            i60 = i68;
                            i59 = i86;
                            i58 = i80;
                        }
                        i62 = i91;
                        i63 = i76;
                    }
                    float f13 = i91;
                    int i93 = i68;
                    canvas.drawCircle(f13, i93 - f, this.f4219m, this.f4194O);
                    f5 = f9;
                    i54 = i67;
                    i55 = i69;
                    i56 = i77;
                    i61 = i11;
                    i58 = i80;
                    i59 = i86;
                    i60 = i93;
                    i62 = i91;
                    i63 = i76;
                }
                f = f6;
                i68 = i85;
                canvas.drawCircle(i91, i85 - f6, this.f4219m, this.f4193N);
                paint3.setColor(i14);
                if (i67 == i80) {
                    if (i76 == i80) {
                    }
                    f5 = f9;
                    i54 = i67;
                    i55 = i69;
                    i56 = i77;
                    i61 = i11;
                    i60 = i68;
                    i59 = i86;
                    i58 = i80;
                    i62 = i91;
                    i63 = i76;
                }
                int i94 = i10;
                if (this.f4183C == 0 && i59 == i94) {
                    paint3.setColor(i14);
                }
                canvas.drawText(String.format("%d", Integer.valueOf(i59)), i62, i60, paint3);
                i66 = i87 + 1;
                if (i66 != 7) {
                    i85 = i60 + this.f4215j;
                    i84++;
                    i87 = 0;
                } else {
                    i87 = i66;
                    i85 = i60;
                }
                i86 = i59 + 1;
                i7 = i94;
                i75 = i65;
                i6 = i61;
                i77 = i56;
                i79 = i55;
                iB = i8;
                i80 = i58;
                f6 = f;
                i76 = i63;
                f9 = f5;
                i78 = i54;
            } else {
                int i95 = i85;
                int i96 = i80;
                f = f6;
                if (i11 < i86) {
                    i57 = i10;
                    if (i86 < i57) {
                        float f14 = i91 - i92;
                        int i97 = i86;
                        float f15 = (i95 - f) - this.f4219m;
                        f5 = f9;
                        i59 = i97;
                        i54 = i90;
                        i60 = i95;
                        i58 = i96;
                        i63 = i76;
                        i64 = -1;
                        i56 = i77;
                        i61 = i11;
                        i55 = i89;
                        i62 = i91;
                        canvas.drawRect(f14, f15, (i92 * 2) + f14, f15 + (r1 * 2), this.f4193N);
                        paint3.setColor(i14);
                        if (i61 == i64 && i61 == i57 && i59 == i61) {
                            canvas.drawCircle(i62, i60 - f, this.f4219m, this.f4193N);
                            paint3.setColor(i14);
                            i10 = i57;
                        } else {
                            if (i57 != i59) {
                                float f16 = i60 - f;
                                float f17 = this.f ? i62 : i62 - i92;
                                float f18 = f16 - this.f4219m;
                                i65 = i92;
                                i10 = i57;
                                canvas.drawRect(f17, f18, i92 + f17, f18 + (r1 * 2), this.f4193N);
                                canvas.drawCircle(i62, f16, this.f4219m, this.f4193N);
                                paint3.setColor(i14);
                            } else {
                                i10 = i57;
                                i65 = i92;
                                if (i61 == i59) {
                                    float f19 = i60 - f;
                                    float f20 = this.f ? i62 - i65 : i62;
                                    float f21 = f19 - this.f4219m;
                                    canvas.drawRect(f20, f21, i65 + f20, f21 + (r1 * 2), this.f4193N);
                                    canvas.drawCircle(i62, f19, this.f4219m, this.f4193N);
                                    paint3.setColor(i14);
                                }
                            }
                            int i942 = i10;
                            if (this.f4183C == 0) {
                                paint3.setColor(i14);
                            }
                            canvas.drawText(String.format("%d", Integer.valueOf(i59)), i62, i60, paint3);
                            i66 = i87 + 1;
                            if (i66 != 7) {
                            }
                            i86 = i59 + 1;
                            i7 = i942;
                            i75 = i65;
                            i6 = i61;
                            i77 = i56;
                            i79 = i55;
                            iB = i8;
                            i80 = i58;
                            f6 = f;
                            i76 = i63;
                            f9 = f5;
                            i78 = i54;
                        }
                    } else {
                        f5 = f9;
                        i54 = i90;
                        i55 = i89;
                        i56 = i77;
                    }
                } else {
                    f5 = f9;
                    i54 = i90;
                    i55 = i89;
                    i56 = i77;
                    i57 = i10;
                }
                i58 = i96;
                i59 = i86;
                i60 = i95;
                i61 = i11;
                i62 = i91;
                i63 = i76;
                i64 = -1;
                if (i61 == i64) {
                }
                if (i57 != i59) {
                }
                int i9422 = i10;
                if (this.f4183C == 0) {
                }
                canvas.drawText(String.format("%d", Integer.valueOf(i59)), i62, i60, paint3);
                i66 = i87 + 1;
                if (i66 != 7) {
                }
                i86 = i59 + 1;
                i7 = i9422;
                i75 = i65;
                i6 = i61;
                i77 = i56;
                i79 = i55;
                iB = i8;
                i80 = i58;
                f6 = f;
                i76 = i63;
                f9 = f5;
                i78 = i54;
            }
            i65 = i92;
            int i94222 = i10;
            if (this.f4183C == 0) {
            }
            canvas.drawText(String.format("%d", Integer.valueOf(i59)), i62, i60, paint3);
            i66 = i87 + 1;
            if (i66 != 7) {
            }
            i86 = i59 + 1;
            i7 = i94222;
            i75 = i65;
            i6 = i61;
            i77 = i56;
            i79 = i55;
            iB = i8;
            i80 = i58;
            f6 = f;
            i76 = i63;
            f9 = f5;
            i78 = i54;
        }
        int i98 = i75;
        float f22 = f6;
        int i99 = i10;
        int i100 = i11;
        int i101 = i85;
        boolean z6 = this.f4214i0;
        int i102 = this.f4205d;
        Calendar calendar3 = this.f4199V;
        if (z6) {
            i15 = 11;
            i16 = i13;
            iArr2 = iArr;
            i17 = i102;
            i18 = i9;
            i19 = i100;
            i20 = i14;
            i21 = 7;
            calendar = calendar3;
            i22 = i12;
            str = "%d";
        } else {
            int i103 = this.f4211h;
            Calendar calendar4 = calendar3;
            int i104 = i103 + 1;
            String str4 = "%d";
            int i105 = this.f4213i;
            if (i104 > 11) {
                i34 = i105 + 1;
                i104 = 0;
            } else {
                i34 = i105;
            }
            if (this.f4206d0) {
                int i106 = i103 + (!this.k0 ? 1 : 0);
                if (i106 > 11) {
                    i36 = i105 + 1;
                    i35 = 1;
                    i104 = 0;
                } else {
                    i104 = i106;
                    i36 = i105;
                    i35 = 1;
                }
            } else {
                i35 = 1;
                i36 = i34;
            }
            int i107 = i35;
            int i108 = i84;
            while (i108 != 6) {
                int i109 = (((this.f ? (6 - i87) * 2 : i87 * 2) + 1) * i98) + i13;
                int i110 = i36;
                int i111 = i104;
                this.f4191L.setColor(iArr[(i87 + this.f4186G) % 7]);
                this.f4191L.setAlpha(i102);
                if (this.f4183C == 0 || i99 != this.f4187H + 1) {
                    i37 = i102;
                    i38 = i9;
                    i39 = i99;
                    i40 = i100;
                    i41 = i14;
                    i42 = i110;
                    i43 = i111;
                    str3 = str4;
                    i44 = i107;
                    i45 = i109;
                } else {
                    int i112 = i107;
                    if (i112 < this.f4226u || !g()) {
                        i37 = i102;
                        i38 = i9;
                        i39 = i99;
                        i40 = i100;
                        i41 = i14;
                        i42 = i110;
                        i43 = i111;
                        str3 = str4;
                        i45 = i109;
                        i44 = i112;
                        i46 = i108;
                        i47 = i12;
                        i48 = i13;
                        iArr3 = iArr;
                        float f23 = i45 - i98;
                        float f24 = (i101 - f22) - this.f4219m;
                        canvas.drawRect(f23, f24, f23 + (i98 * 2), f24 + (r3 * 2), this.f4193N);
                    } else if (i112 == this.f4226u) {
                        float f25 = i101 - f22;
                        float f26 = this.f ? i109 : i109 - i98;
                        int i113 = i108;
                        float f27 = f25 - this.f4219m;
                        i40 = i100;
                        i42 = i110;
                        iArr3 = iArr;
                        i41 = i14;
                        i45 = i109;
                        i38 = i9;
                        i44 = i112;
                        i39 = i99;
                        i43 = i111;
                        str3 = str4;
                        i46 = i113;
                        i37 = i102;
                        i47 = i12;
                        i48 = i13;
                        canvas.drawRect(f26, f27, f26 + i98, f27 + (r2 * 2), this.f4193N);
                        canvas.drawCircle(i45, f25, this.f4219m, this.f4193N);
                    } else {
                        i37 = i102;
                        i38 = i9;
                        i39 = i99;
                        i40 = i100;
                        i41 = i14;
                        i42 = i110;
                        i43 = i111;
                        str3 = str4;
                        i45 = i109;
                        i44 = i112;
                    }
                    if (this.f4206d0) {
                        calendar4.clear();
                        calendar2 = calendar4;
                        calendar2.set(i42, i43, i44);
                        if (calendar2.after(this.f4198U)) {
                            this.f4191L.setAlpha(i47);
                        }
                    } else {
                        calendar2 = calendar4;
                    }
                    if (j(i42, i43, i44)) {
                        i49 = i37;
                    } else {
                        i49 = i37;
                        this.f4195Q.setAlpha(i49);
                        canvas.drawCircle(i45, i101 - f22, this.f4219m - i38, this.f4195Q);
                    }
                    paint = this.f4191L;
                    if (this.f4190K && paint.getAlpha() != i47) {
                        this.f4192M.setColor(this.f4191L.getColor());
                        paint = this.f4192M;
                    }
                    if (this.f4183C == 0) {
                        i50 = i39;
                        if (i50 != this.f4187H + 1 || (i44 > this.f4226u && g())) {
                            i51 = i41;
                        } else {
                            i51 = i41;
                            paint.setColor(i51);
                        }
                    } else {
                        i50 = i39;
                        i51 = i41;
                    }
                    String str5 = str3;
                    int i114 = i51;
                    canvas.drawText(String.format(str5, Integer.valueOf(i44)), i45, i101, paint);
                    i52 = i87 + 1;
                    if (i52 != 7) {
                        i101 += this.f4215j;
                        i53 = i46 + 1;
                        i87 = 0;
                    } else {
                        i87 = i52;
                        i53 = i46;
                    }
                    i107 = i44 + 1;
                    calendar4 = calendar2;
                    i104 = i43;
                    iArr = iArr3;
                    i9 = i38;
                    i14 = i114;
                    i99 = i50;
                    i108 = i53;
                    i36 = i42;
                    i100 = i40;
                    int i115 = i48;
                    str4 = str5;
                    i12 = i47;
                    i102 = i49;
                    i13 = i115;
                }
                i46 = i108;
                i47 = i12;
                i48 = i13;
                iArr3 = iArr;
                if (this.f4206d0) {
                }
                if (j(i42, i43, i44)) {
                }
                paint = this.f4191L;
                if (this.f4190K) {
                    this.f4192M.setColor(this.f4191L.getColor());
                    paint = this.f4192M;
                }
                if (this.f4183C == 0) {
                }
                String str52 = str3;
                int i1142 = i51;
                canvas.drawText(String.format(str52, Integer.valueOf(i44)), i45, i101, paint);
                i52 = i87 + 1;
                if (i52 != 7) {
                }
                i107 = i44 + 1;
                calendar4 = calendar2;
                i104 = i43;
                iArr = iArr3;
                i9 = i38;
                i14 = i1142;
                i99 = i50;
                i108 = i53;
                i36 = i42;
                i100 = i40;
                int i1152 = i48;
                str4 = str52;
                i12 = i47;
                i102 = i49;
                i13 = i1152;
            }
            iArr2 = iArr;
            i18 = i9;
            i19 = i100;
            i20 = i14;
            calendar = calendar4;
            i21 = 7;
            i15 = 11;
            int i116 = i102;
            i22 = i12;
            str = str4;
            i16 = i13;
            i17 = i116;
        }
        if (i8 <= 0 || this.f4212h0) {
            return;
        }
        Calendar calendar5 = Calendar.getInstance();
        calendar5.clear();
        calendar5.set(this.f4213i, this.f4211h, 1);
        int i117 = i8;
        calendar5.add(5, -i117);
        int i118 = this.f4211h - 1;
        int i119 = this.f4213i;
        if (i118 < 0) {
            i119--;
            i118 = i15;
        }
        int iE = calendar5.get(5);
        if (this.f4206d0) {
            int i120 = this.f4213i;
            i23 = 1;
            i118 = this.f4211h - (!this.f4208e0 ? 1 : 0);
            if (i118 < 0) {
                i119 = i120 - 1;
                i118 = i15;
            } else {
                i119 = i120;
            }
            iE = (e(i118, this.f4216j0, i119) - i117) + 1;
        } else {
            i23 = 1;
        }
        int i121 = i118;
        int i122 = i119;
        int i123 = iE;
        int i124 = 0;
        while (i124 < i117) {
            int i125 = (((this.f ? (6 - i124) * 2 : i124 * 2) + i23) * i98) + i16;
            int i126 = (this.f4215j * 2) / 3;
            this.f4191L.setColor(iArr2[(this.f4186G + i124) % i21]);
            this.f4191L.setAlpha(i17);
            if (this.f4183C == 0 || i19 != 0) {
                i24 = i124;
                i25 = i123;
                str2 = str;
                i26 = i17;
                i27 = i22;
                i28 = i117;
                i29 = i125;
                i30 = i122;
            } else if (i123 > this.f4222q || !h()) {
                i24 = i124;
                i25 = i123;
                str2 = str;
                i26 = i17;
                i27 = i22;
                i28 = i117;
                i29 = i125;
                i30 = i122;
                float f28 = i29 - i98;
                float f29 = (i126 - f22) - this.f4219m;
                canvas.drawRect(f28, f29, f28 + (i98 * 2), f29 + (r3 * 2), this.f4193N);
            } else if (i123 == this.f4222q) {
                float f30 = i126 - f22;
                float f31 = this.f ? i125 - i98 : i125;
                i24 = i124;
                float f32 = f30 - this.f4219m;
                i28 = i117;
                i29 = i125;
                float f33 = f31;
                i25 = i123;
                i27 = i22;
                i30 = i122;
                str2 = str;
                i26 = i17;
                canvas.drawRect(f33, f32, f31 + i98, f32 + (r1 * 2), this.f4193N);
                canvas.drawCircle(i29, f30, this.f4219m, this.f4193N);
            }
            if (this.f4206d0) {
                i31 = i27;
            } else {
                calendar.clear();
                calendar.set(i30, i121, i25);
                Calendar calendar6 = Calendar.getInstance();
                calendar6.clear();
                calendar6.set(this.f4197T.get(1), this.f4197T.get(2), this.f4197T.get(5));
                if (calendar.before(this.f4197T)) {
                    i31 = i27;
                    this.f4191L.setAlpha(i31);
                } else {
                    i31 = i27;
                }
            }
            if (j(i30, i121, i25)) {
                i32 = i26;
                this.f4195Q.setAlpha(i32);
                canvas.drawCircle(i29, i126 - f22, this.f4219m - i18, this.f4195Q);
            } else {
                i32 = i26;
            }
            Paint paint4 = this.f4191L;
            if (this.f4190K && paint4.getAlpha() != i31) {
                this.f4192M.setColor(this.f4191L.getColor());
                paint4 = this.f4192M;
            }
            if (this.f4183C == 0 || i19 != 0 || (i25 < this.f4222q && h())) {
                i33 = i20;
            } else {
                i33 = i20;
                paint4.setColor(i33);
            }
            String str6 = str2;
            canvas.drawText(String.format(str6, Integer.valueOf(i25)), i29, i126, paint4);
            int i127 = i25 + 1;
            i20 = i33;
            i117 = i28;
            i23 = 1;
            i21 = 7;
            i123 = i127;
            int i128 = i30;
            i22 = i31;
            i124 = i24 + 1;
            str = str6;
            i17 = i32;
            i122 = i128;
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int i9;
        int i10;
        boolean z5 = this.m0;
        E e5 = this.f4201a0;
        if (!z5 && this.l0 == -1 && (i10 = this.f4185F) != -1) {
            e5.y(b() + i10, NetworkAnalyticsConstants.DataPoints.FLAG_UID);
        } else if (!z5 && (i9 = this.l0) != -1) {
            e5.y(b() + i9, NetworkAnalyticsConstants.DataPoints.FLAG_UID);
        }
        if (z4) {
            e5.p();
        }
        super.onLayout(z4, i5, i6, i7, i8);
    }

    @Override // android.view.View
    public final void onMeasure(int i5, int i6) {
        int i7 = this.f4217k;
        if (i7 != -1) {
            int size = View.MeasureSpec.getSize(i5);
            int mode = View.MeasureSpec.getMode(i5);
            if (mode == Integer.MIN_VALUE) {
                int iMin = Math.min(size, i7);
                this.f4217k = iMin;
                i5 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
            } else if (mode == 0) {
                i5 = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
            } else {
                if (mode != 1073741824) {
                    throw new IllegalArgumentException(B.f.t(mode, "Unknown measure mode: "));
                }
                this.f4217k = size;
            }
        }
        super.onMeasure(i5, i6);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i5, int i6, int i7, int i8) {
        this.f4201a0.p();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            int iC = c(motionEvent.getX(), motionEvent.getY());
            if ((this.f4212h0 && iC < this.f4188I) || (this.f4214i0 && iC > this.f4189J)) {
                return true;
            }
            int i5 = 11;
            if (iC > 0) {
                int i6 = this.f4187H;
                if (iC <= i6) {
                    int i7 = this.f4213i;
                    int i8 = this.f4211h;
                    if (this.f4202b0 != null) {
                        playSoundEffect(0);
                        ((SeslDatePicker) this.f4202b0).k(this, i7, i8, iC);
                    }
                    this.f4201a0.y(b() + iC, 1);
                } else if (this.f4206d0) {
                    int i9 = this.f4213i;
                    int i10 = this.f4211h + (!this.k0 ? 1 : 0);
                    if (i10 > 11) {
                        i9++;
                        i10 = 0;
                    }
                    k(i9, i10, iC - i6, false);
                } else {
                    Calendar calendar = Calendar.getInstance();
                    calendar.clear();
                    calendar.set(this.f4213i, this.f4211h, this.f4187H);
                    calendar.add(5, iC - this.f4187H);
                    k(calendar.get(1), calendar.get(2), calendar.get(5), false);
                }
            } else if (this.f4206d0) {
                int i11 = this.f4213i;
                int i12 = this.f4211h - (!this.f4208e0 ? 1 : 0);
                if (i12 < 0) {
                    i11--;
                } else {
                    i5 = i12;
                }
                k(i11, i5, e(i5, this.f4216j0, i11) + iC, true);
            } else {
                Calendar calendar2 = Calendar.getInstance();
                calendar2.clear();
                calendar2.set(this.f4213i, this.f4211h, 1);
                calendar2.add(5, iC - 1);
                k(calendar2.get(1), calendar2.get(2), calendar2.get(5), true);
            }
        }
        return true;
    }

    @Override // android.view.View
    public final void setAccessibilityDelegate(View.AccessibilityDelegate accessibilityDelegate) {
        if (this.f4204c0) {
            return;
        }
        super.setAccessibilityDelegate(accessibilityDelegate);
    }
}
