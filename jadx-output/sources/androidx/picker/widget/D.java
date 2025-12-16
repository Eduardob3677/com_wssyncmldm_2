package androidx.picker.widget;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.icu.text.DecimalFormatSymbols;
import android.media.AudioManager;
import android.os.Build;
import android.provider.Settings;
import android.text.InputFilter;
import android.text.Selection;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.OverScroller;
import android.widget.Scroller;
import android.widget.TextView;
import android.widget.Toast;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import com.wssyncmldm.R;
import e0.AbstractC0414a;
import f0.DialogInterfaceOnClickListenerC0419b;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.Locale;
import o3.AbstractC0729f;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public final class D extends I {
    public static final char[] e1 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 1632, 1633, 1634, 1635, 1636, 1637, 1638, 1639, 1640, 1641, 1776, 1777, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785, 2406, 2407, 2408, 2409, 2410, 2411, 2412, 2413, 2414, 2415, 2534, 2535, 2536, 2537, 2538, 2539, 2540, 2541, 2542, 2543, 3302, 3303, 3304, 3305, 3306, 3307, 3308, 3309, 3310, 3311, 4160, 4161, 4162, 4163, 4164, 4165, 4166, 4167, 4168, 4169};

    /* renamed from: A, reason: collision with root package name */
    public int f4089A;

    /* renamed from: A0, reason: collision with root package name */
    public Typeface f4090A0;

    /* renamed from: B, reason: collision with root package name */
    public int f4091B;
    public Typeface B0;

    /* renamed from: C, reason: collision with root package name */
    public int f4092C;

    /* renamed from: C0, reason: collision with root package name */
    public Typeface f4093C0;

    /* renamed from: D, reason: collision with root package name */
    public Scroller f4094D;

    /* renamed from: D0, reason: collision with root package name */
    public final Typeface f4095D0;
    public final OverScroller E;

    /* renamed from: E0, reason: collision with root package name */
    public final float f4096E0;

    /* renamed from: F, reason: collision with root package name */
    public final Scroller f4097F;

    /* renamed from: F0, reason: collision with root package name */
    public int f4098F0;

    /* renamed from: G, reason: collision with root package name */
    public int f4099G;

    /* renamed from: G0, reason: collision with root package name */
    public int f4100G0;

    /* renamed from: H, reason: collision with root package name */
    public float f4101H;

    /* renamed from: H0, reason: collision with root package name */
    public boolean f4102H0;

    /* renamed from: I, reason: collision with root package name */
    public x f4103I;

    /* renamed from: I0, reason: collision with root package name */
    public final PathInterpolator f4104I0;

    /* renamed from: J, reason: collision with root package name */
    public x f4105J;

    /* renamed from: J0, reason: collision with root package name */
    public final PathInterpolator f4106J0;

    /* renamed from: K, reason: collision with root package name */
    public float f4107K;

    /* renamed from: K0, reason: collision with root package name */
    public final float f4108K0;

    /* renamed from: L, reason: collision with root package name */
    public float f4109L;

    /* renamed from: L0, reason: collision with root package name */
    public final float f4110L0;

    /* renamed from: M, reason: collision with root package name */
    public VelocityTracker f4111M;

    /* renamed from: M0, reason: collision with root package name */
    public final float f4112M0;

    /* renamed from: N, reason: collision with root package name */
    public final int f4113N;

    /* renamed from: N0, reason: collision with root package name */
    public float f4114N0;

    /* renamed from: O, reason: collision with root package name */
    public final int f4115O;
    public final ValueAnimator O0;

    /* renamed from: P, reason: collision with root package name */
    public final int f4116P;

    /* renamed from: P0, reason: collision with root package name */
    public final ValueAnimator f4117P0;

    /* renamed from: Q, reason: collision with root package name */
    public boolean f4118Q;

    /* renamed from: Q0, reason: collision with root package name */
    public final ValueAnimator f4119Q0;

    /* renamed from: R, reason: collision with root package name */
    public boolean f4120R;

    /* renamed from: R0, reason: collision with root package name */
    public final ValueAnimator f4121R0;

    /* renamed from: S, reason: collision with root package name */
    public final int f4122S;

    /* renamed from: S0, reason: collision with root package name */
    public final V.e f4123S0;

    /* renamed from: T, reason: collision with root package name */
    public int f4124T;

    /* renamed from: T0, reason: collision with root package name */
    public boolean f4125T0;

    /* renamed from: U, reason: collision with root package name */
    public boolean f4126U;

    /* renamed from: U0, reason: collision with root package name */
    public float f4127U0;

    /* renamed from: V, reason: collision with root package name */
    public boolean f4128V;

    /* renamed from: V0, reason: collision with root package name */
    public final int f4129V0;

    /* renamed from: W, reason: collision with root package name */
    public boolean f4130W;
    public String W0;

    /* renamed from: X, reason: collision with root package name */
    public int f4131X;

    /* renamed from: X0, reason: collision with root package name */
    public Toast f4132X0;

    /* renamed from: Y, reason: collision with root package name */
    public int f4133Y;

    /* renamed from: Y0, reason: collision with root package name */
    public c1.w f4134Y0;

    /* renamed from: Z, reason: collision with root package name */
    public int f4135Z;

    /* renamed from: Z0, reason: collision with root package name */
    public final AccessibilityManager f4136Z0;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f4137a0;

    /* renamed from: a1, reason: collision with root package name */
    public final y f4138a1;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f4139b0;

    /* renamed from: b1, reason: collision with root package name */
    public final y f4140b1;

    /* renamed from: c, reason: collision with root package name */
    public String f4141c;

    /* renamed from: c0, reason: collision with root package name */
    public int f4142c0;

    /* renamed from: c1, reason: collision with root package name */
    public final M f4143c1;

    /* renamed from: d, reason: collision with root package name */
    public String f4144d;

    /* renamed from: d0, reason: collision with root package name */
    public A f4145d0;

    /* renamed from: d1, reason: collision with root package name */
    public final z f4146d1;

    /* renamed from: e, reason: collision with root package name */
    public final EditText f4147e;

    /* renamed from: e0, reason: collision with root package name */
    public final O f4148e0;
    public final int f;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f4149f0;

    /* renamed from: g, reason: collision with root package name */
    public final int f4150g;
    public boolean g0;

    /* renamed from: h, reason: collision with root package name */
    public final int f4151h;

    /* renamed from: h0, reason: collision with root package name */
    public boolean f4152h0;

    /* renamed from: i, reason: collision with root package name */
    public int f4153i;

    /* renamed from: i0, reason: collision with root package name */
    public final AudioManager f4154i0;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f4155j;

    /* renamed from: j0, reason: collision with root package name */
    public final B f4156j0;

    /* renamed from: k, reason: collision with root package name */
    public int f4157k;
    public final int k0;

    /* renamed from: l, reason: collision with root package name */
    public String[] f4158l;
    public final int l0;

    /* renamed from: m, reason: collision with root package name */
    public int f4159m;
    public boolean m0;
    public int n;
    public boolean n0;

    /* renamed from: o, reason: collision with root package name */
    public int f4160o;
    public boolean o0;

    /* renamed from: p, reason: collision with root package name */
    public int f4161p;

    /* renamed from: p0, reason: collision with root package name */
    public final Scroller f4162p0;

    /* renamed from: q, reason: collision with root package name */
    public boolean f4163q;
    public final Scroller q0;

    /* renamed from: r, reason: collision with root package name */
    public boolean f4164r;
    public int r0;

    /* renamed from: s, reason: collision with root package name */
    public InterfaceC0179v f4165s;
    public int s0;

    /* renamed from: t, reason: collision with root package name */
    public InterfaceC0177t f4166t;
    public int t0;

    /* renamed from: u, reason: collision with root package name */
    public InterfaceC0176s f4167u;
    public int u0;

    /* renamed from: v, reason: collision with root package name */
    public r f4168v;

    /* renamed from: v0, reason: collision with root package name */
    public int f4169v0;

    /* renamed from: w, reason: collision with root package name */
    public final SparseArray f4170w;

    /* renamed from: w0, reason: collision with root package name */
    public boolean f4171w0;

    /* renamed from: x, reason: collision with root package name */
    public final int[] f4172x;

    /* renamed from: x0, reason: collision with root package name */
    public boolean f4173x0;

    /* renamed from: y, reason: collision with root package name */
    public final Paint f4174y;

    /* renamed from: y0, reason: collision with root package name */
    public boolean f4175y0;

    /* renamed from: z, reason: collision with root package name */
    public final ColorDrawable f4176z;

    /* renamed from: z0, reason: collision with root package name */
    public boolean f4177z0;

    /* JADX WARN: Removed duplicated region for block: B:80:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0397  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public D(SeslNumberPicker seslNumberPicker, Context context, AttributeSet attributeSet) throws IllegalAccessException, Resources.NotFoundException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        int iIntValue;
        int iIntValue2;
        Typeface typefaceCreateFromFile;
        int i5;
        int i6 = 1;
        this.f4233b = seslNumberPicker;
        this.f4232a = context;
        this.f4161p = 1;
        this.f4163q = false;
        this.f4164r = false;
        this.f4170w = new SparseArray();
        this.f4172x = new int[5];
        this.f4091B = Integer.MIN_VALUE;
        this.f4120R = true;
        this.f4124T = 0;
        this.g0 = true;
        this.m0 = false;
        this.n0 = false;
        this.o0 = false;
        this.f4171w0 = false;
        this.f4173x0 = false;
        this.f4102H0 = false;
        this.f4104I0 = new PathInterpolator(0.5f, 0.0f, 0.4f, 1.0f);
        this.f4106J0 = new PathInterpolator(0.17f, 0.17f, 0.83f, 0.83f);
        this.f4108K0 = 0.4f;
        this.f4110L0 = 0.1f;
        this.f4112M0 = 1.0f;
        this.f4114N0 = 0.1f;
        this.f4129V0 = IDMCallbackStatusInterface.IDM_ABORT_HTTP;
        this.f4138a1 = new y(this, 0);
        this.f4140b1 = new y(this, i6);
        this.f4143c1 = new M(i6, this);
        this.f4146d1 = new z(0, this);
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.sesl_number_picker_spinner_height);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.sesl_number_picker_spinner_width);
        this.f4096E0 = resources.getDimensionPixelSize(R.dimen.sesl_number_picker_spinner_edit_text_height) / dimensionPixelSize;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0414a.f6803b, 0, 0);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1);
        this.f = dimensionPixelSize3;
        int dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, dimensionPixelSize);
        this.f4150g = dimensionPixelSize4;
        int dimensionPixelSize5 = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, dimensionPixelSize2);
        this.f4151h = dimensionPixelSize5;
        this.f4153i = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        typedArrayObtainStyledAttributes.recycle();
        if (dimensionPixelSize3 != -1 && dimensionPixelSize4 != -1 && dimensionPixelSize3 > dimensionPixelSize4) {
            throw new IllegalArgumentException("minHeight > maxHeight");
        }
        if (dimensionPixelSize5 != -1 && (i5 = this.f4153i) != -1 && dimensionPixelSize5 > i5) {
            throw new IllegalArgumentException("minWidth > maxWidth");
        }
        this.f4122S = (int) TypedValue.applyDimension(1, 2.0f, resources.getDisplayMetrics());
        this.f4155j = this.f4153i == -1;
        if (!W1.a.S(context)) {
            this.f4110L0 = 0.2f;
            this.f4114N0 = 0.2f;
        }
        this.f4148e0 = new O(i6, this);
        seslNumberPicker.setWillNotDraw(false);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.sesl_number_picker_spinner, (ViewGroup) seslNumberPicker, true);
        EditText editText = (EditText) seslNumberPicker.findViewById(R.id.numberpicker_input);
        this.f4147e = editText;
        editText.setLongClickable(false);
        editText.setIncludeFontPadding(false);
        editText.setAccessibilityDelegate(new S1.q(i6, this));
        Typeface typefaceDefaultFromStyle = Typeface.defaultFromStyle(1);
        this.f4095D0 = typefaceDefaultFromStyle;
        Typeface typefaceCreate = Typeface.create("sec-roboto-condensed-light", 1);
        if (Build.VERSION.SDK_INT >= 34) {
            this.f4090A0 = Typeface.create(Typeface.create("sec", 0), 600, false);
        } else {
            Typeface typefaceCreate2 = Typeface.create("sec-roboto-light", 1);
            this.f4090A0 = typefaceCreate2;
            if (typefaceDefaultFromStyle.equals(typefaceCreate2)) {
                if (typefaceCreate.equals(this.f4090A0)) {
                    this.f4090A0 = Typeface.create("sans-serif-thin", 1);
                } else {
                    this.f4090A0 = typefaceCreate;
                }
            }
        }
        this.B0 = Typeface.create(this.f4090A0, 0);
        Object objNewInstance = null;
        if (Z0.j.R(resources.getConfiguration())) {
            this.f4110L0 = 0.2f;
            this.f4114N0 = 0.2f;
        } else {
            String string = Settings.System.getString(context.getContentResolver(), "theme_font_clock");
            if (string != null && !string.isEmpty()) {
                if (new File(string).exists()) {
                    try {
                        typefaceCreateFromFile = Typeface.createFromFile(string);
                    } catch (Exception unused) {
                    }
                    this.f4090A0 = typefaceCreateFromFile;
                    this.B0 = Typeface.create(typefaceCreateFromFile, 0);
                } else {
                    typefaceCreateFromFile = null;
                    this.f4090A0 = typefaceCreateFromFile;
                    this.B0 = Typeface.create(typefaceCreateFromFile, 0);
                }
            }
        }
        if (l()) {
            this.f4147e.setIncludeFontPadding(true);
            Typeface typeface = this.f4095D0;
            this.f4090A0 = typeface;
            this.B0 = Typeface.create(typeface, 0);
        }
        this.f4175y0 = AbstractC0739a.l(this.f4147e);
        this.f4093C0 = Typeface.create(this.f4090A0, 1);
        v();
        j(this.f4232a);
        this.f4176z = new ColorDrawable(this.f4169v0);
        this.f4147e.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0160b(2, this));
        this.f4147e.setOnTouchListener(new ViewOnTouchListenerC0162d(1, this));
        this.f4147e.setFilters(new InputFilter[]{new C(this)});
        this.f4147e.setRawInputType(2);
        this.f4147e.setImeOptions(33554438);
        this.f4147e.setCursorVisible(false);
        AbstractC0739a.p(o4.a.m(), this.f4147e);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f4113N = viewConfiguration.getScaledTouchSlop();
        this.f4115O = viewConfiguration.getScaledMinimumFlingVelocity() * 2;
        this.f4116P = viewConfiguration.getScaledMaximumFlingVelocity() / 4;
        this.f4157k = (int) this.f4147e.getTextSize();
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setTextAlign(Paint.Align.CENTER);
        paint.setTextSize(this.f4157k);
        paint.setTypeface(this.f4090A0);
        paint.setColor(this.r0);
        this.f4174y = paint;
        this.f4112M0 = paint.getAlpha() / 255.0f;
        boolean z4 = Settings.Global.getInt(this.f4232a.getContentResolver(), "bold_text", 0) != 0;
        this.f4177z0 = z4;
        if (z4) {
            paint.setFakeBoldText(true);
        }
        this.f4162p0 = new Scroller(this.f4232a, this.f4104I0, true);
        Scroller scroller = new Scroller(this.f4232a, null, true);
        this.q0 = scroller;
        this.f4094D = scroller;
        this.f4097F = new Scroller(this.f4232a, new PathInterpolator(0.4f, 0.0f, 0.3f, 1.0f));
        this.E = new OverScroller(this.f4232a, new DecelerateInterpolator());
        V.e eVar = new V.e(new V.d());
        this.f4123S0 = eVar;
        eVar.f2772j = new V.f();
        eVar.f2769g = 1.0f;
        M m5 = this.f4143c1;
        if (eVar.f2768e) {
            throw new UnsupportedOperationException("Error: Update listeners must be added beforethe animation.");
        }
        ArrayList arrayList = eVar.f2771i;
        if (!arrayList.contains(m5)) {
            arrayList.add(m5);
        }
        z zVar = this.f4146d1;
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
        InterfaceC0176s twoDigitFormatter = SeslNumberPicker.getTwoDigitFormatter();
        if (twoDigitFormatter != this.f4167u) {
            this.f4167u = twoDigitFormatter;
            k();
            C();
        }
        C();
        ((SeslNumberPicker) this.f4233b).setVerticalScrollBarEnabled(false);
        if (((SeslNumberPicker) this.f4233b).getImportantForAccessibility() == 0) {
            ((SeslNumberPicker) this.f4233b).setImportantForAccessibility(1);
        }
        this.f4154i0 = (AudioManager) this.f4232a.getSystemService("audio");
        B b3 = new B(0);
        b3.f4087d = false;
        this.f4156j0 = b3;
        AbstractC0729f.s(32);
        Field fieldL = i3.x.L("SOUND_TIME_PICKER_SCROLL");
        if (fieldL != null) {
            Object objA = i3.x.A(null, fieldL);
            if (objA instanceof Integer) {
                ((Integer) objA).getClass();
            }
        }
        Field fieldL2 = i3.x.L("SOUND_TIME_PICKER_FAST");
        if (fieldL2 != null) {
            Object objA2 = i3.x.A(null, fieldL2);
            iIntValue = objA2 instanceof Integer ? ((Integer) objA2).intValue() : 0;
        }
        this.k0 = iIntValue;
        Field fieldL3 = i3.x.L("SOUND_TIME_PICKER_SLOW");
        if (fieldL3 != null) {
            Object objA3 = i3.x.A(null, fieldL3);
            iIntValue2 = objA3 instanceof Integer ? ((Integer) objA3).intValue() : 0;
        }
        this.l0 = iIntValue2;
        Context context2 = this.f4232a;
        Method methodK = i3.x.K("com.samsung.android.media.SemSoundAssistantManager", "setFastAudioOpenMode", Boolean.TYPE);
        Constructor constructorG = i3.x.G("com.samsung.android.media.SemSoundAssistantManager", Context.class);
        if (constructorG != null) {
            try {
                objNewInstance = constructorG.newInstance(context2);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused2) {
                Log.e("SeslSemSoundAssistantManagerReflector", "Failed to instantiate class");
            }
        }
        if (methodK != null && objNewInstance != null) {
            i3.x.j0(objNewInstance, methodK, Boolean.TRUE);
        }
        ((SeslNumberPicker) this.f4233b).setFocusableInTouchMode(false);
        ((SeslNumberPicker) this.f4233b).setDescendantFocusability(NetworkAnalyticsConstants.DataPoints.FLAG_PPID);
        ((SeslNumberPicker) this.f4233b).setDefaultFocusHighlightEnabled(false);
        this.f4144d = "";
        this.W0 = resources.getString(R.string.sesl_number_picker_invalid_value_entered);
        this.f4141c = "";
        EditText editText2 = this.f4147e;
        Method methodJ = i3.x.J(View.class, "hidden_semSetDirectPenInputEnabled", Boolean.TYPE);
        if (methodJ != null) {
            i3.x.j0(editText2, methodJ, Boolean.FALSE);
        }
        this.f4136Z0 = (AccessibilityManager) this.f4232a.getSystemService("accessibility");
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f4108K0, this.f4110L0);
        this.f4117P0 = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(this.f4106J0);
        valueAnimatorOfFloat.setDuration(200L);
        valueAnimatorOfFloat.setStartDelay(100L);
        valueAnimatorOfFloat.addUpdateListener(this.f4138a1);
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.f4110L0, this.f4108K0);
        this.O0 = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setInterpolator(this.f4106J0);
        valueAnimatorOfFloat2.setDuration(200L);
        valueAnimatorOfFloat2.addUpdateListener(this.f4138a1);
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.s0), Integer.valueOf(this.t0));
        this.f4119Q0 = valueAnimatorOfObject;
        valueAnimatorOfObject.setInterpolator(this.f4106J0);
        valueAnimatorOfObject.setDuration(200L);
        valueAnimatorOfObject.addUpdateListener(this.f4140b1);
        ValueAnimator valueAnimatorOfObject2 = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.t0), Integer.valueOf(this.s0));
        this.f4121R0 = valueAnimatorOfObject2;
        valueAnimatorOfObject2.setInterpolator(this.f4106J0);
        valueAnimatorOfObject2.setDuration(200L);
        valueAnimatorOfObject2.setStartDelay(100L);
        valueAnimatorOfObject2.addUpdateListener(this.f4140b1);
    }

    public static void a(D d2) {
        String str = d2.W0;
        Context context = d2.f4232a;
        d2.f4132X0 = Toast.makeText(context, str, 0);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.sesl_custom_toast_layout, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.message)).setText(d2.W0);
        d2.f4132X0.setView(viewInflate);
    }

    public static boolean l() {
        String language = Locale.getDefault().getLanguage();
        return "ar".equals(language) || "fa".equals(language) || "my".equals(language);
    }

    public static int n(int i5, int i6) {
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

    public final void A() {
        this.f4094D.abortAnimation();
        Scroller scroller = this.f4097F;
        scroller.abortAnimation();
        this.E.abortAnimation();
        this.f4123S0.b();
        this.f4125T0 = false;
        this.n0 = false;
        if (!o(this.f4094D)) {
            o(scroller);
        }
        e(0);
    }

    public final void B() {
        int i5;
        if (this.f4155j) {
            String[] strArr = this.f4158l;
            Paint paint = this.f4174y;
            int i6 = 0;
            if (strArr == null) {
                float f = 0.0f;
                for (int i7 = 0; i7 <= 9; i7++) {
                    float fMeasureText = paint.measureText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i7)));
                    if (fMeasureText > f) {
                        f = fMeasureText;
                    }
                }
                for (int i8 = this.n; i8 > 0; i8 /= 10) {
                    i6++;
                }
                i5 = (int) (i6 * f);
            } else {
                int length = strArr.length;
                int i9 = 0;
                int length2 = 0;
                while (i6 < length) {
                    float fMeasureText2 = paint.measureText(this.f4158l[i6]);
                    if (fMeasureText2 > i9) {
                        i9 = (int) fMeasureText2;
                        length2 = this.f4158l[i6].length();
                    }
                    i6++;
                }
                i5 = i9;
                i6 = length2;
            }
            EditText editText = this.f4147e;
            int paddingRight = editText.getPaddingRight() + editText.getPaddingLeft() + i5;
            if (AbstractC0739a.l(editText)) {
                paddingRight += (i6 + 2) * ((int) Math.ceil(L2.b.p(paint) / 2.0f));
            }
            if (this.f4153i != paddingRight) {
                int i10 = this.f4151h;
                if (paddingRight > i10) {
                    this.f4153i = paddingRight;
                } else {
                    this.f4153i = i10;
                }
                ((SeslNumberPicker) this.f4233b).invalidate();
            }
        }
    }

    public final boolean C() {
        String[] strArr = this.f4158l;
        String strF = strArr == null ? f(this.f4160o) : strArr[this.f4160o - this.f4159m];
        if (TextUtils.isEmpty(strF)) {
            return false;
        }
        EditText editText = this.f4147e;
        if (strF.equals(editText.getText().toString())) {
            return false;
        }
        editText.setText(strF);
        Selection.setSelection(editText.getText(), editText.getText().length());
        return true;
    }

    public final void D() {
        boolean z4 = this.n - this.f4159m >= this.f4172x.length && this.f4120R;
        if (this.f4118Q != z4) {
            this.f4118Q = z4;
            k();
            ((SeslNumberPicker) this.f4233b).invalidate();
        }
    }

    public final void b(boolean z4) {
        int i5;
        int i6;
        int i7 = this.f4161p;
        if (i7 == 1) {
            return;
        }
        this.f4163q = z4;
        if (z4 && (i6 = (i5 = this.f4160o) % i7) != 0) {
            int i8 = i5 - i6;
            if (i6 > i7 / 2) {
                i8 += i7;
            }
            w(i8, true);
        }
        k();
        ((SeslNumberPicker) this.f4233b).invalidate();
    }

    public final void c(boolean z4) {
        this.f4147e.setVisibility(4);
        if (!o(this.f4094D)) {
            o(this.f4097F);
        }
        this.f4099G = 0;
        if (z4) {
            this.f4094D.startScroll(0, 0, 0, -this.f4089A, 500);
        } else {
            this.f4094D.startScroll(0, 0, 0, this.f4089A, 500);
        }
        ((SeslNumberPicker) this.f4233b).invalidate();
    }

    public final void d(int i5) {
        String strF;
        SparseArray sparseArray = this.f4170w;
        if (((String) sparseArray.get(i5)) != null) {
            return;
        }
        int i6 = this.f4159m;
        if (i5 < i6 || i5 > this.n) {
            strF = "";
        } else {
            String[] strArr = this.f4158l;
            strF = strArr != null ? strArr[i5 - i6] : f(i5);
        }
        sparseArray.put(i5, strF);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001f A[PHI: r1
      0x001f: PHI (r1v5 int) = (r1v3 int), (r1v7 int) binds: [B:18:0x002d, B:12:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean e(int i5) {
        int i6;
        int i7 = this.f4091B;
        if (i7 == Integer.MIN_VALUE) {
            return false;
        }
        int i8 = i7 - this.f4092C;
        if (i8 == 0) {
            this.f4102H0 = false;
            return false;
        }
        this.f4099G = 0;
        if (this.f4102H0 || i5 == 0) {
            int iAbs = Math.abs(i8);
            i6 = this.f4089A;
            if (iAbs > i6 / 2) {
                if (i8 > 0) {
                    i6 = -i6;
                }
                i8 += i6;
            }
        } else {
            int iAbs2 = Math.abs(i5);
            i6 = this.f4089A;
            if (iAbs2 < i6) {
                if (i8 > 0) {
                }
                i8 += i6;
            }
        }
        this.f4097F.startScroll(0, 0, 0, i8, 300);
        ((SeslNumberPicker) this.f4233b).invalidate();
        this.f4102H0 = false;
        return true;
    }

    public final String f(int i5) {
        InterfaceC0176s interfaceC0176s = this.f4167u;
        if (interfaceC0176s == null) {
            return String.format(Locale.getDefault(), "%d", Integer.valueOf(i5));
        }
        C0180w c0180w = (C0180w) interfaceC0176s;
        Locale locale = Locale.getDefault();
        if (c0180w.f4541b != DecimalFormatSymbols.getInstance(locale).getZeroDigit()) {
            c0180w.f4542c = new Formatter(c0180w.f4540a, locale);
            c0180w.f4541b = DecimalFormatSymbols.getInstance(locale).getZeroDigit();
        }
        c0180w.f4543d[0] = Integer.valueOf(i5);
        synchronized (c0180w.f4540a) {
            StringBuilder sb = c0180w.f4540a;
            sb.delete(0, sb.length());
            c0180w.f4542c.format("%02d", c0180w.f4543d);
        }
        return c0180w.f4542c.toString();
    }

    public final A g() {
        if (this.f4145d0 == null) {
            this.f4145d0 = new A(this);
        }
        return this.f4145d0;
    }

    public final int h(String str) {
        try {
            if (this.f4158l == null) {
                return Integer.parseInt(str);
            }
            for (int i5 = 0; i5 < this.f4158l.length; i5++) {
                str = str.toLowerCase();
                if (this.f4158l[i5].toLowerCase().startsWith(str)) {
                    return this.f4159m + i5;
                }
            }
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return this.f4159m;
        }
    }

    public final int i(int i5) {
        int i6 = this.n;
        if (i5 > i6) {
            int i7 = this.f4159m;
            return ((i5 - i7) % ((i6 - i7) + 1)) + i7;
        }
        int i8 = this.f4159m;
        return i5 < i8 ? i6 - ((i6 - i5) % ((i6 - i8) + 1)) : i5;
    }

    public final void j(Context context) {
        boolean z4 = this.f4173x0;
        EditText editText = this.f4147e;
        if (!z4) {
            Resources resources = context.getResources();
            Resources.Theme theme = context.getTheme();
            ThreadLocal threadLocal = A.r.f36a;
            this.t0 = A.l.a(resources, R.color.sesl_number_picker_text_color_scroll, theme);
            this.s0 = editText.getTextColors().getColorForState(((SeslNumberPicker) this.f4233b).getEnableStateSet(), -1);
            int iA = A.l.a(context.getResources(), R.color.sesl_number_picker_text_highlight_color, context.getTheme());
            this.f4169v0 = iA;
            this.r0 = this.s0;
            editText.setHighlightColor(iA);
            return;
        }
        this.t0 = this.u0;
        Resources resources2 = context.getResources();
        Resources.Theme theme2 = context.getTheme();
        ThreadLocal threadLocal2 = A.r.f36a;
        this.s0 = A.l.a(resources2, R.color.sesl_number_picker_text_color_appwidget, theme2);
        this.f4169v0 = A.l.a(context.getResources(), R.color.sesl_number_picker_text_highlight_color_appwidget, context.getTheme());
        int i5 = this.s0;
        this.r0 = i5;
        this.f4174y.setColor(i5);
        editText.setHighlightColor(this.f4169v0);
        editText.setTextColor(this.f4232a.getResources().getColor(R.color.sesl_number_picker_text_color_appwidget));
    }

    public final void k() {
        this.f4170w.clear();
        boolean z4 = this.n0;
        int[] iArr = this.f4172x;
        int i5 = z4 ? iArr[2] : this.f4160o;
        for (int i6 = 0; i6 < iArr.length; i6++) {
            int i7 = ((i6 - 2) * (this.f4163q ? this.f4161p : 1)) + i5;
            if (this.f4118Q) {
                i7 = i(i7);
            }
            iArr[i6] = i7;
            d(i7);
        }
    }

    public final boolean m() {
        return this.f4152h0 && !this.f4149f0;
    }

    public final boolean o(Scroller scroller) {
        scroller.forceFinished(true);
        int finalY = scroller.getFinalY() - scroller.getCurrY();
        int i5 = this.f4089A;
        if (i5 == 0) {
            return false;
        }
        int i6 = this.f4091B - (this.f4092C + finalY);
        if (i6 == 0) {
            return false;
        }
        int i7 = i6 % i5;
        int iAbs = Math.abs(i7);
        int i8 = this.f4089A;
        if (iAbs > i8 / 2) {
            i7 = i7 > 0 ? i7 - i8 : i7 + i8;
        }
        t(finalY + i7);
        return true;
    }

    public final void p(int i5) {
        if (this.f4124T == i5) {
            return;
        }
        this.f4124T = i5;
    }

    public final void q() {
        this.f4154i0.playSoundEffect(this.f4127U0 > 1000.0f ? this.k0 : this.l0);
        B b3 = this.f4156j0;
        if (b3.f4087d) {
            return;
        }
        ((SeslNumberPicker) this.f4233b).performHapticFeedback(50056);
        b3.f4087d = true;
    }

    public final void r() {
        x xVar = this.f4103I;
        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) this.f4233b;
        if (xVar == null) {
            this.f4103I = new x(this, 2);
        } else {
            seslNumberPicker.removeCallbacks(xVar);
        }
        seslNumberPicker.postDelayed(this.f4103I, ViewConfiguration.getLongPressTimeout());
    }

    public final void s() {
        x xVar = this.f4103I;
        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) this.f4233b;
        if (xVar != null) {
            seslNumberPicker.removeCallbacks(xVar);
        }
        x xVar2 = this.f4105J;
        if (xVar2 != null) {
            seslNumberPicker.removeCallbacks(xVar2);
        }
        this.f4148e0.a();
    }

    public final void t(int i5) {
        if (i5 == 0 || this.f4089A <= 0) {
            return;
        }
        boolean z4 = this.f4118Q;
        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) this.f4233b;
        Scroller scroller = this.f4097F;
        int[] iArr = this.f4172x;
        if (!z4) {
            int i6 = this.f4092C;
            int i7 = i6 + i5;
            int i8 = this.f4091B;
            if (i7 > i8 && iArr[2] <= this.f4159m) {
                i5 = i8 - i6;
                this.f4094D.abortAnimation();
                scroller.abortAnimation();
                this.E.abortAnimation();
                this.f4123S0.b();
                this.f4125T0 = false;
                if (this.f4149f0 && this.f4109L > seslNumberPicker.getBottom()) {
                    this.f4126U = true;
                    return;
                }
            }
        }
        if (!this.f4118Q) {
            int i9 = this.f4092C;
            int i10 = i9 + i5;
            int i11 = this.f4091B;
            if (i10 < i11 && iArr[2] >= this.n) {
                i5 = i11 - i9;
                this.f4094D.abortAnimation();
                scroller.abortAnimation();
                this.E.abortAnimation();
                this.f4123S0.b();
                this.f4125T0 = false;
                if (this.f4149f0 && this.f4109L < seslNumberPicker.getTop()) {
                    this.f4126U = true;
                    return;
                }
            }
        }
        this.f4092C += i5;
        while (true) {
            int i12 = this.f4092C;
            if (i12 - this.f4091B < this.f4100G0) {
                break;
            }
            this.f4092C = i12 - this.f4089A;
            System.arraycopy(iArr, 0, iArr, 1, iArr.length - 1);
            int i13 = iArr[1] - 1;
            if (this.f4118Q && i13 < this.f4159m) {
                i13 = this.n;
            }
            iArr[0] = i13;
            d(i13);
            q();
            if (!this.n0) {
                w(iArr[2], true);
                this.f4102H0 = true;
            } else if (this.f4161p != 1 && this.f4163q) {
                k();
            }
            if (!this.f4118Q && iArr[2] <= this.f4159m) {
                this.f4092C = this.f4091B;
            }
        }
        while (true) {
            int i14 = this.f4092C;
            if (i14 - this.f4091B > (-this.f4100G0)) {
                return;
            }
            this.f4092C = i14 + this.f4089A;
            System.arraycopy(iArr, 1, iArr, 0, iArr.length - 1);
            int i15 = iArr[iArr.length - 2] + 1;
            if (this.f4118Q && i15 > this.n) {
                i15 = this.f4159m;
            }
            iArr[iArr.length - 1] = i15;
            d(i15);
            q();
            if (!this.n0) {
                w(iArr[2], true);
                this.f4102H0 = true;
            } else if (this.f4161p != 1 && this.f4163q) {
                k();
            }
            if (!this.f4118Q && iArr[2] >= this.n) {
                this.f4092C = this.f4091B;
            }
        }
    }

    public final void u(boolean z4) {
        A aG;
        if (!this.g0 || this.f4152h0 == z4) {
            return;
        }
        this.f4152h0 = z4;
        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) this.f4233b;
        EditText editText = this.f4147e;
        if (z4) {
            B();
            s();
            if (!this.n0) {
                this.f4092C = this.f4091B;
                this.f4094D.abortAnimation();
                this.E.abortAnimation();
                this.f4125T0 = false;
                this.f4123S0.b();
                p(0);
            }
            seslNumberPicker.setDescendantFocusability(NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH);
            C();
            editText.setVisibility(0);
            if (this.f4136Z0.isEnabled() && (aG = g()) != null) {
                aG.performAction(2, 128, null);
            }
        } else {
            int i5 = this.f4161p;
            if (i5 != 1 && this.f4163q && this.f4160o % i5 != 0) {
                b(false);
            }
            ValueAnimator valueAnimator = this.f4117P0;
            if (valueAnimator.isRunning()) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimator2 = this.O0;
            if (valueAnimator2.isRunning()) {
                valueAnimator2.cancel();
            }
            ValueAnimator valueAnimator3 = this.f4119Q0;
            if (valueAnimator3.isRunning()) {
                valueAnimator3.cancel();
            }
            ValueAnimator valueAnimator4 = this.f4121R0;
            if (valueAnimator4.isRunning()) {
                valueAnimator4.cancel();
            }
            this.r0 = this.s0;
            this.f4114N0 = this.f4110L0;
            editText.setVisibility(4);
            seslNumberPicker.setDescendantFocusability(NetworkAnalyticsConstants.DataPoints.FLAG_PPID);
        }
        seslNumberPicker.invalidate();
        InterfaceC0177t interfaceC0177t = this.f4166t;
        if (interfaceC0177t != null) {
            interfaceC0177t.b(this.f4152h0);
        }
    }

    public final void v() {
        boolean z4 = this.f4175y0;
        EditText editText = this.f4147e;
        if (z4) {
            editText.setTypeface(this.f4093C0);
        } else {
            editText.setTypeface(this.f4090A0);
        }
    }

    public final void w(int i5, boolean z4) {
        int i6;
        int i7 = this.f4160o;
        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) this.f4233b;
        if (i7 == i5) {
            if (l()) {
                C();
                seslNumberPicker.invalidate();
                return;
            }
            return;
        }
        int i8 = this.f4118Q ? i(i5) : Math.min(Math.max(i5, this.f4159m), this.n);
        int i9 = this.f4160o;
        this.f4160o = i8;
        C();
        AccessibilityManager accessibilityManager = this.f4136Z0;
        if (z4) {
            if (accessibilityManager.isEnabled() && !this.n0) {
                int i10 = i(this.f4160o);
                if (i10 <= this.n) {
                    String[] strArr = this.f4158l;
                    if (strArr == null) {
                        f(i10);
                    } else {
                        String str = strArr[i10 - this.f4159m];
                    }
                }
                seslNumberPicker.sendAccessibilityEvent(4);
                A aG = g();
                if (aG != null && (!this.g0 || (!this.f4118Q && ((i6 = this.f4160o) == this.n || i6 == this.f4159m)))) {
                    aG.performAction(2, 64, null);
                }
            }
            InterfaceC0179v interfaceC0179v = this.f4165s;
            if (interfaceC0179v != null) {
                interfaceC0179v.a(seslNumberPicker, i9, this.f4160o);
            }
        }
        k();
        seslNumberPicker.invalidate();
        if (!accessibilityManager.isEnabled() || seslNumberPicker.getParent() == null) {
            return;
        }
        seslNumberPicker.getParent().notifySubtreeAccessibilityStateChanged(seslNumberPicker, seslNumberPicker, 1);
    }

    public final void x() {
        InputMethodManager inputMethodManager = (InputMethodManager) this.f4232a.getSystemService("input_method");
        if (inputMethodManager != null) {
            EditText editText = this.f4147e;
            editText.setVisibility(0);
            editText.requestFocus();
            inputMethodManager.viewClicked(editText);
            inputMethodManager.showSoftInput(editText, 0);
        }
    }

    public final void y(int i5, c1.w wVar) {
        this.f4134Y0 = wVar;
        if (this.f4152h0) {
            return;
        }
        if (!this.f4149f0 && !this.f4118Q && this.f4160o - this.f4159m == 0) {
            if (wVar != null) {
                ((DialogInterfaceOnClickListenerC0419b) wVar.f5265c).f6823m = false;
                return;
            }
            return;
        }
        ValueAnimator valueAnimator = this.f4117P0;
        if (valueAnimator.isStarted()) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.O0;
        if (valueAnimator2.isStarted()) {
            valueAnimator2.cancel();
        }
        ValueAnimator valueAnimator3 = this.f4119Q0;
        if (valueAnimator3.isStarted()) {
            valueAnimator3.cancel();
        }
        ValueAnimator valueAnimator4 = this.f4121R0;
        if (valueAnimator4.isStarted()) {
            valueAnimator4.cancel();
        }
        ((SeslNumberPicker) this.f4233b).post(new K(i5, this, 2));
    }

    public final void z(boolean z4) {
        ValueAnimator valueAnimator = this.f4121R0;
        ValueAnimator valueAnimator2 = this.f4117P0;
        if (z4) {
            valueAnimator2.setStartDelay((this.f4094D.isFinished() ? 0 : this.f4094D.getDuration()) + 100);
            valueAnimator.setStartDelay((this.f4094D.isFinished() ? 0 : this.f4094D.getDuration()) + 100);
            valueAnimator.start();
            valueAnimator2.start();
            return;
        }
        float[] fArr = {this.f4114N0, this.f4108K0};
        ValueAnimator valueAnimator3 = this.O0;
        valueAnimator3.setFloatValues(fArr);
        int[] iArr = {this.r0, this.t0};
        ValueAnimator valueAnimator4 = this.f4119Q0;
        valueAnimator4.setIntValues(iArr);
        valueAnimator.cancel();
        valueAnimator2.cancel();
        valueAnimator4.start();
        valueAnimator3.start();
    }
}
