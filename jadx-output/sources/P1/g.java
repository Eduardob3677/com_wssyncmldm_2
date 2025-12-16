package P1;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import com.samsung.android.knox.custom.CustomDeviceManager;
import java.util.BitSet;
import java.util.Objects;
import s2.C0837c;

/* loaded from: classes.dex */
public class g extends Drawable implements v {

    /* renamed from: y, reason: collision with root package name */
    public static final Paint f2074y;

    /* renamed from: c, reason: collision with root package name */
    public f f2075c;

    /* renamed from: d, reason: collision with root package name */
    public final t[] f2076d;

    /* renamed from: e, reason: collision with root package name */
    public final t[] f2077e;
    public final BitSet f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2078g;

    /* renamed from: h, reason: collision with root package name */
    public final Matrix f2079h;

    /* renamed from: i, reason: collision with root package name */
    public final Path f2080i;

    /* renamed from: j, reason: collision with root package name */
    public final Path f2081j;

    /* renamed from: k, reason: collision with root package name */
    public final RectF f2082k;

    /* renamed from: l, reason: collision with root package name */
    public final RectF f2083l;

    /* renamed from: m, reason: collision with root package name */
    public final Region f2084m;
    public final Region n;

    /* renamed from: o, reason: collision with root package name */
    public k f2085o;

    /* renamed from: p, reason: collision with root package name */
    public final Paint f2086p;

    /* renamed from: q, reason: collision with root package name */
    public final Paint f2087q;

    /* renamed from: r, reason: collision with root package name */
    public final O1.a f2088r;

    /* renamed from: s, reason: collision with root package name */
    public final C0837c f2089s;

    /* renamed from: t, reason: collision with root package name */
    public final m f2090t;

    /* renamed from: u, reason: collision with root package name */
    public PorterDuffColorFilter f2091u;

    /* renamed from: v, reason: collision with root package name */
    public PorterDuffColorFilter f2092v;

    /* renamed from: w, reason: collision with root package name */
    public final RectF f2093w;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f2094x;

    static {
        Paint paint = new Paint(1);
        f2074y = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public g() {
        this(new k());
    }

    public final void a(RectF rectF, Path path) {
        f fVar = this.f2075c;
        this.f2090t.a(fVar.f2055a, fVar.f2063j, rectF, this.f2089s, path);
        if (this.f2075c.f2062i != 1.0f) {
            Matrix matrix = this.f2079h;
            matrix.reset();
            float f = this.f2075c.f2062i;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.f2093w, true);
    }

    public final PorterDuffColorFilter b(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z4) {
        int color;
        int iC;
        if (colorStateList == null || mode == null) {
            if (!z4 || (iC = c((color = paint.getColor()))) == color) {
                return null;
            }
            return new PorterDuffColorFilter(iC, PorterDuff.Mode.SRC_IN);
        }
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z4) {
            colorForState = c(colorForState);
        }
        return new PorterDuffColorFilter(colorForState, mode);
    }

    public final int c(int i5) {
        int i6;
        f fVar = this.f2075c;
        float f = fVar.n + fVar.f2067o + fVar.f2066m;
        I1.a aVar = fVar.f2056b;
        if (aVar == null || !aVar.f873a || B.a.c(i5, CustomDeviceManager.CALL_SCREEN_ALL) != aVar.f876d) {
            return i5;
        }
        float fMin = (aVar.f877e <= 0.0f || f <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f / r2)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        int iAlpha = Color.alpha(i5);
        int iW = W1.a.W(B.a.c(i5, CustomDeviceManager.CALL_SCREEN_ALL), fMin, aVar.f874b);
        if (fMin > 0.0f && (i6 = aVar.f875c) != 0) {
            iW = W1.a.X(iW, B.a.c(i6, I1.a.f));
        }
        return B.a.c(iW, iAlpha);
    }

