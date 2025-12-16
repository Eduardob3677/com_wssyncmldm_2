package androidx.appcompat.widget;

import J.Q;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import c.AbstractC0206a;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import com.wssyncmldm.R;
import java.util.WeakHashMap;
import k.C0572a;
import k.G0;

/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f3267c;

    /* renamed from: d, reason: collision with root package name */
    public View f3268d;

    /* renamed from: e, reason: collision with root package name */
    public View f3269e;
    public Drawable f;

    /* renamed from: g, reason: collision with root package name */
    public Drawable f3270g;

    /* renamed from: h, reason: collision with root package name */
    public Drawable f3271h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f3272i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3273j;

    /* renamed from: k, reason: collision with root package name */
    public final int f3274k;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0572a c0572a = new C0572a(this);
        WeakHashMap weakHashMap = Q.f940a;
        setBackground(c0572a);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0206a.f5161a);
        boolean z4 = false;
        this.f = typedArrayObtainStyledAttributes.getDrawable(0);
        this.f3270g = typedArrayObtainStyledAttributes.getDrawable(2);
        this.f3274k = typedArrayObtainStyledAttributes.getDimensionPixelSize(13, -1);
        if (getId() == R.id.split_action_bar) {
            this.f3272i = true;
            this.f3271h = typedArrayObtainStyledAttributes.getDrawable(1);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.f3272i ? !(this.f != null || this.f3270g != null) : this.f3271h == null) {
            z4 = true;
        }
        setWillNotDraw(z4);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f;
        if (drawable != null && drawable.isStateful()) {
            this.f.setState(getDrawableState());
        }
        Drawable drawable2 = this.f3270g;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f3270g.setState(getDrawableState());
        }
        Drawable drawable3 = this.f3271h;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f3271h.setState(getDrawableState());
    }

    public View getTabContainer() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f3270g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f3271h;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f3268d = findViewById(R.id.action_bar);
        this.f3269e = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f3267c || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
        boolean z5 = true;
        if (this.f3272i) {
            Drawable drawable = this.f3271h;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z5 = false;
            }
        } else {
            if (this.f == null) {
                z5 = false;
            } else if (this.f3268d.getVisibility() == 0) {
                this.f.setBounds(this.f3268d.getLeft(), this.f3268d.getTop(), this.f3268d.getRight(), getPaddingBottom() + this.f3268d.getBottom());
            } else {
                View view = this.f3269e;
                if (view == null || view.getVisibility() != 0) {
                    this.f.setBounds(0, 0, 0, 0);
                } else {
                    this.f.setBounds(this.f3269e.getLeft(), this.f3269e.getTop(), this.f3269e.getRight(), getPaddingBottom() + this.f3269e.getBottom());
                }
            }
            this.f3273j = false;
        }
        if (z5) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i5, int i6) {
        int i7;
        if (this.f3268d == null && View.MeasureSpec.getMode(i6) == Integer.MIN_VALUE && (i7 = this.f3274k) >= 0) {
            i6 = View.MeasureSpec.makeMeasureSpec(Math.min(i7, View.MeasureSpec.getSize(i6)), Integer.MIN_VALUE);
        }
        super.onMeasure(i5, i6);
        if (this.f3268d == null) {
            return;
        }
        View.MeasureSpec.getMode(i6);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f);
        }
        this.f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f3268d;
            if (view != null) {
                this.f.setBounds(view.getLeft(), this.f3268d.getTop(), this.f3268d.getRight(), this.f3268d.getBottom());
            }
        }
        boolean z4 = false;
        if (!this.f3272i ? !(this.f != null || this.f3270g != null) : this.f3271h == null) {
            z4 = true;
        }
        setWillNotDraw(z4);
        invalidate();
        invalidateOutline();
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f3271h;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f3271h);
        }
        this.f3271h = drawable;
        boolean z4 = this.f3272i;
        boolean z5 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (z4 && (drawable2 = this.f3271h) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getPaddingBottom() + getMeasuredHeight());
            }
        }
        if (!z4 ? !(this.f != null || this.f3270g != null) : this.f3271h == null) {
            z5 = true;
        }
        setWillNotDraw(z5);
        invalidate();
        invalidateOutline();
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2 = this.f3270g;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f3270g);
        }
        this.f3270g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f3273j && this.f3270g != null) {
                throw null;
            }
        }
        boolean z4 = false;
        if (!this.f3272i ? !(this.f != null || this.f3270g != null) : this.f3271h == null) {
            z4 = true;
        }
        setWillNotDraw(z4);
        invalidate();
        invalidateOutline();
    }

    public void setTabContainer(G0 g0) {
    }

    public void setTransitioning(boolean z4) {
        this.f3267c = z4;
        setDescendantFocusability(z4 ? 393216 : NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH);
    }

    @Override // android.view.View
    public void setVisibility(int i5) {
        super.setVisibility(i5);
        boolean z4 = i5 == 0;
        Drawable drawable = this.f;
        if (drawable != null) {
            drawable.setVisible(z4, false);
        }
        Drawable drawable2 = this.f3270g;
        if (drawable2 != null) {
            drawable2.setVisible(z4, false);
        }
        Drawable drawable3 = this.f3271h;
        if (drawable3 != null) {
            drawable3.setVisible(z4, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2 = this.f;
        boolean z4 = this.f3272i;
        return (drawable == drawable2 && !z4) || (drawable == this.f3270g && this.f3273j) || ((drawable == this.f3271h && z4) || super.verifyDrawable(drawable));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i5) {
        if (i5 != 0) {
            return super.startActionModeForChild(view, callback, i5);
        }
        return null;
    }
}
