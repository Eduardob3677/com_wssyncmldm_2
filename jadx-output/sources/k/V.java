package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import c.AbstractC0206a;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class V {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f7748a;

    /* renamed from: b, reason: collision with root package name */
    public x1 f7749b;

    /* renamed from: c, reason: collision with root package name */
    public x1 f7750c;

    /* renamed from: d, reason: collision with root package name */
    public x1 f7751d;

    /* renamed from: e, reason: collision with root package name */
    public x1 f7752e;
    public x1 f;

    /* renamed from: g, reason: collision with root package name */
    public x1 f7753g;

    /* renamed from: h, reason: collision with root package name */
    public x1 f7754h;

    /* renamed from: i, reason: collision with root package name */
    public final C0573a0 f7755i;

    /* renamed from: j, reason: collision with root package name */
    public int f7756j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f7757k = -1;

    /* renamed from: l, reason: collision with root package name */
    public Typeface f7758l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f7759m;

    public V(TextView textView) {
        this.f7748a = textView;
        this.f7755i = new C0573a0(textView);
    }

    public static x1 c(Context context, C0622s c0622s, int i5) {
        synchronized (c0622s) {
            synchronized (c0622s.f7986a) {
            }
        }
        return null;
    }

    public final void a(Drawable drawable, x1 x1Var) {
        if (drawable == null || x1Var == null) {
            return;
        }
        C0622s.d(drawable, x1Var, this.f7748a.getDrawableState());
    }

    public final void b() {
        x1 x1Var = this.f7749b;
        TextView textView = this.f7748a;
        if (x1Var != null || this.f7750c != null || this.f7751d != null || this.f7752e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.f7749b);
            a(compoundDrawables[1], this.f7750c);
            a(compoundDrawables[2], this.f7751d);
            a(compoundDrawables[3], this.f7752e);
        }
        if (this.f == null && this.f7753g == null) {
            return;
        }
        Drawable[] drawableArrA = AbstractC0571Q.a(textView);
        a(drawableArrA[0], this.f);
        a(drawableArrA[2], this.f7753g);
    }

    public final ColorStateList d() {
        x1 x1Var = this.f7754h;
        if (x1Var != null) {
            return x1Var.f8051a;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        x1 x1Var = this.f7754h;
        if (x1Var != null) {
            return x1Var.f8052b;
        }
        return null;
    }

    public final void f(AttributeSet attributeSet, int i5) {
        String string;
        String string2;
        boolean z4;
        boolean z5;
        boolean z6;
        int i6;
        Drawable drawableB;
        int i7;
        Paint.FontMetricsInt fontMetricsInt;
        int i8;
        ColorStateList colorStateList;
        int resourceId;
        int i9;
        int resourceId2;
        TextView textView = this.f7748a;
        Context context = textView.getContext();
        C0622s c0622sA = C0622s.a();
        int[] iArr = AbstractC0206a.f5167h;
        J.r0 r0VarM = J.r0.m(context, attributeSet, iArr, i5, 0);
        Context context2 = textView.getContext();
        WeakHashMap weakHashMap = J.Q.f940a;
        J.N.d(textView, context2, iArr, attributeSet, (TypedArray) r0VarM.f1007d, i5, 0);
        TypedArray typedArray = (TypedArray) r0VarM.f1007d;
        int resourceId3 = typedArray.getResourceId(0, -1);
        if (typedArray.hasValue(3)) {
            c(context, c0622sA, typedArray.getResourceId(3, 0));
            this.f7749b = null;
        }
        if (typedArray.hasValue(1)) {
            c(context, c0622sA, typedArray.getResourceId(1, 0));
            this.f7750c = null;
        }
        if (typedArray.hasValue(4)) {
            c(context, c0622sA, typedArray.getResourceId(4, 0));
            this.f7751d = null;
        }
        if (typedArray.hasValue(2)) {
            c(context, c0622sA, typedArray.getResourceId(2, 0));
            this.f7752e = null;
        }
        if (typedArray.hasValue(5)) {
            c(context, c0622sA, typedArray.getResourceId(5, 0));
            this.f = null;
        }
        if (typedArray.hasValue(6)) {
            c(context, c0622sA, typedArray.getResourceId(6, 0));
            this.f7753g = null;
        }
        r0VarM.n();
        boolean z7 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        int[] iArr2 = AbstractC0206a.f5157A;
        if (resourceId3 != -1) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(resourceId3, iArr2);
            J.r0 r0Var = new J.r0(context, typedArrayObtainStyledAttributes);
            if (z7 || !typedArrayObtainStyledAttributes.hasValue(14)) {
                z4 = false;
                z5 = false;
            } else {
                z5 = typedArrayObtainStyledAttributes.getBoolean(14, false);
                z4 = true;
            }
            j(context, r0Var);
            string2 = typedArrayObtainStyledAttributes.hasValue(15) ? typedArrayObtainStyledAttributes.getString(15) : null;
            string = typedArrayObtainStyledAttributes.hasValue(13) ? typedArrayObtainStyledAttributes.getString(13) : null;
            r0Var.n();
        } else {
            string = null;
            string2 = null;
            z4 = false;
            z5 = false;
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i5, 0);
        J.r0 r0Var2 = new J.r0(context, typedArrayObtainStyledAttributes2);
        if (z7 || !typedArrayObtainStyledAttributes2.hasValue(14)) {
            z6 = z5;
        } else {
            z6 = typedArrayObtainStyledAttributes2.getBoolean(14, false);
            z4 = true;
        }
        if (typedArrayObtainStyledAttributes2.hasValue(15)) {
            string2 = typedArrayObtainStyledAttributes2.getString(15);
        }
        if (typedArrayObtainStyledAttributes2.hasValue(13)) {
            string = typedArrayObtainStyledAttributes2.getString(13);
        }
        if (typedArrayObtainStyledAttributes2.hasValue(0) && typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        j(context, r0Var2);
        r0Var2.n();
        if (!z7 && z4) {
            textView.setAllCaps(z6);
        }
        Typeface typeface = this.f7758l;
        if (typeface != null) {
            if (this.f7757k == -1) {
                textView.setTypeface(typeface, this.f7756j);
            } else {
                textView.setTypeface(typeface);
            }
        }
        if (string != null) {
            T.d(textView, string);
        }
        if (string2 != null) {
            S.b(textView, S.a(string2));
        }
        int[] iArr3 = AbstractC0206a.f5168i;
        C0573a0 c0573a0 = this.f7755i;
        Context context3 = c0573a0.f7822i;
        TypedArray typedArrayObtainStyledAttributes3 = context3.obtainStyledAttributes(attributeSet, iArr3, i5, 0);
        TextView textView2 = c0573a0.f7821h;
        J.N.d(textView2, textView2.getContext(), iArr3, attributeSet, typedArrayObtainStyledAttributes3, i5, 0);
        if (typedArrayObtainStyledAttributes3.hasValue(5)) {
            c0573a0.f7815a = typedArrayObtainStyledAttributes3.getInt(5, 0);
        }
        float dimension = typedArrayObtainStyledAttributes3.hasValue(4) ? typedArrayObtainStyledAttributes3.getDimension(4, -1.0f) : -1.0f;
        float dimension2 = typedArrayObtainStyledAttributes3.hasValue(2) ? typedArrayObtainStyledAttributes3.getDimension(2, -1.0f) : -1.0f;
        float dimension3 = typedArrayObtainStyledAttributes3.hasValue(1) ? typedArrayObtainStyledAttributes3.getDimension(1, -1.0f) : -1.0f;
        if (typedArrayObtainStyledAttributes3.hasValue(3) && (resourceId2 = typedArrayObtainStyledAttributes3.getResourceId(3, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes3.getResources().obtainTypedArray(resourceId2);
            int length = typedArrayObtainTypedArray.length();
            int[] iArr4 = new int[length];
            if (length > 0) {
                for (int i10 = 0; i10 < length; i10++) {
                    iArr4[i10] = typedArrayObtainTypedArray.getDimensionPixelSize(i10, -1);
                }
                c0573a0.f = C0573a0.a(iArr4);
                c0573a0.c();
            }
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes3.recycle();
        if (!c0573a0.d()) {
            c0573a0.f7815a = 0;
        } else if (c0573a0.f7815a == 1) {
            if (!c0573a0.f7820g) {
                DisplayMetrics displayMetrics = context3.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    i9 = 2;
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                } else {
                    i9 = 2;
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(i9, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                c0573a0.e(dimension2, dimension3, dimension);
            }
            c0573a0.b();
        }
        Method method = N1.f7721a;
        if (c0573a0.f7815a != 0) {
            int[] iArr5 = c0573a0.f;
            if (iArr5.length > 0) {
                if (T.a(textView) != -1.0f) {
                    T.b(textView, Math.round(c0573a0.f7818d), Math.round(c0573a0.f7819e), Math.round(c0573a0.f7817c), 0);
                } else {
                    T.c(textView, iArr5, 0);
                }
            }
        }
        TypedArray typedArrayObtainStyledAttributes4 = context.obtainStyledAttributes(attributeSet, iArr3);
        int resourceId4 = typedArrayObtainStyledAttributes4.getResourceId(8, -1);
        if (resourceId4 != -1) {
            drawableB = c0622sA.b(context, resourceId4);
            i6 = 13;
        } else {
            i6 = 13;
            drawableB = null;
        }
        int resourceId5 = typedArrayObtainStyledAttributes4.getResourceId(i6, -1);
        Drawable drawableB2 = resourceId5 != -1 ? c0622sA.b(context, resourceId5) : null;
        int resourceId6 = typedArrayObtainStyledAttributes4.getResourceId(9, -1);
        Drawable drawableB3 = resourceId6 != -1 ? c0622sA.b(context, resourceId6) : null;
        int resourceId7 = typedArrayObtainStyledAttributes4.getResourceId(6, -1);
        Drawable drawableB4 = resourceId7 != -1 ? c0622sA.b(context, resourceId7) : null;
        int resourceId8 = typedArrayObtainStyledAttributes4.getResourceId(10, -1);
        Drawable drawableB5 = resourceId8 != -1 ? c0622sA.b(context, resourceId8) : null;
        int resourceId9 = typedArrayObtainStyledAttributes4.getResourceId(7, -1);
        Drawable drawableB6 = resourceId9 != -1 ? c0622sA.b(context, resourceId9) : null;
        if (drawableB5 != null || drawableB6 != null) {
            Drawable[] drawableArrA = AbstractC0571Q.a(textView);
            if (drawableB5 == null) {
                drawableB5 = drawableArrA[0];
            }
            if (drawableB2 == null) {
                drawableB2 = drawableArrA[1];
            }
            if (drawableB6 == null) {
                drawableB6 = drawableArrA[2];
            }
            if (drawableB4 == null) {
                drawableB4 = drawableArrA[3];
            }
            AbstractC0571Q.b(textView, drawableB5, drawableB2, drawableB6, drawableB4);
        } else if (drawableB != null || drawableB2 != null || drawableB3 != null || drawableB4 != null) {
            Drawable[] drawableArrA2 = AbstractC0571Q.a(textView);
            Drawable drawable = drawableArrA2[0];
            if (drawable == null && drawableArrA2[2] == null) {
                Drawable[] compoundDrawables = textView.getCompoundDrawables();
                if (drawableB == null) {
                    drawableB = compoundDrawables[0];
                }
                if (drawableB2 == null) {
                    drawableB2 = compoundDrawables[1];
                }
                if (drawableB3 == null) {
                    drawableB3 = compoundDrawables[2];
                }
                if (drawableB4 == null) {
                    drawableB4 = compoundDrawables[3];
                }
                textView.setCompoundDrawablesWithIntrinsicBounds(drawableB, drawableB2, drawableB3, drawableB4);
            } else {
                if (drawableB2 == null) {
                    drawableB2 = drawableArrA2[1];
                }
                Drawable drawable2 = drawableArrA2[2];
                if (drawableB4 == null) {
                    drawableB4 = drawableArrA2[3];
                }
                AbstractC0571Q.b(textView, drawable, drawableB2, drawable2, drawableB4);
            }
        }
        if (typedArrayObtainStyledAttributes4.hasValue(11)) {
            if (!typedArrayObtainStyledAttributes4.hasValue(11) || (resourceId = typedArrayObtainStyledAttributes4.getResourceId(11, 0)) == 0 || (colorStateList = A.r.a(context.getResources(), resourceId, context.getTheme())) == null) {
                colorStateList = typedArrayObtainStyledAttributes4.getColorStateList(11);
            }
            O.o.f(textView, colorStateList);
        }
        if (typedArrayObtainStyledAttributes4.hasValue(12)) {
            i7 = -1;
            fontMetricsInt = null;
            O.o.g(textView, AbstractC0591g0.b(typedArrayObtainStyledAttributes4.getInt(12, -1), null));
        } else {
            i7 = -1;
            fontMetricsInt = null;
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes4.getDimensionPixelSize(15, i7);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(18, i7);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(19, i7);
        typedArrayObtainStyledAttributes4.recycle();
        if (dimensionPixelSize != i7) {
            Z0.j.l(dimensionPixelSize);
            O.p.d(textView, dimensionPixelSize);
        }
        if (dimensionPixelSize2 != i7) {
            Z0.j.l(dimensionPixelSize2);
            Paint.FontMetricsInt fontMetricsInt2 = textView.getPaint().getFontMetricsInt();
            int i11 = textView.getIncludeFontPadding() ? fontMetricsInt2.bottom : fontMetricsInt2.descent;
            if (dimensionPixelSize2 > Math.abs(i11)) {
                textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), dimensionPixelSize2 - i11);
            }
            i8 = -1;
        } else {
            i8 = i7;
        }
        if (dimensionPixelSize3 != i8) {
            Z0.j.l(dimensionPixelSize3);
            if (dimensionPixelSize3 != textView.getPaint().getFontMetricsInt(fontMetricsInt)) {
                textView.setLineSpacing(dimensionPixelSize3 - r0, 1.0f);
            }
        }
    }

    public final void g(Context context, int i5) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i5, AbstractC0206a.f5157A);
        J.r0 r0Var = new J.r0(context, typedArrayObtainStyledAttributes);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(14);
        TextView textView = this.f7748a;
        if (zHasValue) {
            textView.setAllCaps(typedArrayObtainStyledAttributes.getBoolean(14, false));
        }
        if (typedArrayObtainStyledAttributes.hasValue(0) && typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        j(context, r0Var);
        if (typedArrayObtainStyledAttributes.hasValue(13) && (string = typedArrayObtainStyledAttributes.getString(13)) != null) {
            T.d(textView, string);
        }
        r0Var.n();
        Typeface typeface = this.f7758l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f7756j);
        }
    }

    public final void h(ColorStateList colorStateList) {
        if (this.f7754h == null) {
            this.f7754h = new x1();
        }
        x1 x1Var = this.f7754h;
        x1Var.f8051a = colorStateList;
        x1Var.f8054d = colorStateList != null;
        this.f7749b = x1Var;
        this.f7750c = x1Var;
        this.f7751d = x1Var;
        this.f7752e = x1Var;
        this.f = x1Var;
        this.f7753g = x1Var;
    }

    public final void i(PorterDuff.Mode mode) {
        if (this.f7754h == null) {
            this.f7754h = new x1();
        }
        x1 x1Var = this.f7754h;
        x1Var.f8052b = mode;
        x1Var.f8053c = mode != null;
        this.f7749b = x1Var;
        this.f7750c = x1Var;
        this.f7751d = x1Var;
        this.f7752e = x1Var;
        this.f = x1Var;
        this.f7753g = x1Var;
    }

    public final void j(Context context, J.r0 r0Var) {
        String string;
        int i5 = this.f7756j;
        TypedArray typedArray = (TypedArray) r0Var.f1007d;
        this.f7756j = typedArray.getInt(2, i5);
        int i6 = typedArray.getInt(11, -1);
        this.f7757k = i6;
        if (i6 != -1) {
            this.f7756j &= 2;
        }
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.f7759m = false;
                int i7 = typedArray.getInt(1, 1);
                if (i7 == 1) {
                    this.f7758l = Typeface.SANS_SERIF;
                    return;
                } else if (i7 == 2) {
                    this.f7758l = Typeface.SERIF;
                    return;
                } else {
                    if (i7 != 3) {
                        return;
                    }
                    this.f7758l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f7758l = null;
        int i8 = typedArray.hasValue(12) ? 12 : 10;
        int i9 = this.f7757k;
        int i10 = this.f7756j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceI = r0Var.i(i8, this.f7756j, new C0570P(this, i9, i10, new WeakReference(this.f7748a)));
                if (typefaceI != null) {
                    if (this.f7757k != -1) {
                        this.f7758l = U.a(Typeface.create(typefaceI, 0), this.f7757k, (this.f7756j & 2) != 0);
                    } else {
                        this.f7758l = typefaceI;
                    }
                }
                this.f7759m = this.f7758l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f7758l != null || (string = typedArray.getString(i8)) == null) {
            return;
        }
        if (this.f7757k != -1) {
            this.f7758l = U.a(Typeface.create(string, 0), this.f7757k, (this.f7756j & 2) != 0);
        } else {
            this.f7758l = Typeface.create(string, this.f7756j);
        }
    }
}
