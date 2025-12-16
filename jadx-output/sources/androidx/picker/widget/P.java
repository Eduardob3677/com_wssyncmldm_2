package androidx.picker.widget;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.icu.text.SimpleDateFormat;
import android.media.AudioManager;
import android.os.Build;
import android.provider.Settings;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.EditText;
import android.widget.OverScroller;
import android.widget.Scroller;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import com.wssyncmldm.R;
import e0.AbstractC0414a;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import o3.AbstractC0729f;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public final class P extends I {

    /* renamed from: A, reason: collision with root package name */
    public float f4249A;

    /* renamed from: A0, reason: collision with root package name */
    public final float f4250A0;

    /* renamed from: B, reason: collision with root package name */
    public N f4251B;
    public final ValueAnimator B0;

    /* renamed from: C, reason: collision with root package name */
    public float f4252C;

    /* renamed from: C0, reason: collision with root package name */
    public final ValueAnimator f4253C0;

    /* renamed from: D, reason: collision with root package name */
    public long f4254D;

    /* renamed from: D0, reason: collision with root package name */
    public final ValueAnimator f4255D0;
    public float E;

    /* renamed from: E0, reason: collision with root package name */
    public final ValueAnimator f4256E0;

    /* renamed from: F, reason: collision with root package name */
    public VelocityTracker f4257F;

    /* renamed from: F0, reason: collision with root package name */
    public final V.e f4258F0;

    /* renamed from: G, reason: collision with root package name */
    public final int f4259G;

    /* renamed from: G0, reason: collision with root package name */
    public boolean f4260G0;

    /* renamed from: H, reason: collision with root package name */
    public final int f4261H;

    /* renamed from: H0, reason: collision with root package name */
    public c1.w f4262H0;

    /* renamed from: I, reason: collision with root package name */
    public final int f4263I;

    /* renamed from: I0, reason: collision with root package name */
    public final AccessibilityManager f4264I0;

    /* renamed from: J, reason: collision with root package name */
    public final int f4265J;

    /* renamed from: J0, reason: collision with root package name */
    public final L f4266J0;

    /* renamed from: K, reason: collision with root package name */
    public int f4267K;

    /* renamed from: K0, reason: collision with root package name */
    public final L f4268K0;

    /* renamed from: L, reason: collision with root package name */
    public boolean f4269L;

    /* renamed from: L0, reason: collision with root package name */
    public final M f4270L0;

    /* renamed from: M, reason: collision with root package name */
    public boolean f4271M;

    /* renamed from: M0, reason: collision with root package name */
    public final z f4272M0;

    /* renamed from: N, reason: collision with root package name */
    public int f4273N;

    /* renamed from: O, reason: collision with root package name */
    public int f4274O;

    /* renamed from: P, reason: collision with root package name */
    public int f4275P;

    /* renamed from: Q, reason: collision with root package name */
    public int f4276Q;

    /* renamed from: R, reason: collision with root package name */
    public boolean f4277R;

    /* renamed from: S, reason: collision with root package name */
    public boolean f4278S;

    /* renamed from: T, reason: collision with root package name */
    public int f4279T;

    /* renamed from: U, reason: collision with root package name */
    public boolean f4280U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f4281V;

    /* renamed from: W, reason: collision with root package name */
    public boolean f4282W;

    /* renamed from: X, reason: collision with root package name */
    public int f4283X;

    /* renamed from: Y, reason: collision with root package name */
    public A f4284Y;

    /* renamed from: Z, reason: collision with root package name */
    public final O f4285Z;

    /* renamed from: a0, reason: collision with root package name */
    public final AudioManager f4286a0;

    /* renamed from: b0, reason: collision with root package name */
    public final B f4287b0;

    /* renamed from: c, reason: collision with root package name */
    public final String f4288c;

    /* renamed from: c0, reason: collision with root package name */
    public final int f4289c0;

    /* renamed from: d, reason: collision with root package name */
    public final EditText f4290d;

    /* renamed from: d0, reason: collision with root package name */
    public final int f4291d0;

    /* renamed from: e, reason: collision with root package name */
    public final int f4292e;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f4293e0;
    public final int f;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f4294f0;

    /* renamed from: g, reason: collision with root package name */
    public final int f4295g;
    public boolean g0;

    /* renamed from: h, reason: collision with root package name */
    public int f4296h;

    /* renamed from: h0, reason: collision with root package name */
    public final Scroller f4297h0;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f4298i;

    /* renamed from: i0, reason: collision with root package name */
    public final Scroller f4299i0;

    /* renamed from: j, reason: collision with root package name */
    public final int f4300j;

    /* renamed from: j0, reason: collision with root package name */
    public int f4301j0;

    /* renamed from: k, reason: collision with root package name */
    public final Calendar f4302k;
    public final int k0;

    /* renamed from: l, reason: collision with root package name */
    public final Calendar f4303l;
    public boolean l0;

    /* renamed from: m, reason: collision with root package name */
    public final Calendar f4304m;
    public boolean m0;
    public final C0164f n;
    public Typeface n0;

    /* renamed from: o, reason: collision with root package name */
    public long f4305o;
    public Typeface o0;

    /* renamed from: p, reason: collision with root package name */
    public final HashMap f4306p;

    /* renamed from: p0, reason: collision with root package name */
    public Typeface f4307p0;

    /* renamed from: q, reason: collision with root package name */
    public final Calendar[] f4308q;
    public final Typeface q0;

    /* renamed from: r, reason: collision with root package name */
    public final Paint f4309r;
    public final float r0;

    /* renamed from: s, reason: collision with root package name */
    public final ColorDrawable f4310s;
    public int s0;

    /* renamed from: t, reason: collision with root package name */
    public int f4311t;
    public int t0;

    /* renamed from: u, reason: collision with root package name */
    public int f4312u;
    public boolean u0;

    /* renamed from: v, reason: collision with root package name */
    public int f4313v;

    /* renamed from: v0, reason: collision with root package name */
    public final PathInterpolator f4314v0;

    /* renamed from: w, reason: collision with root package name */
    public Scroller f4315w;

    /* renamed from: w0, reason: collision with root package name */
    public final PathInterpolator f4316w0;

    /* renamed from: x, reason: collision with root package name */
    public final OverScroller f4317x;

    /* renamed from: x0, reason: collision with root package name */
    public final float f4318x0;

    /* renamed from: y, reason: collision with root package name */
    public final Scroller f4319y;

    /* renamed from: y0, reason: collision with root package name */
    public final float f4320y0;

    /* renamed from: z, reason: collision with root package name */
    public int f4321z;

    /* renamed from: z0, reason: collision with root package name */
    public float f4322z0;

    /* JADX WARN: Removed duplicated region for block: B:76:0x0397  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public P(SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner, Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        int iA;
        int iIntValue;
        Typeface typefaceCreateFromFile;
        int i5;
        int i6 = 0;
        this.f4233b = seslSpinningDatePickerSpinner;
        this.f4232a = context;
        this.f4305o = 300L;
        this.f4306p = new HashMap();
        this.f4308q = new Calendar[5];
        this.f4312u = Integer.MIN_VALUE;
        this.f4267K = 0;
        this.f4276Q = 1;
        this.f4293e0 = false;
        this.f4294f0 = false;
        this.g0 = false;
        this.l0 = false;
        this.u0 = false;
        this.f4314v0 = new PathInterpolator(0.5f, 0.0f, 0.4f, 1.0f);
        this.f4316w0 = new PathInterpolator(0.17f, 0.17f, 0.83f, 0.83f);
        this.f4318x0 = 0.4f;
        this.f4320y0 = 0.1f;
        this.f4322z0 = 0.1f;
        this.f4250A0 = 1.0f;
        this.f4266J0 = new L(this, i6);
        this.f4268K0 = new L(this, 1);
        this.f4270L0 = new M(i6, this);
        this.f4272M0 = new z(1, this);
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.sesl_number_picker_spinner_height);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.sesl_number_picker_spinner_width);
        this.r0 = resources.getDimensionPixelSize(R.dimen.sesl_number_picker_spinner_edit_text_height) / dimensionPixelSize;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0414a.f6803b, 0, 0);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1);
        this.f4292e = dimensionPixelSize3;
        int dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, dimensionPixelSize);
        this.f = dimensionPixelSize4;
        int dimensionPixelSize5 = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, dimensionPixelSize2);
        this.f4295g = dimensionPixelSize5;
        this.f4296h = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        typedArrayObtainStyledAttributes.recycle();
        this.f4304m = f(this.f4304m, Locale.getDefault());
        Calendar calendarF = f(this.f4302k, Locale.getDefault());
        this.f4302k = calendarF;
        Calendar calendarF2 = f(this.f4303l, Locale.getDefault());
        this.f4303l = calendarF2;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, AbstractC0414a.f6802a, 0, 0);
        try {
            calendarF.set(typedArrayObtainStyledAttributes2.getInt(0, 1902), 0, 1);
            calendarF2.set(typedArrayObtainStyledAttributes2.getInt(1, 2100), 11, 31);
            if (dimensionPixelSize3 != -1 && dimensionPixelSize4 != -1 && dimensionPixelSize3 > dimensionPixelSize4) {
                throw new IllegalArgumentException("minHeight > maxHeight");
            }
            if (dimensionPixelSize5 != -1 && (i5 = this.f4296h) != -1 && dimensionPixelSize5 > i5) {
                throw new IllegalArgumentException("minWidth > maxWidth");
            }
            this.f4265J = (int) TypedValue.applyDimension(1, 2.0f, resources.getDisplayMetrics());
            this.f4298i = this.f4296h == -1;
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.colorPrimaryDark, typedValue, true);
            int i7 = typedValue.resourceId;
            if (i7 != 0) {
                ThreadLocal threadLocal = A.r.f36a;
                iA = A.l.a(resources, i7, null);
            } else {
                iA = typedValue.data;
            }
            this.f4310s = new ColorDrawable((iA & 16777215) | 855638016);
            if (!W1.a.S(context)) {
                this.f4320y0 = 0.2f;
                this.f4322z0 = 0.2f;
            }
            this.f4285Z = new O(i6, this);
            seslSpinningDatePickerSpinner.setWillNotDraw(false);
            ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.sesl_spinning_date_picker_spinner, (ViewGroup) seslSpinningDatePickerSpinner, true);
            EditText editText = (EditText) seslSpinningDatePickerSpinner.findViewById(R.id.datepicker_input);
            this.f4290d = editText;
            editText.setIncludeFontPadding(false);
            Typeface typefaceDefaultFromStyle = Typeface.defaultFromStyle(1);
            this.q0 = typefaceDefaultFromStyle;
            Typeface typefaceCreate = Typeface.create("sec-roboto-condensed-light", 1);
            if (Build.VERSION.SDK_INT >= 34) {
                this.n0 = Typeface.create(Typeface.create("sec", 0), 600, false);
            } else {
                this.n0 = Typeface.create("sec-roboto-light", 1);
            }
            if (typefaceDefaultFromStyle.equals(this.n0)) {
                if (typefaceCreate.equals(this.n0)) {
                    this.n0 = Typeface.create("sans-serif-thin", 1);
                } else {
                    this.n0 = typefaceCreate;
                }
            }
            this.o0 = Typeface.create(this.n0, 0);
            if (Z0.j.R(resources.getConfiguration())) {
                this.f4320y0 = 0.2f;
                this.f4322z0 = 0.2f;
            } else {
                String string = Settings.System.getString(context.getContentResolver(), "theme_font_clock");
                if (string != null && !string.isEmpty()) {
                    if (new File(string).exists()) {
                        try {
                            typefaceCreateFromFile = Typeface.createFromFile(string);
                        } catch (Exception unused) {
                        }
                        this.n0 = typefaceCreateFromFile;
                        this.o0 = Typeface.create(typefaceCreateFromFile, 0);
                    } else {
                        typefaceCreateFromFile = null;
                        this.n0 = typefaceCreateFromFile;
                        this.o0 = Typeface.create(typefaceCreateFromFile, 0);
                    }
                }
            }
            if (i()) {
                Typeface typeface = this.q0;
                this.n0 = typeface;
                this.o0 = Typeface.create(typeface, 0);
            }
            this.m0 = AbstractC0739a.l(this.f4290d);
            this.f4307p0 = Typeface.create(this.n0, 1);
            TypedValue.applyDimension(1, 2.0f, this.f4232a.getResources().getDisplayMetrics());
            p();
            ColorStateList textColors = this.f4290d.getTextColors();
            ((SeslSpinningDatePickerSpinner) this.f4233b).getClass();
            int colorForState = textColors.getColorForState(SeslSpinningDatePickerSpinner.a(), -1);
            Resources.Theme theme = context.getTheme();
            ThreadLocal threadLocal2 = A.r.f36a;
            int iA2 = A.l.a(resources, R.color.sesl_number_picker_text_color_scroll, theme);
            this.k0 = iA2;
            this.f4301j0 = colorForState;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.f4259G = viewConfiguration.getScaledTouchSlop();
            this.f4261H = viewConfiguration.getScaledMinimumFlingVelocity() * 2;
            this.f4263I = viewConfiguration.getScaledMaximumFlingVelocity() / 4;
            int textSize = (int) this.f4290d.getTextSize();
            this.f4300j = textSize;
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTextSize(textSize);
            paint.setTypeface(this.n0);
            paint.setColor(this.f4301j0);
            this.f4309r = paint;
            this.f4250A0 = paint.getAlpha() / 255.0f;
            this.f4297h0 = new Scroller(this.f4232a, this.f4314v0, true);
            Scroller scroller = new Scroller(this.f4232a, null, true);
            this.f4299i0 = scroller;
            this.f4315w = scroller;
            this.f4319y = new Scroller(this.f4232a, new PathInterpolator(0.4f, 0.0f, 0.3f, 1.0f));
            this.f4317x = new OverScroller(this.f4232a, new DecelerateInterpolator());
            V.e eVar = new V.e(new V.d());
            this.f4258F0 = eVar;
            eVar.f2772j = new V.f();
            eVar.f2769g = 1.0f;
            M m5 = this.f4270L0;
            if (eVar.f2768e) {
                throw new UnsupportedOperationException("Error: Update listeners must be added beforethe animation.");
            }
            ArrayList arrayList = eVar.f2771i;
            if (!arrayList.contains(m5)) {
                arrayList.add(m5);
            }
            z zVar = this.f4272M0;
            ArrayList arrayList2 = eVar.f2770h;
            if (!arrayList2.contains(zVar)) {
                arrayList2.add(zVar);
            }
            V.f fVar = eVar.f2772j;
            fVar.getClass();
            fVar.f2774a = Math.sqrt(7.0f);
            fVar.f2776c = false;
            V.f fVar2 = eVar.f2772j;
            fVar2.f2775b = 0.99f;
            fVar2.f2776c = false;
            C0164f c0164f = SeslSpinningDatePickerSpinner.f4456d;
            if (c0164f != this.n) {
                this.n = c0164f;
                h();
            }
            ((SeslSpinningDatePickerSpinner) this.f4233b).setVerticalScrollBarEnabled(false);
            if (((SeslSpinningDatePickerSpinner) this.f4233b).getImportantForAccessibility() == 0) {
                ((SeslSpinningDatePickerSpinner) this.f4233b).setImportantForAccessibility(1);
            }
            this.f4286a0 = (AudioManager) this.f4232a.getSystemService("audio");
            B b3 = new B(1);
            b3.f4087d = false;
            this.f4287b0 = b3;
            this.f4289c0 = AbstractC0729f.s(32);
            Field fieldL = i3.x.L("SOUND_TIME_PICKER_SCROLL");
            if (fieldL != null) {
                Object objA = i3.x.A(null, fieldL);
                iIntValue = objA instanceof Integer ? ((Integer) objA).intValue() : 0;
            }
            this.f4291d0 = iIntValue;
            ((SeslSpinningDatePickerSpinner) this.f4233b).setFocusableInTouchMode(false);
            ((SeslSpinningDatePickerSpinner) this.f4233b).setDescendantFocusability(NetworkAnalyticsConstants.DataPoints.FLAG_PPID);
            ((SeslSpinningDatePickerSpinner) this.f4233b).setDefaultFocusHighlightEnabled(false);
            this.f4288c = "";
            EditText editText2 = this.f4290d;
            Method methodJ = i3.x.J(View.class, "hidden_semSetDirectPenInputEnabled", Boolean.TYPE);
            if (methodJ != null) {
                i3.x.j0(editText2, methodJ, Boolean.FALSE);
            }
            this.f4264I0 = (AccessibilityManager) this.f4232a.getSystemService("accessibility");
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f4318x0, this.f4320y0);
            this.f4253C0 = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setInterpolator(this.f4316w0);
            valueAnimatorOfFloat.setDuration(200L);
            valueAnimatorOfFloat.setStartDelay(100L);
            valueAnimatorOfFloat.addUpdateListener(this.f4266J0);
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.f4320y0, this.f4318x0);
            this.B0 = valueAnimatorOfFloat2;
            valueAnimatorOfFloat2.setInterpolator(this.f4316w0);
            valueAnimatorOfFloat2.setDuration(200L);
            valueAnimatorOfFloat2.addUpdateListener(this.f4266J0);
            ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(colorForState), Integer.valueOf(iA2));
            this.f4255D0 = valueAnimatorOfObject;
            valueAnimatorOfObject.setInterpolator(this.f4316w0);
            valueAnimatorOfObject.setDuration(200L);
            valueAnimatorOfObject.addUpdateListener(this.f4268K0);
            ValueAnimator valueAnimatorOfObject2 = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(iA2), Integer.valueOf(colorForState));
            this.f4256E0 = valueAnimatorOfObject2;
            valueAnimatorOfObject2.setInterpolator(this.f4316w0);
            valueAnimatorOfObject2.setDuration(200L);
            valueAnimatorOfObject2.setStartDelay(100L);
            valueAnimatorOfObject2.addUpdateListener(this.f4268K0);
            new DateFormatSymbols().getShortMonths();
            new DateFormatSymbols().getMonths();
        } finally {
            typedArrayObtainStyledAttributes2.recycle();
        }
    }

    public static Calendar f(Calendar calendar, Locale locale) {
        Calendar calendar2 = Calendar.getInstance(locale);
        if (calendar != null) {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        calendar2.set(11, 12);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        return calendar2;
    }

    public static boolean i() {
        String language = Locale.getDefault().getLanguage();
        return "ar".equals(language) || "fa".equals(language) || "my".equals(language);
    }

    public static int j(int i5, int i6) {
        if (i6 == -1) {
            return i5;
        }
        int size = View.MeasureSpec.getSize(i5);
        int mode = View.MeasureSpec.getMode(i5);
        if (mode == Integer.MIN_VALUE) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i6), 1073741824);
        }
        if (mode == 0) {
            return View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
        }
        if (mode == 1073741824) {
            return i5;
        }
        throw new IllegalArgumentException(B.f.t(mode, "Unknown measure mode: "));
    }

    public final void a(boolean z4) {
        int i5;
        if (!k(this.f4315w)) {
            k(this.f4319y);
        }
        this.f4321z = 0;
        this.f4276Q = 1;
        if (this.f4280U) {
            this.f4280U = false;
            this.f4281V = true;
        } else if (this.f4281V) {
            this.f4281V = false;
            this.f4282W = true;
            Calendar calendar = this.f4304m;
            if (calendar.get(5) % 10 == 0) {
                this.f4276Q = 10;
            } else if (z4) {
                this.f4276Q = 10 - (calendar.get(5) % 10);
            } else {
                this.f4276Q = calendar.get(5) % 10;
            }
        } else if (this.f4282W) {
            this.f4276Q = 10;
        }
        if (this.l0) {
            this.f4276Q = 1;
            this.f4305o = 300L;
            i5 = 100;
        } else {
            i5 = 500;
        }
        int i6 = i5;
        int i7 = this.f4276Q;
        this.f4283X = i7 - 1;
        if (z4) {
            this.f4315w.startScroll(0, 0, 0, (-this.f4311t) * i7, i6);
        } else {
            this.f4315w.startScroll(0, 0, 0, this.f4311t * i7, i6);
        }
        ((SeslSpinningDatePickerSpinner) this.f4233b).invalidate();
    }

    public final void b(Calendar calendar) {
        String dateTime;
        HashMap map = this.f4306p;
        if (((String) map.get(calendar)) != null) {
            return;
        }
        if (calendar.compareTo(this.f4302k) < 0 || calendar.compareTo(this.f4303l) > 0) {
            dateTime = "";
        } else {
            C0164f c0164f = this.n;
            if (c0164f == null) {
                dateTime = new SimpleDateFormat("EEE, MMM d", Locale.getDefault()).format(calendar.getTime());
            } else {
                Context context = this.f4232a;
                ((Object[]) c0164f.f4514a)[0] = calendar;
                dateTime = DateUtils.formatDateTime(context, calendar.getTimeInMillis(), 524314);
            }
        }
        map.put(calendar, dateTime);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001f A[PHI: r1
      0x001f: PHI (r1v5 int) = (r1v3 int), (r1v7 int) binds: [B:18:0x002d, B:12:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean c(int i5) {
        int i6;
        int i7 = this.f4312u;
        if (i7 == Integer.MIN_VALUE) {
            return false;
        }
        int i8 = i7 - this.f4313v;
        if (i8 == 0) {
            this.u0 = false;
            return false;
        }
        this.f4321z = 0;
        if (this.u0 || i5 == 0) {
            int iAbs = Math.abs(i8);
            i6 = this.f4311t;
            if (iAbs > i6 / 2) {
                if (i8 > 0) {
                    i6 = -i6;
                }
                i8 += i6;
            }
        } else {
            int iAbs2 = Math.abs(i5);
            i6 = this.f4311t;
            if (iAbs2 < i6) {
                if (i8 > 0) {
                }
                i8 += i6;
            }
        }
        this.f4319y.startScroll(0, 0, 0, i8, 300);
        ((SeslSpinningDatePickerSpinner) this.f4233b).invalidate();
        this.u0 = false;
        return true;
    }

    public final String d(Calendar calendar) {
        return this.n == null ? new SimpleDateFormat("EEE, MMM d", Locale.getDefault()).format(calendar.getTime()) : DateUtils.formatDateTime(this.f4232a, calendar.getTimeInMillis(), 26);
    }

    public final A e() {
        if (this.f4284Y == null) {
            this.f4284Y = new A(this);
        }
        return this.f4284Y;
    }

    public final Calendar g(Calendar calendar) {
        Calendar calendar2 = this.f4303l;
        int iCompareTo = calendar.compareTo(calendar2);
        Calendar calendar3 = this.f4302k;
        if (iCompareTo > 0) {
            Calendar calendar4 = (Calendar) calendar3.clone();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            calendar4.add(5, ((int) timeUnit.toDays(calendar.getTimeInMillis() - calendar3.getTimeInMillis())) % (((int) timeUnit.toDays(calendar2.getTimeInMillis() - calendar3.getTimeInMillis())) + 1));
            return calendar4;
        }
        if (calendar.compareTo(calendar3) >= 0) {
            return calendar;
        }
        Calendar calendar5 = (Calendar) calendar2.clone();
        TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
        calendar5.add(5, -(((int) timeUnit2.toDays(calendar2.getTimeInMillis() - calendar.getTimeInMillis())) % (((int) timeUnit2.toDays(calendar2.getTimeInMillis() - calendar3.getTimeInMillis())) + 1)));
        return calendar5;
    }

    public final void h() {
        this.f4306p.clear();
        int i5 = 0;
        while (true) {
            Calendar[] calendarArr = this.f4308q;
            if (i5 >= calendarArr.length) {
                return;
            }
            Calendar calendar = (Calendar) this.f4304m.clone();
            calendar.add(5, i5 - 2);
            calendarArr[i5] = calendar;
            b(calendar);
            i5++;
        }
    }

    public final boolean k(Scroller scroller) {
        scroller.forceFinished(true);
        int finalY = scroller.getFinalY() - scroller.getCurrY();
        int i5 = this.f4311t;
        if (i5 == 0) {
            return false;
        }
        int i6 = this.f4312u - (this.f4313v + finalY);
        if (i6 == 0) {
            return false;
        }
        int i7 = i6 % i5;
        int iAbs = Math.abs(i7);
        int i8 = this.f4311t;
        if (iAbs > i8 / 2) {
            i7 = i7 > 0 ? i7 - i8 : i7 + i8;
        }
        o(finalY + i7);
        return true;
    }

    public final void l(int i5) {
        if (this.f4267K == i5) {
            return;
        }
        this.f4267K = i5;
    }

    public final void m(long j3, boolean z4) {
        N n = this.f4251B;
        SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner = (SeslSpinningDatePickerSpinner) this.f4233b;
        if (n == null) {
            this.f4251B = new N(0, this);
        } else {
            seslSpinningDatePickerSpinner.removeCallbacks(n);
        }
        this.l0 = true;
        this.f4280U = true;
        N n5 = this.f4251B;
        n5.f4244d = z4;
        seslSpinningDatePickerSpinner.postDelayed(n5, j3);
    }

    public final void n() {
        if (this.l0) {
            this.l0 = false;
            this.f4313v = this.f4312u;
        }
        this.f4280U = false;
        this.f4281V = false;
        this.f4282W = false;
        this.f4276Q = 1;
        this.f4305o = 300L;
        N n = this.f4251B;
        if (n != null) {
            ((SeslSpinningDatePickerSpinner) this.f4233b).removeCallbacks(n);
        }
        this.f4285Z.a();
    }

    public final void o(int i5) {
        if (i5 == 0 || this.f4311t <= 0) {
            return;
        }
        int i6 = this.f4313v + i5;
        int i7 = this.f4312u;
        Calendar calendar = this.f4302k;
        Scroller scroller = this.f4319y;
        Calendar[] calendarArr = this.f4308q;
        if (i6 > i7 && calendarArr[2].compareTo(calendar) <= 0) {
            this.f4315w.abortAnimation();
            scroller.abortAnimation();
            this.f4317x.abortAnimation();
            this.f4258F0.b();
            this.f4260G0 = false;
            i5 = this.f4312u - this.f4313v;
        }
        int i8 = this.f4313v + i5;
        int i9 = this.f4312u;
        Calendar calendar2 = this.f4303l;
        if (i8 < i9 && calendarArr[2].compareTo(calendar2) >= 0) {
            this.f4315w.abortAnimation();
            scroller.abortAnimation();
            this.f4317x.abortAnimation();
            this.f4258F0.b();
            this.f4260G0 = false;
            i5 = this.f4312u - this.f4313v;
        }
        this.f4313v += i5;
        while (true) {
            int i10 = this.f4313v;
            if (i10 - this.f4312u < this.t0) {
                break;
            }
            this.f4313v = i10 - this.f4311t;
            System.arraycopy(calendarArr, 0, calendarArr, 1, calendarArr.length - 1);
            Calendar calendar3 = (Calendar) calendarArr[1].clone();
            calendar3.add(5, -1);
            calendarArr[0] = calendar3;
            b(calendar3);
            if (!this.f4294f0) {
                q(calendarArr[2]);
                this.u0 = true;
                int i11 = this.f4283X;
                if (i11 > 0) {
                    this.f4283X = i11 - 1;
                } else {
                    this.f4286a0.playSoundEffect(this.f4291d0);
                    B b3 = this.f4287b0;
                    if (!b3.f4087d) {
                        ((SeslSpinningDatePickerSpinner) this.f4233b).performHapticFeedback(this.f4289c0);
                        b3.f4087d = true;
                    }
                }
            }
            if (calendarArr[2].compareTo(calendar) <= 0) {
                this.f4313v = this.f4312u;
            }
        }
        while (true) {
            int i12 = this.f4313v;
            if (i12 - this.f4312u > (-this.t0)) {
                return;
            }
            this.f4313v = i12 + this.f4311t;
            System.arraycopy(calendarArr, 1, calendarArr, 0, calendarArr.length - 1);
            Calendar calendar4 = (Calendar) calendarArr[calendarArr.length - 2].clone();
            calendar4.add(5, 1);
            calendarArr[calendarArr.length - 1] = calendar4;
            b(calendar4);
            if (!this.f4294f0) {
                q(calendarArr[2]);
                this.u0 = true;
                int i13 = this.f4283X;
                if (i13 > 0) {
                    this.f4283X = i13 - 1;
                } else {
                    this.f4286a0.playSoundEffect(this.f4291d0);
                    B b5 = this.f4287b0;
                    if (!b5.f4087d) {
                        ((SeslSpinningDatePickerSpinner) this.f4233b).performHapticFeedback(this.f4289c0);
                        b5.f4087d = true;
                    }
                }
            }
            if (calendarArr[2].compareTo(calendar2) >= 0) {
                this.f4313v = this.f4312u;
            }
        }
    }

    public final void p() {
        boolean z4 = this.m0;
        EditText editText = this.f4290d;
        if (z4) {
            editText.setTypeface(this.f4307p0);
        } else {
            editText.setTypeface(this.n0);
        }
    }

    public final void q(Calendar calendar) {
        Calendar calendar2 = this.f4302k;
        int iCompareTo = calendar.compareTo(calendar2);
        Object objClone = calendar;
        if (iCompareTo < 0) {
            objClone = calendar2.clone();
        }
        Calendar calendar3 = (Calendar) objClone;
        Calendar calendar4 = this.f4303l;
        int iCompareTo2 = calendar3.compareTo(calendar4);
        Object objClone2 = calendar3;
        if (iCompareTo2 > 0) {
            objClone2 = calendar4.clone();
        }
        Calendar calendar5 = (Calendar) objClone2;
        Calendar calendar6 = this.f4304m;
        calendar6.set(1, calendar5.get(1));
        calendar6.set(2, calendar5.get(2));
        calendar6.set(5, calendar5.get(5));
        SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner = (SeslSpinningDatePickerSpinner) this.f4233b;
        if (this.f4264I0.isEnabled() && !this.f4294f0) {
            Calendar calendarG = g(calendar6);
            if (calendarG.compareTo(calendar4) <= 0) {
                d(calendarG);
            }
            seslSpinningDatePickerSpinner.sendAccessibilityEvent(4);
        }
        h();
        seslSpinningDatePickerSpinner.invalidate();
    }

    public final void r(boolean z4) {
        ValueAnimator valueAnimator = this.f4256E0;
        ValueAnimator valueAnimator2 = this.f4253C0;
        if (z4) {
            valueAnimator2.setStartDelay(this.f4315w.getDuration() + 100);
            valueAnimator.setStartDelay((this.f4315w.isFinished() ? 0 : this.f4315w.getDuration()) + 100);
            valueAnimator.start();
            valueAnimator2.start();
            return;
        }
        float[] fArr = {this.f4322z0, this.f4318x0};
        ValueAnimator valueAnimator3 = this.B0;
        valueAnimator3.setFloatValues(fArr);
        int[] iArr = {this.f4301j0, this.k0};
        ValueAnimator valueAnimator4 = this.f4255D0;
        valueAnimator4.setIntValues(iArr);
        valueAnimator.cancel();
        valueAnimator2.cancel();
        valueAnimator4.start();
        valueAnimator3.start();
    }

    public final void s() {
        this.f4315w.abortAnimation();
        Scroller scroller = this.f4319y;
        scroller.abortAnimation();
        this.f4317x.abortAnimation();
        this.f4258F0.b();
        this.f4260G0 = false;
        if (!this.f4294f0 && !k(this.f4315w)) {
            k(scroller);
        }
        c(0);
    }
}
