package J1;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import k.AbstractC0619q0;

/* loaded from: classes.dex */
public abstract class e extends AbstractC0619q0 {

    /* renamed from: r, reason: collision with root package name */
    public Drawable f1103r;

    /* renamed from: s, reason: collision with root package name */
    public final Rect f1104s;

    /* renamed from: t, reason: collision with root package name */
    public final Rect f1105t;

    /* renamed from: u, reason: collision with root package name */
    public int f1106u;

    /* renamed from: v, reason: collision with root package name */
    public final boolean f1107v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f1108w;

    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1104s = new Rect();
        this.f1105t = new Rect();
        this.f1106u = 119;
        this.f1107v = true;
        this.f1108w = false;
        int[] iArr = v1.a.f9535j;
        m.a(context, attributeSet, 0, 0);
        m.b(context, attributeSet, iArr, 0, 0, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        this.f1106u = typedArrayObtainStyledAttributes.getInt(1, this.f1106u);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f1107v = typedArrayObtainStyledAttributes.getBoolean(2, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f1103r;
        if (drawable != null) {
            if (this.f1108w) {
                this.f1108w = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                boolean z4 = this.f1107v;
                Rect rect = this.f1104s;
                if (z4) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                int i5 = this.f1106u;
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                Rect rect2 = this.f1105t;
                Gravity.apply(i5, intrinsicWidth, intrinsicHeight, rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void drawableHotspotChanged(float f, float f5) {
        super.drawableHotspotChanged(f, f5);
        Drawable drawable = this.f1103r;
        if (drawable != null) {
            drawable.setHotspot(f, f5);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1103r;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f1103r.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f1103r;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f1106u;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1103r;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // k.AbstractC0619q0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
        this.f1108w = z4 | this.f1108w;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i5, int i6, int i7, int i8) {
        super.onSizeChanged(i5, i6, i7, i8);
        this.f1108w = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f1103r;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f1103r);
            }
            this.f1103r = drawable;
            this.f1108w = true;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f1106u == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i5) {
        if (this.f1106u != i5) {
            if ((8388615 & i5) == 0) {
                i5 |= 8388611;
            }
            if ((i5 & 112) == 0) {
                i5 |= 48;
            }
            this.f1106u = i5;
            if (i5 == 119 && this.f1103r != null) {
                this.f1103r.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1103r;
    }
}
