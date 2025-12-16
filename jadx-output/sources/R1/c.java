package R1;

import J.G;
import J.I;
import J.Q;
import J1.m;
import P1.g;
import P1.k;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.wssyncmldm.R;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class c extends FrameLayout {

    /* renamed from: k, reason: collision with root package name */
    public static final b f2294k = new b();

    /* renamed from: c, reason: collision with root package name */
    public final k f2295c;

    /* renamed from: d, reason: collision with root package name */
    public int f2296d;

    /* renamed from: e, reason: collision with root package name */
    public final float f2297e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final int f2298g;

    /* renamed from: h, reason: collision with root package name */
    public final int f2299h;

    /* renamed from: i, reason: collision with root package name */
    public ColorStateList f2300i;

    /* renamed from: j, reason: collision with root package name */
    public PorterDuff.Mode f2301j;

    /* JADX WARN: Multi-variable type inference failed */
    public c(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        GradientDrawable gradientDrawable;
        super(U1.a.a(context, attributeSet, 0, 0), attributeSet);
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, v1.a.f9550z);
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
            WeakHashMap weakHashMap = Q.f940a;
            I.s(this, dimensionPixelSize);
        }
        this.f2296d = typedArrayObtainStyledAttributes.getInt(2, 1);
        if (typedArrayObtainStyledAttributes.hasValue(8) || typedArrayObtainStyledAttributes.hasValue(9)) {
            this.f2295c = k.b(context2, attributeSet, 0, 0).a();
        }
        this.f2297e = typedArrayObtainStyledAttributes.getFloat(3, 1.0f);
        setBackgroundTintList(W1.a.B(context2, typedArrayObtainStyledAttributes, 4));
        setBackgroundTintMode(m.g(typedArrayObtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
        this.f = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        this.f2298g = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.f2299h = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
        typedArrayObtainStyledAttributes.getResources().getDimensionPixelSize(R.dimen.sesl_design_snackbar_suggest_transition_height);
        int i5 = d.f2302a;
        typedArrayObtainStyledAttributes.recycle();
        setOnTouchListener(f2294k);
        setFocusable(true);
        if (getBackground() == null) {
            int iW = W1.a.W(W1.a.y(R.attr.colorSurface, this), getBackgroundOverlayColorAlpha(), W1.a.y(R.attr.colorOnSurface, this));
            k kVar = this.f2295c;
            if (kVar != null) {
                g gVar = new g(kVar);
                gVar.k(ColorStateList.valueOf(iW));
                gradientDrawable = gVar;
            } else {
                float dimension = getResources().getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setShape(0);
                gradientDrawable2.setCornerRadius(dimension);
                gradientDrawable2.setColor(iW);
                gradientDrawable = gradientDrawable2;
            }
            ColorStateList colorStateList = this.f2300i;
            if (colorStateList != null) {
                C.a.h(gradientDrawable, colorStateList);
            }
            WeakHashMap weakHashMap2 = Q.f940a;
            setBackground(gradientDrawable);
        }
    }

    private void setBaseTransientBottomBar(d dVar) {
    }

    public float getActionTextColorAlpha() {
        return this.f;
    }

    public int getAnimationMode() {
        return this.f2296d;
    }

    public float getBackgroundOverlayColorAlpha() {
        return this.f2297e;
    }

    public int getMaxInlineActionWidth() {
        return this.f2299h;
    }

    public int getMaxWidth() {
        return this.f2298g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        WeakHashMap weakHashMap = Q.f940a;
        G.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i5, int i6) {
        super.onMeasure(i5, i6);
        super.onMeasure(i5, i6);
    }

    public void setAnimationMode(int i5) {
        this.f2296d = i5;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != null && this.f2300i != null) {
            drawable = drawable.mutate();
            C.a.h(drawable, this.f2300i);
            C.a.i(drawable, this.f2301j);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.f2300i = colorStateList;
        if (getBackground() != null) {
            Drawable drawableMutate = getBackground().mutate();
            C.a.h(drawableMutate, colorStateList);
            C.a.i(drawableMutate, this.f2301j);
            if (drawableMutate != getBackground()) {
                super.setBackgroundDrawable(drawableMutate);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.f2301j = mode;
        if (getBackground() != null) {
            Drawable drawableMutate = getBackground().mutate();
            C.a.i(drawableMutate, mode);
            if (drawableMutate != getBackground()) {
                super.setBackgroundDrawable(drawableMutate);
            }
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f2294k);
        super.setOnClickListener(onClickListener);
    }
}
