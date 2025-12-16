package com.google.android.material.behavior;

import B.f;
import C0.q;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.wssyncmldm.R;
import i3.x;
import java.util.Iterator;
import java.util.LinkedHashSet;
import w.AbstractC0897a;
import w1.AbstractC0899a;

/* loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends AbstractC0897a {

    /* renamed from: b, reason: collision with root package name */
    public int f5824b;

    /* renamed from: c, reason: collision with root package name */
    public int f5825c;

    /* renamed from: d, reason: collision with root package name */
    public TimeInterpolator f5826d;

    /* renamed from: e, reason: collision with root package name */
    public TimeInterpolator f5827e;

    /* renamed from: h, reason: collision with root package name */
    public ViewPropertyAnimator f5829h;

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f5823a = new LinkedHashSet();
    public int f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f5828g = 2;

    public HideBottomViewOnScrollBehavior() {
    }

    @Override // w.AbstractC0897a
    public boolean h(CoordinatorLayout coordinatorLayout, View view, int i5) {
        this.f = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        this.f5824b = x.U0(view.getContext(), R.attr.motionDurationLong2, 225);
        this.f5825c = x.U0(view.getContext(), R.attr.motionDurationMedium4, 175);
        this.f5826d = x.V0(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, AbstractC0899a.f9599d);
        this.f5827e = x.V0(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, AbstractC0899a.f9598c);
        return false;
    }

    @Override // w.AbstractC0897a
    public final void l(CoordinatorLayout coordinatorLayout, View view, View view2, int i5, int i6, int i7, int i8, int i9, int[] iArr) {
        LinkedHashSet linkedHashSet = this.f5823a;
        if (i6 > 0) {
            if (this.f5828g == 1) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator = this.f5829h;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                view.clearAnimation();
            }
            this.f5828g = 1;
            Iterator it = linkedHashSet.iterator();
            if (it.hasNext()) {
                f.F(it.next());
                throw null;
            }
            this.f5829h = view.animate().translationY(this.f).setInterpolator(this.f5827e).setDuration(this.f5825c).setListener(new q(6, this));
            return;
        }
        if (i6 >= 0 || this.f5828g == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator2 = this.f5829h;
        if (viewPropertyAnimator2 != null) {
            viewPropertyAnimator2.cancel();
            view.clearAnimation();
        }
        this.f5828g = 2;
        Iterator it2 = linkedHashSet.iterator();
        if (it2.hasNext()) {
            f.F(it2.next());
            throw null;
        }
        this.f5829h = view.animate().translationY(0).setInterpolator(this.f5826d).setDuration(this.f5824b).setListener(new q(6, this));
    }

    @Override // w.AbstractC0897a
    public boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i5, int i6) {
        return i5 == 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
    }
}
