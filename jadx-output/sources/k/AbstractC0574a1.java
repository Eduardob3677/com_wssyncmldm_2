package k;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.CheckedTextView;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import z.AbstractC0933a;

/* renamed from: k.a1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0574a1 extends TextView implements Checkable {

    /* renamed from: p, reason: collision with root package name */
    public static final int[] f7823p = {R.attr.state_checked};

    /* renamed from: c, reason: collision with root package name */
    public boolean f7824c;

    /* renamed from: d, reason: collision with root package name */
    public int f7825d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f7826e;
    public ColorStateList f;

    /* renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f7827g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7828h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f7829i;

    /* renamed from: j, reason: collision with root package name */
    public int f7830j;

    /* renamed from: k, reason: collision with root package name */
    public int f7831k;

    /* renamed from: l, reason: collision with root package name */
    public int f7832l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f7833m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f7834o;

    private void setBasePadding(boolean z4) {
        if (z4) {
            this.f7830j = getPaddingLeft();
        } else {
            this.f7830j = getPaddingRight();
        }
    }

    public final void a() {
        Drawable drawable = this.f7826e;
        if (drawable != null) {
            if (this.f7828h || this.f7829i) {
                Drawable drawableMutate = drawable.mutate();
                this.f7826e = drawableMutate;
                if (this.f7828h) {
                    drawableMutate.setTintList(this.f);
                }
                if (this.f7829i) {
                    this.f7826e.setTintMode(this.f7827g);
                }
                if (this.f7826e.isStateful()) {
                    this.f7826e.setState(getDrawableState());
                }
            }
        }
    }

    public final boolean b() {
        WeakHashMap weakHashMap = J.Q.f940a;
        return (Gravity.getAbsoluteGravity(this.f7832l, getLayoutDirection()) & 7) == 3;
    }

    public final void c(Drawable drawable, int i5) {
        Drawable drawable2 = this.f7826e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f7826e);
        }
        this.f7833m = drawable != this.f7826e;
        if (drawable != null) {
            drawable.setCallback(this);
            drawable.setVisible(getVisibility() == 0, false);
            drawable.setState(f7823p);
            setMinHeight(drawable.getIntrinsicHeight());
            this.f7831k = drawable.getIntrinsicWidth();
            drawable.setState(getDrawableState());
        } else {
            this.f7831k = 0;
        }
        this.f7826e = drawable;
        this.f7825d = i5;
        a();
        Method methodJ = i3.x.J(View.class, "hidden_resolvePadding", new Class[0]);
        if (methodJ != null) {
            i3.x.j0(this, methodJ, new Object[0]);
        }
        setBasePadding(b());
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f, float f5) {
        super.drawableHotspotChanged(f, f5);
        Drawable drawable = this.f7826e;
        if (drawable != null) {
            C.a.e(drawable, f, f5);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() throws NoSuchFieldException, SecurityException {
        super.drawableStateChanged();
        Drawable drawable = this.f7826e;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return CheckedTextView.class.getName();
    }

    public Drawable getCheckMarkDrawable() {
        return this.f7826e;
    }

    public ColorStateList getCheckMarkTintList() {
        return this.f;
    }

    public PorterDuff.Mode getCheckMarkTintMode() {
        return this.f7827g;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    @Override // android.widget.TextView, android.view.View, android.graphics.drawable.Drawable.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void invalidateDrawable(Drawable drawable) throws NoSuchFieldException, SecurityException {
        boolean zBooleanValue;
        super.invalidateDrawable(drawable);
        if (verifyDrawable(drawable)) {
            Rect bounds = drawable.getBounds();
            if (N1.a(this)) {
                Field fieldI = i3.x.I(TextView.class, "mSingleLine");
                if (fieldI != null) {
                    Object objA = i3.x.A(this, fieldI);
                    zBooleanValue = objA instanceof Boolean ? ((Boolean) objA).booleanValue() : false;
                }
                if (zBooleanValue) {
                    invalidate(bounds.left, bounds.top, bounds.right, bounds.bottom);
                }
            }
        }
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f7824c;
    }

    @Override // android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f7826e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i5) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i5 + 1);
        if (this.f7824c) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f7823p);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int i5;
        int i6;
        super.onDraw(canvas);
        Drawable drawable = this.f7826e;
        if (drawable != null) {
            int gravity = getGravity() & 112;
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int height = gravity != 16 ? gravity != 80 ? 0 : getHeight() - intrinsicHeight : (getHeight() - intrinsicHeight) / 2;
            boolean zB = b();
            int width = getWidth();
            int i7 = intrinsicHeight + height;
            if (zB) {
                i6 = this.f7830j;
                i5 = this.f7831k + i6;
            } else {
                i5 = width - this.f7830j;
                i6 = i5 - this.f7831k;
            }
            int scrollX = getScrollX();
            if (N1.a(this)) {
                drawable.setBounds(scrollX + i6, height, scrollX + i5, i7);
            } else {
                drawable.setBounds(i6, height, i5, i7);
            }
            drawable.draw(canvas);
            Drawable background = getBackground();
            if (background != null) {
                C.a.f(background, i6 + scrollX, height, scrollX + i5, i7);
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setChecked(this.f7824c);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.f7824c);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Z0 z02 = (Z0) parcelable;
        super.onRestoreInstanceState(z02.getSuperState());
        setChecked(z02.f7813c);
        requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0076  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onRtlPropertiesChanged(int i5) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        super.onRtlPropertiesChanged(i5);
        Method methodJ = i3.x.J(View.class, "resetPaddingToInitialValues", new Class[0]);
        if (methodJ != null) {
            i3.x.j0(this, methodJ, new Object[0]);
        }
        int i6 = this.f7826e != null ? this.f7831k + this.f7830j + this.f7834o + this.n : this.f7830j;
        if (b()) {
            boolean z4 = this.f7833m;
            Field fieldI = i3.x.I(View.class, "mPaddingLeft");
            if (fieldI != null) {
                Object objA = i3.x.A(this, fieldI);
                int iIntValue = objA instanceof Integer ? ((Integer) objA).intValue() : 0;
                this.f7833m = z4 | (iIntValue != i6);
                Field fieldI2 = i3.x.I(View.class, "mPaddingLeft");
                if (fieldI2 != null) {
                    i3.x.a1(this, fieldI2, Integer.valueOf(i6));
                }
            }
        } else {
            boolean z5 = this.f7833m;
            Field fieldI3 = i3.x.I(View.class, "mPaddingRight");
            if (fieldI3 != null) {
                Object objA2 = i3.x.A(this, fieldI3);
                int iIntValue2 = objA2 instanceof Integer ? ((Integer) objA2).intValue() : 0;
                this.f7833m = z5 | (iIntValue2 != i6);
                Field fieldI4 = i3.x.I(View.class, "mPaddingRight");
                if (fieldI4 != null) {
                    i3.x.a1(this, fieldI4, Integer.valueOf(i6));
                }
            }
        }
        if (this.f7833m) {
            requestLayout();
            this.f7833m = false;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        Z0 z02 = new Z0(super.onSaveInstanceState());
        z02.f7813c = this.f7824c;
        return z02;
    }

    public void setCheckMarkDrawable(int i5) {
        if (i5 == 0 || i5 != this.f7825d) {
            c(i5 != 0 ? AbstractC0933a.b(getContext(), i5) : null, i5);
        }
    }

    public void setCheckMarkTintList(ColorStateList colorStateList) {
        this.f = colorStateList;
        this.f7828h = true;
        a();
    }

    public void setCheckMarkTintMode(PorterDuff.Mode mode) {
        this.f7827g = mode;
        this.f7829i = true;
        a();
    }

    public void setChecked(boolean z4) {
        if (this.f7824c != z4) {
            this.f7824c = z4;
            refreshDrawableState();
            Method methodP = i3.x.P(View.class, "hidden_notifyViewAccessibilityStateChangedIfNeeded", Integer.TYPE);
            if (methodP != null) {
                i3.x.j0(this, methodP, 0);
            }
        }
    }

    @Override // android.view.View
    public void setVisibility(int i5) {
        super.setVisibility(i5);
        Drawable drawable = this.f7826e;
        if (drawable != null) {
            drawable.setVisible(i5 == 0, false);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f7824c);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return drawable == this.f7826e || super.verifyDrawable(drawable);
    }

    public void setCheckMarkDrawable(Drawable drawable) {
        c(drawable, 0);
    }
}
