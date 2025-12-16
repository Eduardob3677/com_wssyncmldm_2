package S1;

import J.Q;
import J.r0;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.wssyncmldm.R;
import f1.AbstractC0420a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class n extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public final TextInputLayout f2499c;

    /* renamed from: d, reason: collision with root package name */
    public final FrameLayout f2500d;

    /* renamed from: e, reason: collision with root package name */
    public final CheckableImageButton f2501e;
    public ColorStateList f;

    /* renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f2502g;

    /* renamed from: h, reason: collision with root package name */
    public View.OnLongClickListener f2503h;

    /* renamed from: i, reason: collision with root package name */
    public final CheckableImageButton f2504i;

    /* renamed from: j, reason: collision with root package name */
    public final B1.j f2505j;

    /* renamed from: k, reason: collision with root package name */
    public int f2506k;

    /* renamed from: l, reason: collision with root package name */
    public final LinkedHashSet f2507l;

    /* renamed from: m, reason: collision with root package name */
    public ColorStateList f2508m;
    public PorterDuff.Mode n;

    /* renamed from: o, reason: collision with root package name */
    public int f2509o;

    /* renamed from: p, reason: collision with root package name */
    public ImageView.ScaleType f2510p;

    /* renamed from: q, reason: collision with root package name */
    public View.OnLongClickListener f2511q;

    /* renamed from: r, reason: collision with root package name */
    public CharSequence f2512r;

    /* renamed from: s, reason: collision with root package name */
    public final AppCompatTextView f2513s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f2514t;

    /* renamed from: u, reason: collision with root package name */
    public EditText f2515u;

    /* renamed from: v, reason: collision with root package name */
    public final AccessibilityManager f2516v;

    /* renamed from: w, reason: collision with root package name */
    public A2.b f2517w;

    /* renamed from: x, reason: collision with root package name */
    public final k f2518x;

    public n(TextInputLayout textInputLayout, r0 r0Var) throws Resources.NotFoundException {
        CharSequence text;
        super(textInputLayout.getContext());
        int i5 = 0;
        this.f2506k = 0;
        this.f2507l = new LinkedHashSet();
        this.f2518x = new k(this);
        l lVar = new l(this);
        this.f2516v = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f2499c = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f2500d = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        CheckableImageButton checkableImageButtonA = a(this, layoutInflaterFrom, R.id.text_input_error_icon);
        this.f2501e = checkableImageButtonA;
        CheckableImageButton checkableImageButtonA2 = a(frameLayout, layoutInflaterFrom, R.id.text_input_end_icon);
        this.f2504i = checkableImageButtonA2;
        this.f2505j = new B1.j(this, r0Var);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
        this.f2513s = appCompatTextView;
        TypedArray typedArray = (TypedArray) r0Var.f1007d;
        if (typedArray.hasValue(38)) {
            this.f = W1.a.A(getContext(), r0Var, 38);
        }
        if (typedArray.hasValue(39)) {
            this.f2502g = J1.m.g(typedArray.getInt(39, -1), null);
        }
        if (typedArray.hasValue(37)) {
            i(r0Var.g(37));
        }
        checkableImageButtonA.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        WeakHashMap weakHashMap = Q.f940a;
        checkableImageButtonA.setImportantForAccessibility(2);
        checkableImageButtonA.setClickable(false);
        checkableImageButtonA.setPressable(false);
        checkableImageButtonA.setFocusable(false);
        if (!typedArray.hasValue(53)) {
            if (typedArray.hasValue(32)) {
                this.f2508m = W1.a.A(getContext(), r0Var, 32);
            }
            if (typedArray.hasValue(33)) {
                this.n = J1.m.g(typedArray.getInt(33, -1), null);
            }
        }
        if (typedArray.hasValue(30)) {
            g(typedArray.getInt(30, 0));
            if (typedArray.hasValue(27) && checkableImageButtonA2.getContentDescription() != (text = typedArray.getText(27))) {
                checkableImageButtonA2.setContentDescription(text);
            }
            checkableImageButtonA2.setCheckable(typedArray.getBoolean(26, true));
        } else if (typedArray.hasValue(53)) {
            if (typedArray.hasValue(54)) {
                this.f2508m = W1.a.A(getContext(), r0Var, 54);
            }
            if (typedArray.hasValue(55)) {
                this.n = J1.m.g(typedArray.getInt(55, -1), null);
            }
            g(typedArray.getBoolean(53, false) ? 1 : 0);
            CharSequence text2 = typedArray.getText(51);
            if (checkableImageButtonA2.getContentDescription() != text2) {
                checkableImageButtonA2.setContentDescription(text2);
            }
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(29, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (dimensionPixelSize != this.f2509o) {
            this.f2509o = dimensionPixelSize;
            checkableImageButtonA2.setMinimumWidth(dimensionPixelSize);
            checkableImageButtonA2.setMinimumHeight(dimensionPixelSize);
            checkableImageButtonA.setMinimumWidth(dimensionPixelSize);
            checkableImageButtonA.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(31)) {
            ImageView.ScaleType scaleTypeS = i3.x.s(typedArray.getInt(31, -1));
            this.f2510p = scaleTypeS;
            checkableImageButtonA2.setScaleType(scaleTypeS);
            checkableImageButtonA.setScaleType(scaleTypeS);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_suffix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        appCompatTextView.setAccessibilityLiveRegion(1);
        appCompatTextView.setTextAppearance(typedArray.getResourceId(72, 0));
        if (typedArray.hasValue(73)) {
            appCompatTextView.setTextColor(r0Var.f(73));
        }
        CharSequence text3 = typedArray.getText(71);
        this.f2512r = TextUtils.isEmpty(text3) ? null : text3;
        appCompatTextView.setText(text3);
        n();
        frameLayout.addView(checkableImageButtonA2);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(checkableImageButtonA);
        textInputLayout.f6119i0.add(lVar);
        if (textInputLayout.f != null) {
            lVar.a(textInputLayout);
        }
        addOnAttachStateChangeListener(new m(i5, this));
    }

    public final CheckableImageButton a(ViewGroup viewGroup, LayoutInflater layoutInflater, int i5) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R.layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i5);
        if (W1.a.R(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        return checkableImageButton;
    }

    public final o b() {
        o eVar;
        int i5 = this.f2506k;
        B1.j jVar = this.f2505j;
        SparseArray sparseArray = (SparseArray) jVar.f217c;
        o vVar = (o) sparseArray.get(i5);
        if (vVar == null) {
            n nVar = (n) jVar.f218d;
            if (i5 == -1) {
                eVar = new e(nVar, 0);
            } else if (i5 == 0) {
                eVar = new e(nVar, 1);
            } else if (i5 == 1) {
                vVar = new v(nVar, jVar.f216b);
                sparseArray.append(i5, vVar);
            } else if (i5 == 2) {
                eVar = new d(nVar);
            } else {
                if (i5 != 3) {
                    throw new IllegalArgumentException(B.f.t(i5, "Invalid end icon mode: "));
                }
                eVar = new j(nVar);
            }
            vVar = eVar;
            sparseArray.append(i5, vVar);
        }
        return vVar;
    }

    public final int c() {
        int marginStart;
        if (d() || e()) {
            CheckableImageButton checkableImageButton = this.f2504i;
            marginStart = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth();
        } else {
            marginStart = 0;
        }
        WeakHashMap weakHashMap = Q.f940a;
        return this.f2513s.getPaddingEnd() + getPaddingEnd() + marginStart;
    }

    public final boolean d() {
        return this.f2500d.getVisibility() == 0 && this.f2504i.getVisibility() == 0;
    }

    public final boolean e() {
        return this.f2501e.getVisibility() == 0;
    }

    public final void f(boolean z4) {
        boolean z5;
        boolean zIsActivated;
        boolean z6;
        o oVarB = b();
        boolean zK = oVarB.k();
        CheckableImageButton checkableImageButton = this.f2504i;
        boolean z7 = true;
        if (!zK || (z6 = checkableImageButton.f6034g) == oVarB.l()) {
            z5 = false;
        } else {
            checkableImageButton.setChecked(!z6);
            z5 = true;
        }
        if (!(oVarB instanceof j) || (zIsActivated = checkableImageButton.isActivated()) == oVarB.j()) {
            z7 = z5;
        } else {
            checkableImageButton.setActivated(!zIsActivated);
        }
        if (z4 || z7) {
            i3.x.P0(this.f2499c, checkableImageButton, this.f2508m);
        }
    }

    public final void g(int i5) throws Resources.NotFoundException {
        if (this.f2506k == i5) {
            return;
        }
        o oVarB = b();
        A2.b bVar = this.f2517w;
        AccessibilityManager accessibilityManager = this.f2516v;
        if (bVar != null && accessibilityManager != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(new K.b(bVar));
        }
        this.f2517w = null;
        oVarB.s();
        this.f2506k = i5;
        Iterator it = this.f2507l.iterator();
        if (it.hasNext()) {
            B.f.F(it.next());
            throw null;
        }
        h(i5 != 0);
        o oVarB2 = b();
        int iD = this.f2505j.f215a;
        if (iD == 0) {
            iD = oVarB2.d();
        }
        Drawable drawableA = iD != 0 ? AbstractC0420a.A(getContext(), iD) : null;
        CheckableImageButton checkableImageButton = this.f2504i;
        checkableImageButton.setImageDrawable(drawableA);
        TextInputLayout textInputLayout = this.f2499c;
        if (drawableA != null) {
            i3.x.c(textInputLayout, checkableImageButton, this.f2508m, this.n);
            i3.x.P0(textInputLayout, checkableImageButton, this.f2508m);
        }
        int iC = oVarB2.c();
        CharSequence text = iC != 0 ? getResources().getText(iC) : null;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
        checkableImageButton.setCheckable(oVarB2.k());
        if (!oVarB2.i(textInputLayout.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + textInputLayout.getBoxBackgroundMode() + " is not supported by the end icon mode " + i5);
        }
        oVarB2.r();
        A2.b bVarH = oVarB2.h();
        this.f2517w = bVarH;
        if (bVarH != null && accessibilityManager != null) {
            WeakHashMap weakHashMap = Q.f940a;
            if (isAttachedToWindow()) {
                accessibilityManager.addTouchExplorationStateChangeListener(new K.b(this.f2517w));
            }
        }
        View.OnClickListener onClickListenerF = oVarB2.f();
        View.OnLongClickListener onLongClickListener = this.f2511q;
        checkableImageButton.setOnClickListener(onClickListenerF);
        i3.x.b1(checkableImageButton, onLongClickListener);
        EditText editText = this.f2515u;
        if (editText != null) {
            oVarB2.m(editText);
            j(oVarB2);
        }
        i3.x.c(textInputLayout, checkableImageButton, this.f2508m, this.n);
        f(true);
    }

    public final void h(boolean z4) throws Resources.NotFoundException {
        if (d() != z4) {
            this.f2504i.setVisibility(z4 ? 0 : 8);
            k();
            m();
            this.f2499c.q();
        }
    }

    public final void i(Drawable drawable) throws Resources.NotFoundException {
        CheckableImageButton checkableImageButton = this.f2501e;
        checkableImageButton.setImageDrawable(drawable);
        l();
        i3.x.c(this.f2499c, checkableImageButton, this.f, this.f2502g);
    }

    public final void j(o oVar) {
        if (this.f2515u == null) {
            return;
        }
        if (oVar.e() != null) {
            this.f2515u.setOnFocusChangeListener(oVar.e());
        }
        if (oVar.g() != null) {
            this.f2504i.setOnFocusChangeListener(oVar.g());
        }
    }

    public final void k() {
        this.f2500d.setVisibility((this.f2504i.getVisibility() != 0 || e()) ? 8 : 0);
        setVisibility((d() || e() || !((this.f2512r == null || this.f2514t) ? 8 : false)) ? 0 : 8);
    }

    public final void l() throws Resources.NotFoundException {
        CheckableImageButton checkableImageButton = this.f2501e;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.f2499c;
        checkableImageButton.setVisibility((drawable != null && textInputLayout.f6123l.f2546q && textInputLayout.m()) ? 0 : 8);
        k();
        m();
        if (this.f2506k != 0) {
            return;
        }
        textInputLayout.q();
    }

    public final void m() throws Resources.NotFoundException {
        int paddingEnd;
        TextInputLayout textInputLayout = this.f2499c;
        if (textInputLayout.f == null) {
            return;
        }
        if (d() || e()) {
            paddingEnd = 0;
        } else {
            EditText editText = textInputLayout.f;
            WeakHashMap weakHashMap = Q.f940a;
            paddingEnd = editText.getPaddingEnd();
        }
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int paddingTop = textInputLayout.f.getPaddingTop();
        int paddingBottom = textInputLayout.f.getPaddingBottom();
        WeakHashMap weakHashMap2 = Q.f940a;
        this.f2513s.setPaddingRelative(dimensionPixelSize, paddingTop, paddingEnd, paddingBottom);
    }

    public final void n() {
        AppCompatTextView appCompatTextView = this.f2513s;
        int visibility = appCompatTextView.getVisibility();
        int i5 = (this.f2512r == null || this.f2514t) ? 8 : 0;
        if (visibility != i5) {
            b().p(i5 == 0);
        }
        k();
        appCompatTextView.setVisibility(i5);
        this.f2499c.q();
    }
}
