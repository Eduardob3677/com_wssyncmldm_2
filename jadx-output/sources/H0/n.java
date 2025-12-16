package H0;

import android.animation.ValueAnimator;
import android.content.Context;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
public final class n extends RecyclerView {
    public final /* synthetic */ ViewPager2 w2;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(ViewPager2 viewPager2, Context context) {
        super(context, null);
        this.w2 = viewPager2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final CharSequence getAccessibilityClassName() {
        this.w2.f5046v.getClass();
        return super.getAccessibilityClassName();
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        ViewPager2 viewPager2 = this.w2;
        accessibilityEvent.setFromIndex(viewPager2.f);
        accessibilityEvent.setToIndex(viewPager2.f);
        accessibilityEvent.setSource((ViewPager2) viewPager2.f5046v.f6260g);
        accessibilityEvent.setClassName("androidx.viewpager.widget.ViewPager");
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.w2.f5044t && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked;
        ViewPager2 viewPager2 = this.w2;
        if ((viewPager2.f5050z && ValueAnimator.areAnimatorsEnabled()) && (((actionMasked = motionEvent.getActionMasked()) == 1 || actionMasked == 3) && viewPager2.f5027A == 1)) {
            viewPager2.f5048x.setFloatValues(0.95f, 1.0f);
            if (viewPager2.f5047w.isRunning()) {
                viewPager2.f5048x.setFloatValues(viewPager2.f5049y, 1.0f);
                viewPager2.f5047w.cancel();
            }
            if (viewPager2.f5048x.isRunning()) {
                viewPager2.f5048x.cancel();
            }
            viewPager2.f5048x.start();
        }
        return viewPager2.f5044t && super.onTouchEvent(motionEvent);
    }
}
