package androidx.appcompat.graphics.drawable;

import B.a;
import J.Z;
import android.R;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import c.AbstractC0206a;
import c1.w;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class SeslRecoilDrawable extends LayerDrawable {

    /* renamed from: m, reason: collision with root package name */
    public static final LinearInterpolator f3215m = new LinearInterpolator();
    public static final PathInterpolator n = new PathInterpolator(0.17f, 0.17f, 0.67f, 1.0f);

    /* renamed from: c, reason: collision with root package name */
    public boolean f3216c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3217d;

    /* renamed from: e, reason: collision with root package name */
    public final ValueAnimator f3218e;
    public long f;

    /* renamed from: g, reason: collision with root package name */
    public long f3219g;

    /* renamed from: h, reason: collision with root package name */
    public int f3220h;

    /* renamed from: i, reason: collision with root package name */
    public int f3221i;

    /* renamed from: j, reason: collision with root package name */
    public float f3222j;

    /* renamed from: k, reason: collision with root package name */
    public float f3223k;

    /* renamed from: l, reason: collision with root package name */
    public w f3224l;

    public SeslRecoilDrawable() {
        super(new Drawable[0]);
        this.f3216c = false;
        this.f3217d = false;
        this.f3218e = ValueAnimator.ofFloat(0.0f);
        this.f3224l = null;
        b();
    }

    public final int a() {
        return a.c(this.f3220h, (int) (((Float) this.f3218e.getAnimatedValue()).floatValue() * Color.valueOf(this.f3220h).alpha() * 255.0f));
    }

    public final void b() {
        this.f = 100L;
        this.f3219g = 350L;
        this.f3218e.addUpdateListener(new Z(3, this));
        setPaddingMode(1);
    }

    public final void c(float f) {
        ValueAnimator valueAnimator = this.f3218e;
        if (valueAnimator.isRunning()) {
            valueAnimator.cancel();
        }
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), f);
        valueAnimator.setInterpolator(f3215m);
        valueAnimator.setDuration(this.f);
        valueAnimator.start();
    }

    public final void d(TypedArray typedArray) {
        Drawable drawable;
        for (int i5 = 0; i5 < typedArray.getIndexCount(); i5++) {
            int index = typedArray.getIndex(i5);
            if (index == 0) {
                this.f3220h = typedArray.getColor(index, 419430400);
            } else if (index == 2) {
                this.f3221i = typedArray.getDimensionPixelSize(index, -1);
            } else if (index == 1 && (drawable = typedArray.getDrawable(index)) != null) {
                setId(addLayer(drawable), R.id.mask);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0039 A[PHI: r4
      0x0039: PHI (r4v7 int) = (r4v2 int), (r4v5 int) binds: [B:8:0x0037, B:11:0x0049] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void draw(Canvas canvas) {
        float fHeight;
        int saveCount = canvas.getSaveCount();
        if (getNumberOfLayers() <= 0) {
            float fCenterX = this.f3222j;
            float fCenterY = this.f3223k;
            Rect rect = new Rect();
            getHotspotBounds(rect);
            if (rect.height() > 0) {
                fCenterX = rect.centerX();
                fCenterY = rect.centerY();
            }
            canvas.translate(fCenterX, fCenterY);
            Paint paint = new Paint();
            paint.setColor(a());
            int iHeight = this.f3221i;
            if (iHeight > 0) {
                fHeight = iHeight;
                canvas.drawCircle(0.0f, 0.0f, fHeight, paint);
                canvas.translate(-fCenterX, -fCenterY);
            } else {
                Rect rect2 = new Rect();
                getHotspotBounds(rect2);
                iHeight = rect2.height() / 2;
                if (iHeight <= 0) {
                    fHeight = getBounds().height() / 2;
                }
                canvas.drawCircle(0.0f, 0.0f, fHeight, paint);
                canvas.translate(-fCenterX, -fCenterY);
            }
        } else {
            super.draw(canvas);
        }
        canvas.restoreToCount(saveCount);
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return null;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final boolean hasFocusStateSpecified() {
        return true;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, AbstractC0206a.f5182x);
        try {
            try {
                d(typedArrayObtainAttributes);
            } catch (XmlPullParserException e5) {
                Log.e("SeslRecoilDrawable", "Failed to parse!!", e5);
            }
            super.inflate(resources, xmlPullParser, attributeSet, theme);
            Drawable drawableFindDrawableByLayerId = findDrawableByLayerId(R.id.mask);
            if (drawableFindDrawableByLayerId != null) {
                drawableFindDrawableByLayerId.setTint(0);
                drawableFindDrawableByLayerId.setTintBlendMode(BlendMode.SRC_IN);
            }
        } finally {
            typedArrayObtainAttributes.recycle();
        }
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final boolean isProjected() {
        return getNumberOfLayers() <= 0;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        super.jumpToCurrentState();
        ValueAnimator valueAnimator = this.f3218e;
        if (valueAnimator.isRunning()) {
            valueAnimator.end();
        }
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        for (int i5 : iArr) {
            if (i5 == 16842908) {
                z4 = true;
            } else if (i5 == 16842919) {
                z6 = true;
            } else if (i5 == 16843623) {
                z5 = true;
            }
        }
        boolean z7 = z4 || z5 || z6;
        if (z6) {
            this.f3217d = true;
            c(1.0f);
        } else if (z5) {
            c(0.6f);
        } else if (z4) {
            c(0.8f);
        } else if (this.f3216c && !z7) {
            ValueAnimator valueAnimator = this.f3218e;
            if (valueAnimator.isRunning()) {
                valueAnimator.cancel();
            }
            valueAnimator.setFloatValues(this.f3217d ? 1.0f : ((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
            valueAnimator.setInterpolator(n);
            valueAnimator.setDuration(this.f3219g);
            valueAnimator.start();
            w wVar = this.f3224l;
            if (wVar != null) {
                w wVar2 = (w) wVar.f5265c;
                SeslRecoilDrawable seslRecoilDrawable = (SeslRecoilDrawable) wVar2.f5265c;
                if (seslRecoilDrawable.f3224l != null) {
                    seslRecoilDrawable.f3224l = null;
                }
                wVar2.f5265c = null;
            }
        }
        this.f3216c = z7;
        this.f3217d = z6;
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final void setHotspot(float f, float f5) {
        super.setHotspot(f, f5);
        this.f3222j = f;
        this.f3223k = f5;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final void setTintBlendMode(BlendMode blendMode) {
        super.setTintBlendMode(blendMode);
        Drawable drawableFindDrawableByLayerId = findDrawableByLayerId(R.id.mask);
        if (drawableFindDrawableByLayerId != null) {
            drawableFindDrawableByLayerId.setTintBlendMode(BlendMode.SRC_IN);
        }
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
        Drawable drawableFindDrawableByLayerId = findDrawableByLayerId(R.id.mask);
        if (drawableFindDrawableByLayerId != null) {
            drawableFindDrawableByLayerId.setTint(a());
        }
    }

    public SeslRecoilDrawable(Drawable[] drawableArr) {
        super(drawableArr);
        this.f3216c = false;
        this.f3217d = false;
        this.f3218e = ValueAnimator.ofFloat(0.0f);
        this.f3224l = null;
        b();
    }

    public SeslRecoilDrawable(int i5, Drawable[] drawableArr, Drawable drawable) {
        this(drawableArr);
        b();
        this.f3220h = i5;
        if (drawable != null) {
            setId(addLayer(drawable), R.id.mask);
        }
    }
}
