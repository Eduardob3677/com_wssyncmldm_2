package C1;

import J.Q;
import P1.g;
import P1.k;
import P1.v;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import com.google.android.material.button.MaterialButton;
import com.wssyncmldm.R;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final MaterialButton f340a;

    /* renamed from: b, reason: collision with root package name */
    public k f341b;

    /* renamed from: c, reason: collision with root package name */
    public int f342c;

    /* renamed from: d, reason: collision with root package name */
    public int f343d;

    /* renamed from: e, reason: collision with root package name */
    public int f344e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f345g;

    /* renamed from: h, reason: collision with root package name */
    public int f346h;

    /* renamed from: i, reason: collision with root package name */
    public PorterDuff.Mode f347i;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f348j;

    /* renamed from: k, reason: collision with root package name */
    public ColorStateList f349k;

    /* renamed from: l, reason: collision with root package name */
    public ColorStateList f350l;

    /* renamed from: m, reason: collision with root package name */
    public g f351m;

    /* renamed from: q, reason: collision with root package name */
    public boolean f354q;

    /* renamed from: s, reason: collision with root package name */
    public RippleDrawable f356s;

    /* renamed from: t, reason: collision with root package name */
    public int f357t;
    public boolean n = false;

    /* renamed from: o, reason: collision with root package name */
    public boolean f352o = false;

    /* renamed from: p, reason: collision with root package name */
    public boolean f353p = false;

    /* renamed from: r, reason: collision with root package name */
    public boolean f355r = true;

    public c(MaterialButton materialButton, k kVar) {
        this.f340a = materialButton;
        this.f341b = kVar;
    }

    public final v a() {
        RippleDrawable rippleDrawable = this.f356s;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f356s.getNumberOfLayers() > 2 ? (v) this.f356s.getDrawable(2) : (v) this.f356s.getDrawable(1);
    }

    public final g b(boolean z4) {
        RippleDrawable rippleDrawable = this.f356s;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (g) ((LayerDrawable) ((InsetDrawable) this.f356s.getDrawable(0)).getDrawable()).getDrawable(!z4 ? 1 : 0);
    }

    public final void c(k kVar) {
        this.f341b = kVar;
        if (b(false) != null) {
            b(false).setShapeAppearanceModel(kVar);
        }
        if (b(true) != null) {
            b(true).setShapeAppearanceModel(kVar);
        }
        if (a() != null) {
            a().setShapeAppearanceModel(kVar);
        }
    }

    public final void d(int i5, int i6) {
        WeakHashMap weakHashMap = Q.f940a;
        MaterialButton materialButton = this.f340a;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = materialButton.getPaddingEnd();
        int paddingBottom = materialButton.getPaddingBottom();
        int i7 = this.f344e;
        int i8 = this.f;
        this.f = i6;
        this.f344e = i5;
        if (!this.f352o) {
            e();
        }
        materialButton.setPaddingRelative(paddingStart, (paddingTop + i5) - i7, paddingEnd, (paddingBottom + i6) - i8);
    }

    public final void e() {
        g gVar = new g(this.f341b);
        MaterialButton materialButton = this.f340a;
        gVar.i(materialButton.getContext());
        C.a.h(gVar, this.f348j);
        PorterDuff.Mode mode = this.f347i;
        if (mode != null) {
            C.a.i(gVar, mode);
        }
        float f = this.f346h;
        ColorStateList colorStateList = this.f349k;
        gVar.f2075c.f2064k = f;
        gVar.invalidateSelf();
        P1.f fVar = gVar.f2075c;
        if (fVar.f2058d != colorStateList) {
            fVar.f2058d = colorStateList;
            gVar.onStateChange(gVar.getState());
        }
        g gVar2 = new g(this.f341b);
        gVar2.setTint(0);
        float f5 = this.f346h;
        int iY = this.n ? W1.a.y(R.attr.colorSurface, materialButton) : 0;
        gVar2.f2075c.f2064k = f5;
        gVar2.invalidateSelf();
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(iY);
        P1.f fVar2 = gVar2.f2075c;
        if (fVar2.f2058d != colorStateListValueOf) {
            fVar2.f2058d = colorStateListValueOf;
            gVar2.onStateChange(gVar2.getState());
        }
        g gVar3 = new g(this.f341b);
        this.f351m = gVar3;
        C.a.g(gVar3, -1);
        ColorStateList colorStateListValueOf2 = this.f350l;
        if (colorStateListValueOf2 == null) {
            colorStateListValueOf2 = ColorStateList.valueOf(0);
        }
        RippleDrawable rippleDrawable = new RippleDrawable(colorStateListValueOf2, new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{gVar2, gVar}), this.f342c, this.f344e, this.f343d, this.f), this.f351m);
        this.f356s = rippleDrawable;
        materialButton.setInternalBackground(rippleDrawable);
        g gVarB = b(false);
        if (gVarB != null) {
            gVarB.j(this.f357t);
            gVarB.setState(materialButton.getDrawableState());
        }
    }

    public final void f() {
        g gVarB = b(false);
        g gVarB2 = b(true);
        if (gVarB != null) {
            float f = this.f346h;
            ColorStateList colorStateList = this.f349k;
            gVarB.f2075c.f2064k = f;
            gVarB.invalidateSelf();
            P1.f fVar = gVarB.f2075c;
            if (fVar.f2058d != colorStateList) {
                fVar.f2058d = colorStateList;
                gVarB.onStateChange(gVarB.getState());
            }
            if (gVarB2 != null) {
                float f5 = this.f346h;
                int iY = this.n ? W1.a.y(R.attr.colorSurface, this.f340a) : 0;
                gVarB2.f2075c.f2064k = f5;
                gVarB2.invalidateSelf();
                ColorStateList colorStateListValueOf = ColorStateList.valueOf(iY);
                P1.f fVar2 = gVarB2.f2075c;
                if (fVar2.f2058d != colorStateListValueOf) {
                    fVar2.f2058d = colorStateListValueOf;
                    gVarB2.onStateChange(gVarB2.getState());
                }
            }
        }
    }
}