    public final void d(Canvas canvas) {
        if (this.f.cardinality() > 0) {
            Log.w("g", "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i5 = this.f2075c.f2070r;
        Path path = this.f2080i;
        O1.a aVar = this.f2088r;
        if (i5 != 0) {
            canvas.drawPath(path, aVar.f1944a);
        }
        for (int i6 = 0; i6 < 4; i6++) {
            t tVar = this.f2076d[i6];
            int i7 = this.f2075c.f2069q;
            Matrix matrix = t.f2145b;
            tVar.a(matrix, aVar, i7, canvas);
            this.f2077e[i6].a(matrix, aVar, this.f2075c.f2069q, canvas);
        }
        if (this.f2094x) {
            f fVar = this.f2075c;
            int iSin = (int) (Math.sin(Math.toRadians(fVar.f2071s)) * fVar.f2070r);
            f fVar2 = this.f2075c;
            int iCos = (int) (Math.cos(Math.toRadians(fVar2.f2071s)) * fVar2.f2070r);
            canvas.translate(-iSin, -iCos);
            canvas.drawPath(path, f2074y);
            canvas.translate(iSin, iCos);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint = this.f2086p;
        paint.setColorFilter(this.f2091u);
        int alpha = paint.getAlpha();
        int i5 = this.f2075c.f2065l;
        paint.setAlpha(((i5 + (i5 >>> 7)) * alpha) >>> 8);
        Paint paint2 = this.f2087q;
        paint2.setColorFilter(this.f2092v);
        paint2.setStrokeWidth(this.f2075c.f2064k);
        int alpha2 = paint2.getAlpha();
        int i6 = this.f2075c.f2065l;
        paint2.setAlpha(((i6 + (i6 >>> 7)) * alpha2) >>> 8);
        boolean z4 = this.f2078g;
        Path path = this.f2080i;
        if (z4) {
            float f = -(h() ? paint2.getStrokeWidth() / 2.0f : 0.0f);
            k kVar = this.f2075c.f2055a;
            j jVarE = kVar.e();
            c bVar = kVar.f2111e;
            if (!(bVar instanceof h)) {
                bVar = new b(f, bVar);
            }
            jVarE.f2100e = bVar;
            c bVar2 = kVar.f;
            if (!(bVar2 instanceof h)) {
                bVar2 = new b(f, bVar2);
            }
            jVarE.f = bVar2;
            c bVar3 = kVar.f2113h;
            if (!(bVar3 instanceof h)) {
                bVar3 = new b(f, bVar3);
            }
            jVarE.f2102h = bVar3;
            c bVar4 = kVar.f2112g;
            if (!(bVar4 instanceof h)) {
                bVar4 = new b(f, bVar4);
            }
            jVarE.f2101g = bVar4;
            k kVarA = jVarE.a();
            this.f2085o = kVarA;
            float f5 = this.f2075c.f2063j;
            RectF rectF = this.f2083l;
            rectF.set(g());
            float strokeWidth = h() ? paint2.getStrokeWidth() / 2.0f : 0.0f;
            rectF.inset(strokeWidth, strokeWidth);
            this.f2090t.a(kVarA, f5, rectF, null, this.f2081j);
            a(g(), path);
            this.f2078g = false;
        }
        f fVar = this.f2075c;
        int i7 = fVar.f2068p;
        if (i7 != 1 && fVar.f2069q > 0) {
            if (i7 == 2) {
                canvas.save();
                f fVar2 = this.f2075c;
                int iSin = (int) (Math.sin(Math.toRadians(fVar2.f2071s)) * fVar2.f2070r);
                f fVar3 = this.f2075c;
                canvas.translate(iSin, (int) (Math.cos(Math.toRadians(fVar3.f2071s)) * fVar3.f2070r));
                if (this.f2094x) {
                    RectF rectF2 = this.f2093w;
                    int iWidth = (int) (rectF2.width() - getBounds().width());
                    int iHeight = (int) (rectF2.height() - getBounds().height());
                    if (iWidth < 0 || iHeight < 0) {
                        throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
                    }
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap((this.f2075c.f2069q * 2) + ((int) rectF2.width()) + iWidth, (this.f2075c.f2069q * 2) + ((int) rectF2.height()) + iHeight, Bitmap.Config.ARGB_8888);
                    Canvas canvas2 = new Canvas(bitmapCreateBitmap);
                    float f6 = (getBounds().left - this.f2075c.f2069q) - iWidth;
                    float f7 = (getBounds().top - this.f2075c.f2069q) - iHeight;
                    canvas2.translate(-f6, -f7);
                    d(canvas2);
                    canvas.drawBitmap(bitmapCreateBitmap, f6, f7, (Paint) null);
                    bitmapCreateBitmap.recycle();
                    canvas.restore();
                } else {
                    d(canvas);
                    canvas.restore();
                }
            } else if (!fVar.f2055a.d(g())) {
                path.isConvex();
            }
        }
        f fVar4 = this.f2075c;
        Paint.Style style = fVar4.f2073u;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            e(canvas, paint, path, fVar4.f2055a, g());
        }
        if (h()) {
            f(canvas);
        }
        paint.setAlpha(alpha);
        paint2.setAlpha(alpha2);
    }

    public final void e(Canvas canvas, Paint paint, Path path, k kVar, RectF rectF) {
        if (!kVar.d(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = kVar.f.a(rectF) * this.f2075c.f2063j;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    public void f(Canvas canvas) {
        Paint paint = this.f2087q;
        Path path = this.f2081j;
        k kVar = this.f2085o;
        RectF rectF = this.f2083l;
        rectF.set(g());
        float strokeWidth = h() ? paint.getStrokeWidth() / 2.0f : 0.0f;
        rectF.inset(strokeWidth, strokeWidth);
        e(canvas, paint, path, kVar, rectF);
    }

    public final RectF g() {
        RectF rectF = this.f2082k;
        rectF.set(getBounds());
        return rectF;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2075c.f2065l;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f2075c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        f fVar = this.f2075c;
        if (fVar.f2068p == 2) {
            return;
        }
        if (fVar.f2055a.d(g())) {
            outline.setRoundRect(getBounds(), this.f2075c.f2055a.f2111e.a(g()) * this.f2075c.f2063j);
        } else {
            RectF rectFG = g();
            Path path = this.f2080i;
            a(rectFG, path);
            outline.setPath(path);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.f2075c.f2061h;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.f2084m;
        region.set(bounds);
        RectF rectFG = g();
        Path path = this.f2080i;
        a(rectFG, path);
        Region region2 = this.n;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public final boolean h() {
        Paint.Style style = this.f2075c.f2073u;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f2087q.getStrokeWidth() > 0.0f;
    }

    public final void i(Context context) {
        this.f2075c.f2056b = new I1.a(context);
        n();
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.f2078g = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f2075c.f) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f2075c.f2059e) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f2075c.f2058d) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f2075c.f2057c) != null && colorStateList4.isStateful())));
    }

