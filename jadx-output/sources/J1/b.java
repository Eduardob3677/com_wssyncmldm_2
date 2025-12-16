package J1;

import J.Q;
import a0.C0102a;
import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import f1.AbstractC0420a;
import java.util.WeakHashMap;
import w1.AbstractC0899a;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: A, reason: collision with root package name */
    public CharSequence f1043A;

    /* renamed from: B, reason: collision with root package name */
    public CharSequence f1044B;

    /* renamed from: C, reason: collision with root package name */
    public boolean f1045C;
    public Bitmap E;

    /* renamed from: F, reason: collision with root package name */
    public float f1047F;

    /* renamed from: G, reason: collision with root package name */
    public float f1048G;

    /* renamed from: H, reason: collision with root package name */
    public float f1049H;

    /* renamed from: I, reason: collision with root package name */
    public float f1050I;

    /* renamed from: J, reason: collision with root package name */
    public float f1051J;

    /* renamed from: K, reason: collision with root package name */
    public int f1052K;

    /* renamed from: L, reason: collision with root package name */
    public int[] f1053L;

    /* renamed from: M, reason: collision with root package name */
    public boolean f1054M;

    /* renamed from: N, reason: collision with root package name */
    public final TextPaint f1055N;

    /* renamed from: O, reason: collision with root package name */
    public final TextPaint f1056O;

    /* renamed from: P, reason: collision with root package name */
    public TimeInterpolator f1057P;

    /* renamed from: Q, reason: collision with root package name */
    public TimeInterpolator f1058Q;

    /* renamed from: R, reason: collision with root package name */
    public float f1059R;

    /* renamed from: S, reason: collision with root package name */
    public float f1060S;

    /* renamed from: T, reason: collision with root package name */
    public float f1061T;

    /* renamed from: U, reason: collision with root package name */
    public ColorStateList f1062U;

    /* renamed from: V, reason: collision with root package name */
    public float f1063V;

    /* renamed from: W, reason: collision with root package name */
    public float f1064W;

    /* renamed from: X, reason: collision with root package name */
    public float f1065X;

    /* renamed from: Y, reason: collision with root package name */
    public StaticLayout f1066Y;

    /* renamed from: Z, reason: collision with root package name */
    public float f1067Z;

    /* renamed from: a, reason: collision with root package name */
    public final View f1068a;

    /* renamed from: a0, reason: collision with root package name */
    public float f1069a0;

    /* renamed from: b, reason: collision with root package name */
    public float f1070b;

    /* renamed from: b0, reason: collision with root package name */
    public float f1071b0;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f1072c;

    /* renamed from: c0, reason: collision with root package name */
    public CharSequence f1073c0;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f1074d;

    /* renamed from: e, reason: collision with root package name */
    public final RectF f1076e;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f1082j;

    /* renamed from: k, reason: collision with root package name */
    public ColorStateList f1083k;

    /* renamed from: l, reason: collision with root package name */
    public float f1084l;

    /* renamed from: m, reason: collision with root package name */
    public float f1085m;
    public float n;

    /* renamed from: o, reason: collision with root package name */
    public float f1086o;

    /* renamed from: p, reason: collision with root package name */
    public float f1087p;

    /* renamed from: q, reason: collision with root package name */
    public float f1088q;

    /* renamed from: r, reason: collision with root package name */
    public Typeface f1089r;

    /* renamed from: s, reason: collision with root package name */
    public Typeface f1090s;

    /* renamed from: t, reason: collision with root package name */
    public Typeface f1091t;

    /* renamed from: u, reason: collision with root package name */
    public Typeface f1092u;

    /* renamed from: v, reason: collision with root package name */
    public Typeface f1093v;

    /* renamed from: w, reason: collision with root package name */
    public Typeface f1094w;

    /* renamed from: x, reason: collision with root package name */
    public Typeface f1095x;

    /* renamed from: y, reason: collision with root package name */
    public M1.a f1096y;
    public int f = 16;

    /* renamed from: g, reason: collision with root package name */
    public int f1079g = 16;

    /* renamed from: h, reason: collision with root package name */
    public float f1080h = 15.0f;

    /* renamed from: i, reason: collision with root package name */
    public float f1081i = 15.0f;

    /* renamed from: z, reason: collision with root package name */
    public final TextUtils.TruncateAt f1097z = TextUtils.TruncateAt.END;

    /* renamed from: D, reason: collision with root package name */
    public final boolean f1046D = true;

    /* renamed from: d0, reason: collision with root package name */
    public final int f1075d0 = 1;

    /* renamed from: e0, reason: collision with root package name */
    public final float f1077e0 = 1.0f;

    /* renamed from: f0, reason: collision with root package name */
    public final int f1078f0 = 1;

    public b(View view) {
        this.f1068a = view;
        TextPaint textPaint = new TextPaint(129);
        this.f1055N = textPaint;
        this.f1056O = new TextPaint(textPaint);
        this.f1074d = new Rect();
        this.f1072c = new Rect();
        this.f1076e = new RectF();
        g(view.getContext().getResources().getConfiguration());
    }

    public static int a(int i5, float f, int i6) {
        float f5 = 1.0f - f;
        return Color.argb(Math.round((Color.alpha(i6) * f) + (Color.alpha(i5) * f5)), Math.round((Color.red(i6) * f) + (Color.red(i5) * f5)), Math.round((Color.green(i6) * f) + (Color.green(i5) * f5)), Math.round((Color.blue(i6) * f) + (Color.blue(i5) * f5)));
    }

    public static float f(float f, float f5, float f6, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f6 = timeInterpolator.getInterpolation(f6);
        }
        return AbstractC0899a.a(f, f5, f6);
    }

    public final boolean b(CharSequence charSequence) {
        WeakHashMap weakHashMap = Q.f940a;
        boolean z4 = this.f1068a.getLayoutDirection() == 1;
        if (this.f1046D) {
            return (z4 ? H.g.f828d : H.g.f827c).d(charSequence, charSequence.length());
        }
        return z4;
    }

    public final void c(float f, boolean z4) {
        float f5;
        float f6;
        Typeface typeface;
        boolean z5;
        Layout.Alignment alignment;
        if (this.f1043A == null) {
            return;
        }
        float fWidth = this.f1074d.width();
        float fWidth2 = this.f1072c.width();
        if (Math.abs(f - 1.0f) < 1.0E-5f) {
            f5 = this.f1081i;
            f6 = this.f1063V;
            this.f1047F = 1.0f;
            typeface = this.f1089r;
        } else {
            float f7 = this.f1080h;
            float f8 = this.f1064W;
            Typeface typeface2 = this.f1092u;
            if (Math.abs(f - 0.0f) < 1.0E-5f) {
                this.f1047F = 1.0f;
            } else {
                this.f1047F = f(this.f1080h, this.f1081i, f, this.f1058Q) / this.f1080h;
            }
            float f9 = this.f1081i / this.f1080h;
            fWidth = (z4 || fWidth2 * f9 <= fWidth) ? fWidth2 : Math.min(fWidth / f9, fWidth2);
            f5 = f7;
            f6 = f8;
            typeface = typeface2;
        }
        TextPaint textPaint = this.f1055N;
        if (fWidth > 0.0f) {
            boolean z6 = this.f1048G != f5;
            boolean z7 = this.f1065X != f6;
            boolean z8 = this.f1095x != typeface;
            StaticLayout staticLayout = this.f1066Y;
            boolean z9 = z6 || z7 || (staticLayout != null && (fWidth > ((float) staticLayout.getWidth()) ? 1 : (fWidth == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z8 || this.f1054M;
            this.f1048G = f5;
            this.f1065X = f6;
            this.f1095x = typeface;
            this.f1054M = false;
            textPaint.setLinearText(this.f1047F != 1.0f);
            z5 = z9;
        } else {
            z5 = false;
        }
        if (this.f1044B == null || z5) {
            textPaint.setTextSize(this.f1048G);
            textPaint.setTypeface(this.f1095x);
            textPaint.setLetterSpacing(this.f1065X);
            boolean zB = b(this.f1043A);
            this.f1045C = zB;
            int i5 = this.f1075d0;
            if (i5 <= 1 || zB) {
                i5 = 1;
            }
            if (i5 == 1) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                int absoluteGravity = Gravity.getAbsoluteGravity(this.f, zB ? 1 : 0) & 7;
                alignment = absoluteGravity != 1 ? absoluteGravity != 5 ? this.f1045C ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : this.f1045C ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER;
            }
            i iVar = new i(this.f1043A, textPaint, (int) fWidth);
            iVar.f1119l = this.f1097z;
            iVar.f1118k = zB;
            iVar.f1113e = alignment;
            iVar.f1117j = false;
            iVar.f = i5;
            float f10 = this.f1077e0;
            iVar.f1114g = 0.0f;
            iVar.f1115h = f10;
            iVar.f1116i = this.f1078f0;
            StaticLayout staticLayoutA = iVar.a();
            staticLayoutA.getClass();
            this.f1066Y = staticLayoutA;
            this.f1044B = staticLayoutA.getText();
        }
    }

    public final float d() {
        TextPaint textPaint = this.f1056O;
        textPaint.setTextSize(this.f1081i);
        textPaint.setTypeface(this.f1089r);
        textPaint.setLetterSpacing(this.f1063V);
        return -textPaint.ascent();
    }

    public final int e(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f1053L;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    public final void g(Configuration configuration) {
        Typeface typeface = this.f1091t;
        if (typeface != null) {
            this.f1090s = AbstractC0420a.X(configuration, typeface);
        }
        Typeface typeface2 = this.f1094w;
        if (typeface2 != null) {
            this.f1093v = AbstractC0420a.X(configuration, typeface2);
        }
        Typeface typeface3 = this.f1090s;
        if (typeface3 == null) {
            typeface3 = this.f1091t;
        }
        this.f1089r = typeface3;
        Typeface typeface4 = this.f1093v;
        if (typeface4 == null) {
            typeface4 = this.f1094w;
        }
        this.f1092u = typeface4;
        h(true);
    }

    public final void h(boolean z4) {
        float fMeasureText;
        StaticLayout staticLayout;
        View view = this.f1068a;
        if ((view.getHeight() <= 0 || view.getWidth() <= 0) && !z4) {
            return;
        }
        c(1.0f, z4);
        CharSequence charSequence = this.f1044B;
        TextPaint textPaint = this.f1055N;
        if (charSequence != null && (staticLayout = this.f1066Y) != null) {
            this.f1073c0 = TextUtils.ellipsize(charSequence, textPaint, staticLayout.getWidth(), this.f1097z);
        }
        CharSequence charSequence2 = this.f1073c0;
        if (charSequence2 != null) {
            this.f1067Z = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.f1067Z = 0.0f;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(this.f1079g, this.f1045C ? 1 : 0);
        int i5 = absoluteGravity & 112;
        Rect rect = this.f1074d;
        if (i5 == 48) {
            this.f1085m = rect.top;
        } else if (i5 != 80) {
            this.f1085m = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.f1085m = textPaint.ascent() + rect.bottom;
        }
        int i6 = absoluteGravity & 8388615;
        if (i6 == 1) {
            this.f1086o = rect.centerX() - (this.f1067Z / 2.0f);
        } else if (i6 != 5) {
            this.f1086o = rect.left;
        } else {
            this.f1086o = rect.right - this.f1067Z;
        }
        c(0.0f, z4);
        float height = this.f1066Y != null ? r1.getHeight() : 0.0f;
        StaticLayout staticLayout2 = this.f1066Y;
        if (staticLayout2 == null || this.f1075d0 <= 1) {
            CharSequence charSequence3 = this.f1044B;
            fMeasureText = charSequence3 != null ? textPaint.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        } else {
            fMeasureText = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.f1066Y;
        if (staticLayout3 != null) {
            staticLayout3.getLineCount();
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.f, this.f1045C ? 1 : 0);
        int i7 = absoluteGravity2 & 112;
        Rect rect2 = this.f1072c;
        if (i7 == 48) {
            this.f1084l = rect2.top;
        } else if (i7 != 80) {
            this.f1084l = rect2.centerY() - (height / 2.0f);
        } else {
            this.f1084l = textPaint.descent() + (rect2.bottom - height);
        }
        int i8 = absoluteGravity2 & 8388615;
        if (i8 == 1) {
            this.n = rect2.centerX() - (fMeasureText / 2.0f);
        } else if (i8 != 5) {
            this.n = rect2.left;
        } else {
            this.n = rect2.right - fMeasureText;
        }
        Bitmap bitmap = this.E;
        if (bitmap != null) {
            bitmap.recycle();
            this.E = null;
        }
        l(this.f1070b);
        float f = this.f1070b;
        float f5 = f(rect2.left, rect.left, f, this.f1057P);
        RectF rectF = this.f1076e;
        rectF.left = f5;
        rectF.top = f(this.f1084l, this.f1085m, f, this.f1057P);
        rectF.right = f(rect2.right, rect.right, f, this.f1057P);
        rectF.bottom = f(rect2.bottom, rect.bottom, f, this.f1057P);
        this.f1087p = f(this.n, this.f1086o, f, this.f1057P);
        this.f1088q = f(this.f1084l, this.f1085m, f, this.f1057P);
        l(f);
        C0102a c0102a = AbstractC0899a.f9597b;
        this.f1069a0 = 1.0f - f(0.0f, 1.0f, 1.0f - f, c0102a);
        WeakHashMap weakHashMap = Q.f940a;
        view.postInvalidateOnAnimation();
        this.f1071b0 = f(1.0f, 0.0f, f, c0102a);
        view.postInvalidateOnAnimation();
        ColorStateList colorStateList = this.f1083k;
        ColorStateList colorStateList2 = this.f1082j;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(a(e(colorStateList2), f, e(this.f1083k)));
        } else {
            textPaint.setColor(e(colorStateList));
        }
        float f6 = this.f1063V;
        float f7 = this.f1064W;
        if (f6 != f7) {
            textPaint.setLetterSpacing(f(f7, f6, f, c0102a));
        } else {
            textPaint.setLetterSpacing(f6);
        }
        this.f1049H = f(0.0f, this.f1059R, f, null);
        this.f1050I = f(0.0f, this.f1060S, f, null);
        this.f1051J = f(0.0f, this.f1061T, f, null);
        int iA = a(e(null), f, e(this.f1062U));
        this.f1052K = iA;
        textPaint.setShadowLayer(this.f1049H, this.f1050I, this.f1051J, iA);
        view.postInvalidateOnAnimation();
    }

    public final void i(ColorStateList colorStateList) {
        if (this.f1083k == colorStateList && this.f1082j == colorStateList) {
            return;
        }
        this.f1083k = colorStateList;
        this.f1082j = colorStateList;
        h(false);
    }

    public final boolean j(Typeface typeface) {
        M1.a aVar = this.f1096y;
        if (aVar != null) {
            aVar.f1827d = true;
        }
        if (this.f1091t == typeface) {
            return false;
        }
        this.f1091t = typeface;
        Typeface typefaceX = AbstractC0420a.X(this.f1068a.getContext().getResources().getConfiguration(), typeface);
        this.f1090s = typefaceX;
        if (typefaceX == null) {
            typefaceX = this.f1091t;
        }
        this.f1089r = typefaceX;
        return true;
    }

    public final void k(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        if (f != this.f1070b) {
            this.f1070b = f;
            float f5 = this.f1072c.left;
            Rect rect = this.f1074d;
            float f6 = f(f5, rect.left, f, this.f1057P);
            RectF rectF = this.f1076e;
            rectF.left = f6;
            rectF.top = f(this.f1084l, this.f1085m, f, this.f1057P);
            rectF.right = f(r1.right, rect.right, f, this.f1057P);
            rectF.bottom = f(r1.bottom, rect.bottom, f, this.f1057P);
            this.f1087p = f(this.n, this.f1086o, f, this.f1057P);
            this.f1088q = f(this.f1084l, this.f1085m, f, this.f1057P);
            l(f);
            C0102a c0102a = AbstractC0899a.f9597b;
            this.f1069a0 = 1.0f - f(0.0f, 1.0f, 1.0f - f, c0102a);
            WeakHashMap weakHashMap = Q.f940a;
            View view = this.f1068a;
            view.postInvalidateOnAnimation();
            this.f1071b0 = f(1.0f, 0.0f, f, c0102a);
            view.postInvalidateOnAnimation();
            ColorStateList colorStateList = this.f1083k;
            ColorStateList colorStateList2 = this.f1082j;
            TextPaint textPaint = this.f1055N;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(a(e(colorStateList2), f, e(this.f1083k)));
            } else {
                textPaint.setColor(e(colorStateList));
            }
            float f7 = this.f1063V;
            float f8 = this.f1064W;
            if (f7 != f8) {
                textPaint.setLetterSpacing(f(f8, f7, f, c0102a));
            } else {
                textPaint.setLetterSpacing(f7);
            }
            this.f1049H = f(0.0f, this.f1059R, f, null);
            this.f1050I = f(0.0f, this.f1060S, f, null);
            this.f1051J = f(0.0f, this.f1061T, f, null);
            int iA = a(e(null), f, e(this.f1062U));
            this.f1052K = iA;
            textPaint.setShadowLayer(this.f1049H, this.f1050I, this.f1051J, iA);
            view.postInvalidateOnAnimation();
        }
    }

    public final void l(float f) {
        c(f, false);
        WeakHashMap weakHashMap = Q.f940a;
        this.f1068a.postInvalidateOnAnimation();
    }

    public final void m(Typeface typeface) {
        boolean z4;
        boolean zJ = j(typeface);
        if (this.f1094w != typeface) {
            this.f1094w = typeface;
            Typeface typefaceX = AbstractC0420a.X(this.f1068a.getContext().getResources().getConfiguration(), typeface);
            this.f1093v = typefaceX;
            if (typefaceX == null) {
                typefaceX = this.f1094w;
            }
            this.f1092u = typefaceX;
            z4 = true;
        } else {
            z4 = false;
        }
        if (zJ || z4) {
            h(false);
        }
    }
}
