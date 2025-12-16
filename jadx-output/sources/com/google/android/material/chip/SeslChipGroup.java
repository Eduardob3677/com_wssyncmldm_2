package com.google.android.material.chip;

import C0.q;
import F1.l;
import F1.o;
import F1.p;
import F1.r;
import F1.s;
import J.Q;
import android.animation.AnimatorListenerAdapter;
import android.animation.LayoutTransition;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.google.android.material.chip.SeslChipGroup;
import com.wssyncmldm.R;
import java.util.Locale;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class SeslChipGroup extends l {

    /* renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ int f5938q = 0;

    /* renamed from: l, reason: collision with root package name */
    public boolean f5939l;

    /* renamed from: m, reason: collision with root package name */
    public final LayoutTransition f5940m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f5941o;

    /* renamed from: p, reason: collision with root package name */
    public int f5942p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeslChipGroup(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        final int i5 = 0;
        final int i6 = 1;
        this.f5939l = true;
        LayoutTransition layoutTransition = new LayoutTransition();
        this.f5940m = layoutTransition;
        this.f5942p = 0;
        getResources().getDimension(R.dimen.chip_start_width);
        setLayoutDirection(TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()));
        layoutTransition.enableTransitionType(2);
        layoutTransition.enableTransitionType(3);
        layoutTransition.enableTransitionType(4);
        layoutTransition.enableTransitionType(0);
        layoutTransition.enableTransitionType(1);
        layoutTransition.setStartDelay(2, 0L);
        layoutTransition.setStartDelay(3, 0L);
        layoutTransition.setStartDelay(4, 0L);
        layoutTransition.setStartDelay(0, 0L);
        layoutTransition.setStartDelay(1, 0L);
        int integer = getContext().getResources().getInteger(R.integer.sesl_chip_default_anim_duration);
        s sVarB = s.b(0.0f, 1.0f);
        long j3 = integer;
        sVarB.setDuration(j3);
        sVarB.setStartDelay(0L);
        sVarB.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: F1.m
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i5) {
                    case 0:
                        int i7 = SeslChipGroup.f5938q;
                        View view = (View) ((s) valueAnimator).f744c.get();
                        if (view != null) {
                            view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                            break;
                        }
                        break;
                    default:
                        int i8 = SeslChipGroup.f5938q;
                        View view2 = (View) ((s) valueAnimator).f744c.get();
                        if (view2 != null) {
                            view2.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                            break;
                        }
                        break;
                }
            }
        });
        sVarB.addListener(getAddRemAnimListener());
        layoutTransition.setAnimator(2, sVarB);
        s sVarB2 = s.b(1.0f, 0.0f);
        sVarB2.setDuration(j3);
        sVarB2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: F1.m
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i6) {
                    case 0:
                        int i7 = SeslChipGroup.f5938q;
                        View view = (View) ((s) valueAnimator).f744c.get();
                        if (view != null) {
                            view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                            break;
                        }
                        break;
                    default:
                        int i8 = SeslChipGroup.f5938q;
                        View view2 = (View) ((s) valueAnimator).f744c.get();
                        if (view2 != null) {
                            view2.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                            break;
                        }
                        break;
                }
            }
        });
        sVarB2.addListener(getAddRemAnimListener());
        layoutTransition.setAnimator(3, sVarB2);
        Interpolator interpolatorLoadInterpolator = AnimationUtils.loadInterpolator(getContext(), R.interpolator.sesl_chip_default_interpolator);
        layoutTransition.setInterpolator(3, interpolatorLoadInterpolator);
        layoutTransition.setInterpolator(2, interpolatorLoadInterpolator);
        layoutTransition.setInterpolator(4, interpolatorLoadInterpolator);
        layoutTransition.setInterpolator(0, interpolatorLoadInterpolator);
        layoutTransition.setInterpolator(1, interpolatorLoadInterpolator);
        layoutTransition.addTransitionListener(getChipTransitionListener());
        b(false);
    }

    private AnimatorListenerAdapter getAddRemAnimListener() {
        return new p();
    }

    private LayoutTransition.TransitionListener getChipTransitionListener() {
        return new o();
    }

    public final void a() {
        if (!d()) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.height = -2;
            this.f5942p = 0;
            setLayoutParams(layoutParams);
            return;
        }
        final int height = getHeight();
        final int iC = c(getWidth()) - height;
        if (Math.abs(iC) < getContext().getResources().getDimension(R.dimen.chip_height)) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(getContext().getResources().getInteger(R.integer.sesl_chip_default_anim_duration));
        valueAnimatorOfFloat.setInterpolator(AnimationUtils.loadInterpolator(getContext(), R.interpolator.sesl_chip_default_interpolator));
        valueAnimatorOfFloat.addListener(new q(2, this));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: F1.n
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i5 = SeslChipGroup.f5938q;
                SeslChipGroup seslChipGroup = this.f741a;
                ViewGroup.LayoutParams layoutParams2 = seslChipGroup.getLayoutParams();
                int iFloatValue = height + ((int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * iC));
                layoutParams2.height = iFloatValue;
                seslChipGroup.f5942p = iFloatValue;
                seslChipGroup.setLayoutParams(layoutParams2);
            }
        });
        valueAnimatorOfFloat.start();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i5, ViewGroup.LayoutParams layoutParams) {
        b(getChildCount() > 0);
        super.addView(view, i5, layoutParams);
        if (d()) {
            b(false);
        }
        a();
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (this.f5939l) {
                int i6 = this.n;
                if (i6 > 0) {
                    chip.setMaxWidth(i6);
                }
                chip.setEllipsize(TextUtils.TruncateAt.END);
            }
        }
    }

    public final void b(boolean z4) {
        if (z4) {
            setLayoutTransition(this.f5940m);
        } else {
            setLayoutTransition(null);
        }
    }

    public final int c(float f) {
        int i5;
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        int paddingStart = getPaddingStart();
        int paddingEnd = getPaddingEnd();
        int chipSpacingHorizontal = getChipSpacingHorizontal();
        int width = getChildAt(0).getWidth() + paddingStart + paddingEnd + chipSpacingHorizontal;
        int i6 = 1;
        for (int i7 = 1; i7 < childCount; i7++) {
            int intrinsicWidth = ((Chip) getChildAt(i7)).getChipDrawable().getIntrinsicWidth();
            if (width + intrinsicWidth < f) {
                i5 = intrinsicWidth + chipSpacingHorizontal + width;
            } else {
                i5 = intrinsicWidth + chipSpacingHorizontal + paddingStart + paddingEnd;
                i6++;
            }
            width = i5;
        }
        int chipSpacingVertical = getChipSpacingVertical();
        return (getPaddingTop() + (getPaddingBottom() + ((getChildAt(0).getHeight() + chipSpacingVertical) * i6))) - chipSpacingVertical;
    }

    public final boolean d() {
        boolean z4;
        return getHeight() != c((float) getWidth()) && (!(z4 = this.f1102e) || (z4 && getChildCount() == 0));
    }

    public final void e() {
        this.f5942p = getHeight();
    }

    @Override // J1.d
    public int getRowCount() {
        return this.f5941o;
    }

    public int getTotalWidth() {
        int paddingEnd = getPaddingEnd() + getPaddingStart();
        int childCount = getChildCount();
        if (childCount <= 0) {
            return paddingEnd;
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            paddingEnd += getChildAt(i5).getWidth();
        }
        if (childCount <= 1) {
            return paddingEnd;
        }
        return paddingEnd + ((childCount - 2) * getChipSpacingHorizontal());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int marginEnd;
        int marginStart;
        int i9;
        int i10 = 1;
        if (getChildCount() == 0) {
            this.f5941o = 0;
            return;
        }
        this.f5941o = 1;
        WeakHashMap weakHashMap = Q.f940a;
        boolean z5 = getLayoutDirection() == 1;
        int paddingRight = z5 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z5 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int lineSpacing = getLineSpacing();
        int itemSpacing = getItemSpacing();
        int i11 = i7 - i5;
        int i12 = i11 - paddingLeft;
        if (!z5) {
            i11 = i12;
        }
        int measuredWidth = paddingRight;
        int i13 = paddingTop;
        for (int i14 = 0; i14 < getChildCount(); i14 += i10) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(R.id.row_index_key, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginStart = marginLayoutParams.getMarginStart();
                    marginEnd = marginLayoutParams.getMarginEnd();
                } else {
                    marginEnd = 0;
                    marginStart = 0;
                }
                int measuredWidth2 = childAt.getMeasuredWidth() + measuredWidth + marginStart;
                if (this.f1102e || measuredWidth2 <= i12) {
                    i9 = 1;
                } else {
                    i13 = paddingTop + lineSpacing;
                    i9 = 1;
                    this.f5941o++;
                    measuredWidth = paddingRight;
                }
                childAt.setTag(R.id.row_index_key, Integer.valueOf(this.f5941o - i9));
                int i15 = measuredWidth + marginStart;
                int measuredWidth3 = childAt.getMeasuredWidth() + i15;
                paddingTop = childAt.getMeasuredHeight() + i13;
                if (z5) {
                    childAt.layout(i11 - measuredWidth3, i13, (i11 - measuredWidth) - marginStart, paddingTop);
                } else {
                    childAt.layout(i15, i13, measuredWidth3, paddingTop);
                }
                measuredWidth += childAt.getMeasuredWidth() + marginStart + marginEnd + itemSpacing;
                i10 = 1;
            }
        }
    }

    @Override // J1.d, android.view.View
    public final void onMeasure(int i5, int i6) {
        super.onMeasure(i5, i6);
        if (getChildCount() <= 0) {
            setMeasuredDimension(getWidth(), this.f5942p);
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        e();
        super.removeAllViews();
        a();
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        e();
        super.removeAllViewsInLayout();
        a();
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        b(getChildCount() > 1);
        e();
        super.removeView(view);
        a();
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i5) {
        e();
        super.removeViewAt(i5);
        a();
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        e();
        super.removeViewInLayout(view);
        a();
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i5, int i6) {
        e();
        super.removeViews(i5, i6);
        a();
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i5, int i6) {
        e();
        super.removeViewsInLayout(i5, i6);
        a();
    }

    public void setDynamicTruncation(boolean z4) {
        this.f5939l = z4;
        Log.i("SeslChipGroup", "dynamic truncation state: " + z4);
    }

    public void setMaxChipWidth(int i5) {
        this.n = i5 - (getPaddingEnd() + getPaddingStart());
    }

    public void setOnChipAddListener(F1.q qVar) {
    }

    public void setOnChipRemovedListener(r rVar) {
    }
}