    public final void j(float f) {
        f fVar = this.f2075c;
        if (fVar.n != f) {
            fVar.n = f;
            n();
        }
    }

    public final void k(ColorStateList colorStateList) {
        f fVar = this.f2075c;
        if (fVar.f2057c != colorStateList) {
            fVar.f2057c = colorStateList;
            onStateChange(getState());
        }
    }

    public final boolean l(int[] iArr) {
        boolean z4;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.f2075c.f2057c == null || color2 == (colorForState2 = this.f2075c.f2057c.getColorForState(iArr, (color2 = (paint2 = this.f2086p).getColor())))) {
            z4 = false;
        } else {
            paint2.setColor(colorForState2);
            z4 = true;
        }
        if (this.f2075c.f2058d == null || color == (colorForState = this.f2075c.f2058d.getColorForState(iArr, (color = (paint = this.f2087q).getColor())))) {
            return z4;
        }
        paint.setColor(colorForState);
        return true;
    }

    public final boolean m() {
        PorterDuffColorFilter porterDuffColorFilter = this.f2091u;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f2092v;
        f fVar = this.f2075c;
        this.f2091u = b(fVar.f, fVar.f2060g, this.f2086p, true);
        f fVar2 = this.f2075c;
        this.f2092v = b(fVar2.f2059e, fVar2.f2060g, this.f2087q, false);
        f fVar3 = this.f2075c;
        if (fVar3.f2072t) {
            int colorForState = fVar3.f.getColorForState(getState(), 0);
            O1.a aVar = this.f2088r;
            aVar.getClass();
            aVar.f1947d = B.a.c(colorForState, 68);
            aVar.f1948e = B.a.c(colorForState, 20);
            aVar.f = B.a.c(colorForState, 0);
            aVar.f1944a.setColor(aVar.f1947d);
        }
        return (Objects.equals(porterDuffColorFilter, this.f2091u) && Objects.equals(porterDuffColorFilter2, this.f2092v)) ? false : true;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f2075c = new f(this.f2075c);
        return this;
    }

    public final void n() {
        f fVar = this.f2075c;
        float f = fVar.n + fVar.f2067o;
        fVar.f2069q = (int) Math.ceil(0.75f * f);
        this.f2075c.f2070r = (int) Math.ceil(f * 0.25f);
        m();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f2078g = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z4 = l(iArr) || m();
        if (z4) {
            invalidateSelf();
        }
        return z4;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i5) {
        f fVar = this.f2075c;
        if (fVar.f2065l != i5) {
            fVar.f2065l = i5;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2075c.getClass();
        super.invalidateSelf();
    }

    @Override // P1.v
    public final void setShapeAppearanceModel(k kVar) {
        this.f2075c.f2055a = kVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i5) {
        setTintList(ColorStateList.valueOf(i5));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f2075c.f = colorStateList;
        m();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        f fVar = this.f2075c;
        if (fVar.f2060g != mode) {
            fVar.f2060g = mode;
            m();
            super.invalidateSelf();
        }
    }

    public g(Context context, AttributeSet attributeSet, int i5, int i6) {
        this(k.b(context, attributeSet, i5, i6).a());
    }

    public g(k kVar) {
        this(new f(kVar));
    }

    public g(f fVar) {
        m mVar;
        this.f2076d = new t[4];
        this.f2077e = new t[4];
        this.f = new BitSet(8);
        this.f2079h = new Matrix();
        this.f2080i = new Path();
        this.f2081j = new Path();
        this.f2082k = new RectF();
        this.f2083l = new RectF();
        this.f2084m = new Region();
        this.n = new Region();
        Paint paint = new Paint(1);
        this.f2086p = paint;
        Paint paint2 = new Paint(1);
        this.f2087q = paint2;
        this.f2088r = new O1.a();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            mVar = l.f2118a;
        } else {
            mVar = new m();
        }
        this.f2090t = mVar;
        this.f2093w = new RectF();
        this.f2094x = true;
        this.f2075c = fVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        m();
        l(getState());
        this.f2089s = new C0837c(this);
    }
}
