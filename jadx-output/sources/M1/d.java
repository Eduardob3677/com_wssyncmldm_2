package M1;

import A.r;
import Z0.j;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import android.util.TypedValue;
import c.AbstractC0206a;
import f1.AbstractC0420a;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final ColorStateList f1833a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1834b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1835c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1836d;

    /* renamed from: e, reason: collision with root package name */
    public final float f1837e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final float f1838g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f1839h;

    /* renamed from: i, reason: collision with root package name */
    public final float f1840i;

    /* renamed from: j, reason: collision with root package name */
    public final ColorStateList f1841j;

    /* renamed from: k, reason: collision with root package name */
    public float f1842k;

    /* renamed from: l, reason: collision with root package name */
    public final int f1843l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1844m = false;
    public Typeface n;

    public d(Context context, int i5) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i5, AbstractC0206a.f5157A);
        this.f1842k = typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
        this.f1841j = W1.a.B(context, typedArrayObtainStyledAttributes, 3);
        W1.a.B(context, typedArrayObtainStyledAttributes, 4);
        W1.a.B(context, typedArrayObtainStyledAttributes, 5);
        this.f1835c = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.f1836d = typedArrayObtainStyledAttributes.getInt(1, 1);
        int i6 = typedArrayObtainStyledAttributes.hasValue(12) ? 12 : 10;
        this.f1843l = typedArrayObtainStyledAttributes.getResourceId(i6, 0);
        this.f1834b = typedArrayObtainStyledAttributes.getString(i6);
        typedArrayObtainStyledAttributes.getBoolean(14, false);
        this.f1833a = W1.a.B(context, typedArrayObtainStyledAttributes, 6);
        this.f1837e = typedArrayObtainStyledAttributes.getFloat(7, 0.0f);
        this.f = typedArrayObtainStyledAttributes.getFloat(8, 0.0f);
        this.f1838g = typedArrayObtainStyledAttributes.getFloat(9, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i5, v1.a.f9543s);
        this.f1839h = typedArrayObtainStyledAttributes2.hasValue(0);
        this.f1840i = typedArrayObtainStyledAttributes2.getFloat(0, 0.0f);
        typedArrayObtainStyledAttributes2.recycle();
    }

    public final void a() {
        String str;
        Typeface typeface = this.n;
        int i5 = this.f1835c;
        if (typeface == null && (str = this.f1834b) != null) {
            this.n = Typeface.create(str, i5);
        }
        if (this.n == null) {
            int i6 = this.f1836d;
            if (i6 == 1) {
                this.n = Typeface.SANS_SERIF;
            } else if (i6 == 2) {
                this.n = Typeface.SERIF;
            } else if (i6 != 3) {
                this.n = Typeface.DEFAULT;
            } else {
                this.n = Typeface.MONOSPACE;
            }
            this.n = Typeface.create(this.n, i5);
        }
    }

    public final Typeface b(Context context) {
        if (this.f1844m) {
            return this.n;
        }
        if (!context.isRestricted()) {
            try {
                Typeface typefaceB = r.b(context, this.f1843l);
                this.n = typefaceB;
                if (typefaceB != null) {
                    this.n = Typeface.create(typefaceB, this.f1835c);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e5) {
                Log.d("TextAppearance", "Error loading font " + this.f1834b, e5);
            }
        }
        a();
        this.f1844m = true;
        return this.n;
    }

    public final void c(Context context, j jVar) {
        if (d(context)) {
            b(context);
        } else {
            a();
        }
        int i5 = this.f1843l;
        if (i5 == 0) {
            this.f1844m = true;
        }
        if (this.f1844m) {
            jVar.X(this.n, true);
            return;
        }
        try {
            b bVar = new b(this, jVar);
            ThreadLocal threadLocal = r.f36a;
            if (context.isRestricted()) {
                bVar.a(-4);
            } else {
                r.c(context, i5, new TypedValue(), 0, bVar, false, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.f1844m = true;
            jVar.W(1);
        } catch (Exception e5) {
            Log.d("TextAppearance", "Error loading font " + this.f1834b, e5);
            this.f1844m = true;
            jVar.W(-3);
        }
    }

    public final boolean d(Context context) throws InterruptedException, Resources.NotFoundException {
        Typeface typefaceC = null;
        int i5 = this.f1843l;
        if (i5 != 0) {
            ThreadLocal threadLocal = r.f36a;
            if (!context.isRestricted()) {
                typefaceC = r.c(context, i5, new TypedValue(), 0, null, false, true);
            }
        }
        return typefaceC != null;
    }

    public final void e(Context context, TextPaint textPaint, j jVar) {
        f(context, textPaint, jVar);
        ColorStateList colorStateList = this.f1841j;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        ColorStateList colorStateList2 = this.f1833a;
        textPaint.setShadowLayer(this.f1838g, this.f1837e, this.f, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public final void f(Context context, TextPaint textPaint, j jVar) {
        if (d(context)) {
            g(context, textPaint, b(context));
            return;
        }
        a();
        g(context, textPaint, this.n);
        c(context, new c(this, context, textPaint, jVar));
    }

    public final void g(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface typefaceX = AbstractC0420a.X(context.getResources().getConfiguration(), typeface);
        if (typefaceX != null) {
            typeface = typefaceX;
        }
        textPaint.setTypeface(typeface);
        int i5 = (~typeface.getStyle()) & this.f1835c;
        textPaint.setFakeBoldText((i5 & 1) != 0);
        textPaint.setTextSkewX((i5 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f1842k);
        if (this.f1839h) {
            textPaint.setLetterSpacing(this.f1840i);
        }
    }
}
