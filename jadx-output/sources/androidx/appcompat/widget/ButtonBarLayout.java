package androidx.appcompat.widget;

import J.N;
import J.Q;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import c.AbstractC0206a;
import com.wssyncmldm.R;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f3360c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3361d;

    /* renamed from: e, reason: collision with root package name */
    public int f3362e;
    public final int f;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3362e = -1;
        int[] iArr = AbstractC0206a.f5170k;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        WeakHashMap weakHashMap = Q.f940a;
        N.d(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        this.f3360c = typedArrayObtainStyledAttributes.getBoolean(0, true);
        typedArrayObtainStyledAttributes.recycle();
        if (getOrientation() == 1) {
            setStacked(this.f3360c);
        }
        this.f = (int) getResources().getDimension(R.dimen.sesl_dialog_button_bar_margin_bottom);
    }

    private void setDividerInvisible(int i5) {
        int childCount = getChildCount();
        while (i5 < childCount) {
            if (!(getChildAt(i5) instanceof Button)) {
                getChildAt(i5).setVisibility(8);
            }
            i5++;
        }
    }

    private void setDividerVisible(int i5) {
        int i6;
        int childCount = getChildCount();
        while (i5 < childCount) {
            if (!(getChildAt(i5) instanceof Button) && (i6 = i5 + 1) < childCount && (getChildAt(i6) instanceof Button) && getChildAt(i6).getVisibility() == 0) {
                getChildAt(i5).setVisibility(0);
            }
            i5++;
        }
    }

    private void setStacked(boolean z4) {
        if (this.f3361d != z4) {
            if (!z4 || this.f3360c) {
                this.f3361d = z4;
                setOrientation(z4 ? 1 : 0);
                setGravity(z4 ? 8388613 : 80);
            }
        }
    }

    public final int a(int i5) {
        int childCount = getChildCount();
        while (i5 < childCount) {
            if (getChildAt(i5).getVisibility() == 0 && (getChildAt(i5) instanceof Button)) {
                return i5;
            }
            i5++;
        }
        return -1;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i5, int i6) {
        int iMakeMeasureSpec;
        boolean z4;
        int size = View.MeasureSpec.getSize(i5);
        int measuredHeight = 0;
        if (this.f3360c) {
            if (size > this.f3362e && this.f3361d) {
                setStacked(false);
                setDividerVisible(a(0));
            }
            this.f3362e = size;
        }
        if (this.f3361d || View.MeasureSpec.getMode(i5) != 1073741824) {
            iMakeMeasureSpec = i5;
            z4 = false;
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z4 = true;
        }
        super.onMeasure(iMakeMeasureSpec, i6);
        if (this.f3360c && !this.f3361d) {
            boolean z5 = (getMeasuredWidthAndState() & (-16777216)) == 16777216;
            if (z5) {
                setStacked(true);
                setDividerInvisible(0);
                setGravity(17);
                z4 = true;
            }
            if (z5) {
                int childCount = getChildCount();
                for (int i7 = 0; i7 < childCount; i7++) {
                    View childAt = getChildAt(i7);
                    if (childAt instanceof Button) {
                        ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                            layoutParams.width = -1;
                            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                            if (i7 < childCount - 1) {
                                marginLayoutParams.setMargins(0, 0, 0, this.f);
                            }
                            childAt.setLayoutParams(marginLayoutParams);
                        }
                    }
                }
            } else {
                int childCount2 = getChildCount();
                for (int i8 = 0; i8 < childCount2; i8++) {
                    View childAt2 = getChildAt(i8);
                    if (childAt2 instanceof Button) {
                        ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
                        if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                            layoutParams2.width = -2;
                            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                            if (i8 < childCount2 - 1) {
                                marginLayoutParams2.setMargins(0, 0, 0, 0);
                            }
                            childAt2.setLayoutParams(marginLayoutParams2);
                        }
                    }
                }
            }
        }
        if (z4) {
            super.onMeasure(i5, i6);
        }
        int iA = a(0);
        if (iA >= 0) {
            View childAt3 = getChildAt(iA);
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) childAt3.getLayoutParams();
            measuredHeight = childAt3.getMeasuredHeight() + getPaddingTop() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            if (this.f3361d) {
                int iA2 = a(iA + 1);
                if (iA2 >= 0) {
                    measuredHeight = getChildAt(iA2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f)) + measuredHeight;
                }
            } else {
                measuredHeight += getPaddingBottom();
            }
        }
        WeakHashMap weakHashMap = Q.f940a;
        if (getMinimumHeight() != measuredHeight) {
            setMinimumHeight(measuredHeight);
            if (i6 == 0 || z4) {
                super.onMeasure(i5, i6);
            }
        }
    }

    public void setAllowStacking(boolean z4) {
        if (this.f3360c != z4) {
            this.f3360c = z4;
            if (!z4 && this.f3361d) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
