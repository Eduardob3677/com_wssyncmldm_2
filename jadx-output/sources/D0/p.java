package D0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import java.io.IOException;
import java.util.ArrayDeque;
import o.C0713b;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class p extends g {

    /* renamed from: l, reason: collision with root package name */
    public static final PorterDuff.Mode f446l = PorterDuff.Mode.SRC_IN;

    /* renamed from: d, reason: collision with root package name */
    public n f447d;

    /* renamed from: e, reason: collision with root package name */
    public PorterDuffColorFilter f448e;
    public ColorFilter f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f449g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f450h;

    /* renamed from: i, reason: collision with root package name */
    public final float[] f451i;

    /* renamed from: j, reason: collision with root package name */
    public final Matrix f452j;

    /* renamed from: k, reason: collision with root package name */
    public final Rect f453k;

    public p() {
        this.f450h = true;
        this.f451i = new float[9];
        this.f452j = new Matrix();
        this.f453k = new Rect();
        n nVar = new n();
        nVar.f436c = null;
        nVar.f437d = f446l;
        nVar.f435b = new m();
        this.f447d = nVar;
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f395c;
        if (drawable == null) {
            return false;
        }
        C.a.b(drawable);
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.f453k;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f;
        if (colorFilter == null) {
            colorFilter = this.f448e;
        }
        Matrix matrix = this.f452j;
        canvas.getMatrix(matrix);
        float[] fArr = this.f451i;
        matrix.getValues(fArr);
        float fAbs = Math.abs(fArr[0]);
        float fAbs2 = Math.abs(fArr[4]);
        float fAbs3 = Math.abs(fArr[1]);
        float fAbs4 = Math.abs(fArr[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (rect.width() * fAbs);
        int iMin = Math.min(2048, iWidth);
        int iMin2 = Math.min(2048, (int) (rect.height() * fAbs2));
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(rect.left, rect.top);
        if (isAutoMirrored() && C.b.a(this) == 1) {
            canvas.translate(rect.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        rect.offsetTo(0, 0);
        n nVar = this.f447d;
        Bitmap bitmap = nVar.f;
        if (bitmap == null || iMin != bitmap.getWidth() || iMin2 != nVar.f.getHeight()) {
            nVar.f = Bitmap.createBitmap(iMin, iMin2, Bitmap.Config.ARGB_8888);
            nVar.f443k = true;
        }
        if (this.f450h) {
            n nVar2 = this.f447d;
            if (nVar2.f443k || nVar2.f439g != nVar2.f436c || nVar2.f440h != nVar2.f437d || nVar2.f442j != nVar2.f438e || nVar2.f441i != nVar2.f435b.getRootAlpha()) {
                n nVar3 = this.f447d;
                nVar3.f.eraseColor(0);
                Canvas canvas2 = new Canvas(nVar3.f);
                m mVar = nVar3.f435b;
                mVar.a(mVar.f426g, m.f420p, canvas2, iMin, iMin2);
                n nVar4 = this.f447d;
                nVar4.f439g = nVar4.f436c;
                nVar4.f440h = nVar4.f437d;
                nVar4.f441i = nVar4.f435b.getRootAlpha();
                nVar4.f442j = nVar4.f438e;
                nVar4.f443k = false;
            }
        } else {
            n nVar5 = this.f447d;
            nVar5.f.eraseColor(0);
            Canvas canvas3 = new Canvas(nVar5.f);
            m mVar2 = nVar5.f435b;
            mVar2.a(mVar2.f426g, m.f420p, canvas3, iMin, iMin2);
        }
        n nVar6 = this.f447d;
        if (nVar6.f435b.getRootAlpha() >= 255 && colorFilter == null) {
            paint = null;
        } else {
            if (nVar6.f444l == null) {
                Paint paint2 = new Paint();
                nVar6.f444l = paint2;
                paint2.setFilterBitmap(true);
            }
            nVar6.f444l.setAlpha(nVar6.f435b.getRootAlpha());
            nVar6.f444l.setColorFilter(colorFilter);
            paint = nVar6.f444l;
        }
        canvas.drawBitmap(nVar6.f, (Rect) null, rect, paint);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f395c;
        return drawable != null ? drawable.getAlpha() : this.f447d.f435b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return this.f447d.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f395c;
        return drawable != null ? C.a.c(drawable) : this.f;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f395c != null) {
            return new o(this.f395c.getConstantState());
        }
        this.f447d.f434a = getChangingConfigurations();
        return this.f447d;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f395c;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f447d.f435b.f428i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f395c;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f447d.f435b.f427h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f395c;
        return drawable != null ? drawable.isAutoMirrored() : this.f447d.f438e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        Drawable drawable = this.f395c;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (!super.isStateful()) {
            n nVar = this.f447d;
            if (nVar != null) {
                m mVar = nVar.f435b;
                if (mVar.n == null) {
                    mVar.n = Boolean.valueOf(mVar.f426g.a());
                }
                if (mVar.n.booleanValue() || ((colorStateList = this.f447d.f436c) != null && colorStateList.isStateful())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f449g && super.mutate() == this) {
            n nVar = this.f447d;
            n nVar2 = new n();
            nVar2.f436c = null;
            nVar2.f437d = f446l;
            if (nVar != null) {
                nVar2.f434a = nVar.f434a;
                m mVar = new m(nVar.f435b);
                nVar2.f435b = mVar;
                if (nVar.f435b.f425e != null) {
                    mVar.f425e = new Paint(nVar.f435b.f425e);
                }
                if (nVar.f435b.f424d != null) {
                    nVar2.f435b.f424d = new Paint(nVar.f435b.f424d);
                }
                nVar2.f436c = nVar.f436c;
                nVar2.f437d = nVar.f437d;
                nVar2.f438e = nVar.f438e;
            }
            this.f447d = nVar2;
            this.f449g = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z4;
        PorterDuff.Mode mode;
        Drawable drawable = this.f395c;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        n nVar = this.f447d;
        ColorStateList colorStateList = nVar.f436c;
        if (colorStateList == null || (mode = nVar.f437d) == null) {
            z4 = false;
        } else {
            this.f448e = a(colorStateList, mode);
            invalidateSelf();
            z4 = true;
        }
        m mVar = nVar.f435b;
        if (mVar.n == null) {
            mVar.n = Boolean.valueOf(mVar.f426g.a());
        }
        if (mVar.n.booleanValue()) {
            boolean zB = nVar.f435b.f426g.b(iArr);
            nVar.f443k |= zB;
            if (zB) {
                invalidateSelf();
                return true;
            }
        }
        return z4;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j3) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j3);
        } else {
            super.scheduleSelf(runnable, j3);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i5) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.setAlpha(i5);
        } else if (this.f447d.f435b.getRootAlpha() != i5) {
            this.f447d.f435b.setRootAlpha(i5);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z4) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.setAutoMirrored(z4);
        } else {
            this.f447d.f438e = z4;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i5) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            W1.a.h0(drawable, i5);
        } else {
            setTintList(ColorStateList.valueOf(i5));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            C.a.h(drawable, colorStateList);
            return;
        }
        n nVar = this.f447d;
        if (nVar.f436c != colorStateList) {
            nVar.f436c = colorStateList;
            this.f448e = a(colorStateList, nVar.f437d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            C.a.i(drawable, mode);
            return;
        }
        n nVar = this.f447d;
        if (nVar.f437d != mode) {
            nVar.f437d = mode;
            this.f448e = a(nVar.f436c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z4, boolean z5) {
        Drawable drawable = this.f395c;
        return drawable != null ? drawable.setVisible(z4, z5) : super.setVisible(z4, z5);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        m mVar;
        int i5;
        int i6;
        boolean z4;
        int i7;
        boolean z5;
        Paint.Join join;
        Paint.Cap cap;
        Paint.Join join2;
        Drawable drawable = this.f395c;
        if (drawable != null) {
            C.a.d(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        n nVar = this.f447d;
        nVar.f435b = new m();
        TypedArray typedArrayG = A.b.g(resources, theme, attributeSet, a.f378a);
        n nVar2 = this.f447d;
        m mVar2 = nVar2.f435b;
        int i8 = !A.b.d(xmlPullParser, "tintMode") ? -1 : typedArrayG.getInt(6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        int i9 = 3;
        if (i8 == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (i8 != 5) {
            if (i8 != 9) {
                switch (i8) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        nVar2.f437d = mode;
        int i10 = 1;
        ColorStateList colorStateListA = null;
        boolean z6 = false;
        if (A.b.d(xmlPullParser, "tint")) {
            TypedValue typedValue = new TypedValue();
            typedArrayG.getValue(1, typedValue);
            int i11 = typedValue.type;
            if (i11 == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
            if (i11 >= 28 && i11 <= 31) {
                colorStateListA = ColorStateList.valueOf(typedValue.data);
            } else {
                Resources resources2 = typedArrayG.getResources();
                int resourceId = typedArrayG.getResourceId(1, 0);
                ThreadLocal threadLocal = A.c.f9a;
                try {
                    colorStateListA = A.c.a(resources2, resources2.getXml(resourceId), theme);
                } catch (Exception e5) {
                    Log.e("CSLCompat", "Failed to inflate ColorStateList.", e5);
                }
            }
        }
        ColorStateList colorStateList = colorStateListA;
        if (colorStateList != null) {
            nVar2.f436c = colorStateList;
        }
        boolean z7 = nVar2.f438e;
        if (A.b.d(xmlPullParser, "autoMirrored")) {
            z7 = typedArrayG.getBoolean(5, z7);
        }
        nVar2.f438e = z7;
        float f = mVar2.f429j;
        if (A.b.d(xmlPullParser, "viewportWidth")) {
            f = typedArrayG.getFloat(7, f);
        }
        mVar2.f429j = f;
        float f5 = mVar2.f430k;
        if (A.b.d(xmlPullParser, "viewportHeight")) {
            f5 = typedArrayG.getFloat(8, f5);
        }
        mVar2.f430k = f5;
        if (mVar2.f429j <= 0.0f) {
            throw new XmlPullParserException(typedArrayG.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f5 > 0.0f) {
            mVar2.f427h = typedArrayG.getDimension(3, mVar2.f427h);
            float dimension = typedArrayG.getDimension(2, mVar2.f428i);
            mVar2.f428i = dimension;
            if (mVar2.f427h <= 0.0f) {
                throw new XmlPullParserException(typedArrayG.getPositionDescription() + "<vector> tag requires width > 0");
            }
            if (dimension > 0.0f) {
                float alpha = mVar2.getAlpha();
                if (A.b.d(xmlPullParser, "alpha")) {
                    alpha = typedArrayG.getFloat(4, alpha);
                }
                mVar2.setAlpha(alpha);
                String string = typedArrayG.getString(0);
                if (string != null) {
                    mVar2.f432m = string;
                    mVar2.f433o.put(string, mVar2);
                }
                typedArrayG.recycle();
                nVar.f434a = getChangingConfigurations();
                nVar.f443k = true;
                n nVar3 = this.f447d;
                m mVar3 = nVar3.f435b;
                ArrayDeque arrayDeque = new ArrayDeque();
                arrayDeque.push(mVar3.f426g);
                int eventType = xmlPullParser.getEventType();
                int depth = xmlPullParser.getDepth() + 1;
                boolean z8 = true;
                while (eventType != i10 && (xmlPullParser.getDepth() >= depth || eventType != i9)) {
                    if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        j jVar = (j) arrayDeque.peek();
                        boolean zEquals = "path".equals(name);
                        i5 = depth;
                        C0713b c0713b = mVar3.f433o;
                        if (zEquals) {
                            i iVar = new i();
                            iVar.f = 0.0f;
                            iVar.f398h = 1.0f;
                            iVar.f399i = 1.0f;
                            iVar.f400j = 0.0f;
                            iVar.f401k = 1.0f;
                            iVar.f402l = 0.0f;
                            Paint.Cap cap2 = Paint.Cap.BUTT;
                            iVar.f403m = cap2;
                            Paint.Join join3 = Paint.Join.MITER;
                            iVar.n = join3;
                            mVar = mVar3;
                            iVar.f404o = 4.0f;
                            TypedArray typedArrayG2 = A.b.g(resources, theme, attributeSet, a.f380c);
                            if (A.b.d(xmlPullParser, "pathData")) {
                                String string2 = typedArrayG2.getString(0);
                                if (string2 != null) {
                                    iVar.f417b = string2;
                                }
                                String string3 = typedArrayG2.getString(2);
                                if (string3 != null) {
                                    iVar.f416a = W1.a.r(string3);
                                }
                                iVar.f397g = A.b.c(typedArrayG2, xmlPullParser, theme, "fillColor", 1);
                                float f6 = iVar.f399i;
                                if (A.b.d(xmlPullParser, "fillAlpha")) {
                                    f6 = typedArrayG2.getFloat(12, f6);
                                }
                                iVar.f399i = f6;
                                int i12 = !A.b.d(xmlPullParser, "strokeLineCap") ? -1 : typedArrayG2.getInt(8, -1);
                                Paint.Cap cap3 = iVar.f403m;
                                if (i12 != 0) {
                                    join = join3;
                                    if (i12 != 1) {
                                        cap = i12 != 2 ? cap3 : Paint.Cap.SQUARE;
                                    } else {
                                        cap = Paint.Cap.ROUND;
                                    }
                                } else {
                                    join = join3;
                                    cap = cap2;
                                }
                                iVar.f403m = cap;
                                int i13 = !A.b.d(xmlPullParser, "strokeLineJoin") ? -1 : typedArrayG2.getInt(9, -1);
                                Paint.Join join4 = iVar.n;
                                if (i13 == 0) {
                                    join2 = join;
                                } else if (i13 != 1) {
                                    join2 = i13 != 2 ? join4 : Paint.Join.BEVEL;
                                } else {
                                    join2 = Paint.Join.ROUND;
                                }
                                iVar.n = join2;
                                float f7 = iVar.f404o;
                                if (A.b.d(xmlPullParser, "strokeMiterLimit")) {
                                    f7 = typedArrayG2.getFloat(10, f7);
                                }
                                iVar.f404o = f7;
                                iVar.f396e = A.b.c(typedArrayG2, xmlPullParser, theme, "strokeColor", 3);
                                float f8 = iVar.f398h;
                                if (A.b.d(xmlPullParser, "strokeAlpha")) {
                                    f8 = typedArrayG2.getFloat(11, f8);
                                }
                                iVar.f398h = f8;
                                float f9 = iVar.f;
                                if (A.b.d(xmlPullParser, "strokeWidth")) {
                                    f9 = typedArrayG2.getFloat(4, f9);
                                }
                                iVar.f = f9;
                                float f10 = iVar.f401k;
                                if (A.b.d(xmlPullParser, "trimPathEnd")) {
                                    f10 = typedArrayG2.getFloat(6, f10);
                                }
                                iVar.f401k = f10;
                                float f11 = iVar.f402l;
                                if (A.b.d(xmlPullParser, "trimPathOffset")) {
                                    f11 = typedArrayG2.getFloat(7, f11);
                                }
                                iVar.f402l = f11;
                                float f12 = iVar.f400j;
                                if (A.b.d(xmlPullParser, "trimPathStart")) {
                                    f12 = typedArrayG2.getFloat(5, f12);
                                }
                                iVar.f400j = f12;
                                int i14 = iVar.f418c;
                                if (A.b.d(xmlPullParser, "fillType")) {
                                    i14 = typedArrayG2.getInt(13, i14);
                                }
                                iVar.f418c = i14;
                            }
                            typedArrayG2.recycle();
                            jVar.f406b.add(iVar);
                            if (iVar.getPathName() != null) {
                                c0713b.put(iVar.getPathName(), iVar);
                            }
                            nVar3.f434a |= iVar.f419d;
                            z5 = false;
                            i6 = 1;
                            z8 = false;
                        } else {
                            mVar = mVar3;
                            if ("clip-path".equals(name)) {
                                h hVar = new h();
                                if (A.b.d(xmlPullParser, "pathData")) {
                                    TypedArray typedArrayG3 = A.b.g(resources, theme, attributeSet, a.f381d);
                                    String string4 = typedArrayG3.getString(0);
                                    if (string4 != null) {
                                        hVar.f417b = string4;
                                    }
                                    String string5 = typedArrayG3.getString(1);
                                    if (string5 != null) {
                                        hVar.f416a = W1.a.r(string5);
                                    }
                                    hVar.f418c = !A.b.d(xmlPullParser, "fillType") ? 0 : typedArrayG3.getInt(2, 0);
                                    typedArrayG3.recycle();
                                }
                                jVar.f406b.add(hVar);
                                if (hVar.getPathName() != null) {
                                    c0713b.put(hVar.getPathName(), hVar);
                                }
                                nVar3.f434a = hVar.f419d | nVar3.f434a;
                            } else if ("group".equals(name)) {
                                j jVar2 = new j();
                                TypedArray typedArrayG4 = A.b.g(resources, theme, attributeSet, a.f379b);
                                float f13 = jVar2.f407c;
                                if (A.b.d(xmlPullParser, "rotation")) {
                                    f13 = typedArrayG4.getFloat(5, f13);
                                }
                                jVar2.f407c = f13;
                                i6 = 1;
                                jVar2.f408d = typedArrayG4.getFloat(1, jVar2.f408d);
                                jVar2.f409e = typedArrayG4.getFloat(2, jVar2.f409e);
                                float f14 = jVar2.f;
                                if (A.b.d(xmlPullParser, "scaleX")) {
                                    f14 = typedArrayG4.getFloat(3, f14);
                                }
                                jVar2.f = f14;
                                float f15 = jVar2.f410g;
                                if (A.b.d(xmlPullParser, "scaleY")) {
                                    f15 = typedArrayG4.getFloat(4, f15);
                                }
                                jVar2.f410g = f15;
                                float f16 = jVar2.f411h;
                                if (A.b.d(xmlPullParser, "translateX")) {
                                    f16 = typedArrayG4.getFloat(6, f16);
                                }
                                jVar2.f411h = f16;
                                float f17 = jVar2.f412i;
                                if (A.b.d(xmlPullParser, "translateY")) {
                                    f17 = typedArrayG4.getFloat(7, f17);
                                }
                                jVar2.f412i = f17;
                                z5 = false;
                                String string6 = typedArrayG4.getString(0);
                                if (string6 != null) {
                                    jVar2.f415l = string6;
                                }
                                jVar2.c();
                                typedArrayG4.recycle();
                                jVar.f406b.add(jVar2);
                                arrayDeque.push(jVar2);
                                if (jVar2.getGroupName() != null) {
                                    c0713b.put(jVar2.getGroupName(), jVar2);
                                }
                                nVar3.f434a = jVar2.f414k | nVar3.f434a;
                            }
                            z5 = false;
                            i6 = 1;
                        }
                        z4 = z5;
                        i7 = 3;
                    } else {
                        mVar = mVar3;
                        i5 = depth;
                        i6 = i10;
                        z4 = z6;
                        i7 = 3;
                        if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                            arrayDeque.pop();
                        }
                    }
                    eventType = xmlPullParser.next();
                    i9 = i7;
                    z6 = z4;
                    i10 = i6;
                    depth = i5;
                    mVar3 = mVar;
                }
                if (!z8) {
                    this.f448e = a(nVar.f436c, nVar.f437d);
                    return;
                }
                throw new XmlPullParserException("no path defined");
            }
            throw new XmlPullParserException(typedArrayG.getPositionDescription() + "<vector> tag requires height > 0");
        }
        throw new XmlPullParserException(typedArrayG.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    }

    public p(n nVar) {
        this.f450h = true;
        this.f451i = new float[9];
        this.f452j = new Matrix();
        this.f453k = new Rect();
        this.f447d = nVar;
        this.f448e = a(nVar.f436c, nVar.f437d);
    }
}
