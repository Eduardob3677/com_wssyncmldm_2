package androidx.appcompat.widget;

import J.Q;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.wssyncmldm.R;
import java.util.WeakHashMap;
import k.AbstractC0619q0;
import k.C0617p0;

/* loaded from: classes.dex */
public class AlertDialogLayout extends AbstractC0619q0 {
    public AlertDialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public static int l(View view) {
        WeakHashMap weakHashMap = Q.f940a;
        int minimumHeight = view.getMinimumHeight();
        if (minimumHeight > 0) {
            return minimumHeight;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getChildCount() == 1) {
                return l(viewGroup.getChildAt(0));
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00a0  */
    @Override // k.AbstractC0619q0, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int i9;
        int i10;
        int i11;
        int paddingLeft = getPaddingLeft();
        int i12 = i7 - i5;
        int paddingRight = i12 - getPaddingRight();
        int paddingRight2 = (i12 - paddingLeft) - getPaddingRight();
        int measuredHeight = getMeasuredHeight();
        int childCount = getChildCount();
        int gravity = getGravity();
        int i13 = gravity & 112;
        int i14 = gravity & 8388615;
        int paddingTop = i13 != 16 ? i13 != 80 ? getPaddingTop() : ((getPaddingTop() + i8) - i6) - measuredHeight : (((i8 - i6) - measuredHeight) / 2) + getPaddingTop();
        Drawable dividerDrawable = getDividerDrawable();
        int intrinsicHeight = dividerDrawable == null ? 0 : dividerDrawable.getIntrinsicHeight();
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            if (childAt != null && childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight2 = childAt.getMeasuredHeight();
                C0617p0 c0617p0 = (C0617p0) childAt.getLayoutParams();
                int i16 = ((LinearLayout.LayoutParams) c0617p0).gravity;
                if (i16 < 0) {
                    i16 = i14;
                }
                WeakHashMap weakHashMap = Q.f940a;
                int absoluteGravity = Gravity.getAbsoluteGravity(i16, getLayoutDirection()) & 7;
                if (absoluteGravity == 1) {
                    i9 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout.LayoutParams) c0617p0).leftMargin;
                    i10 = ((LinearLayout.LayoutParams) c0617p0).rightMargin;
                } else if (absoluteGravity != 5) {
                    i11 = ((LinearLayout.LayoutParams) c0617p0).leftMargin + paddingLeft;
                    if (k(i15)) {
                        paddingTop += intrinsicHeight;
                    }
                    int i17 = paddingTop + ((LinearLayout.LayoutParams) c0617p0).topMargin;
                    childAt.layout(i11, i17, measuredWidth + i11, i17 + measuredHeight2);
                    paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) c0617p0).bottomMargin + i17;
                } else {
                    i9 = paddingRight - measuredWidth;
                    i10 = ((LinearLayout.LayoutParams) c0617p0).rightMargin;
                }
                i11 = i9 - i10;
                if (k(i15)) {
                }
                int i172 = paddingTop + ((LinearLayout.LayoutParams) c0617p0).topMargin;
                childAt.layout(i11, i172, measuredWidth + i11, i172 + measuredHeight2);
                paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) c0617p0).bottomMargin + i172;
            }
        }
    }

    @Override // k.AbstractC0619q0, android.view.View
    public final void onMeasure(int i5, int i6) {
        int iCombineMeasuredStates;
        int iL;
        int measuredHeight;
        int measuredHeight2;
        int childCount = getChildCount();
        View view = null;
        View view2 = null;
        View view3 = null;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                int id = childAt.getId();
                if (id == R.id.topPanel) {
                    view = childAt;
                } else if (id == R.id.buttonPanel) {
                    view2 = childAt;
                } else {
                    if ((id != R.id.contentPanel && id != R.id.customPanel) || view3 != null) {
                        super.onMeasure(i5, i6);
                        return;
                    }
                    view3 = childAt;
                }
            }
        }
        int mode = View.MeasureSpec.getMode(i6);
        int size = View.MeasureSpec.getSize(i6);
        int mode2 = View.MeasureSpec.getMode(i5);
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (view != null) {
            view.measure(i5, 0);
            paddingBottom += view.getMeasuredHeight();
            iCombineMeasuredStates = View.combineMeasuredStates(0, view.getMeasuredState());
        } else {
            iCombineMeasuredStates = 0;
        }
        if (view2 != null) {
            view2.measure(i5, 0);
            iL = l(view2);
            measuredHeight = view2.getMeasuredHeight() - iL;
            paddingBottom += iL;
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view2.getMeasuredState());
        } else {
            iL = 0;
            measuredHeight = 0;
        }
        if (view3 != null) {
            view3.measure(i5, mode == 0 ? 0 : View.MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingBottom), mode));
            measuredHeight2 = view3.getMeasuredHeight();
            paddingBottom += measuredHeight2;
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view3.getMeasuredState());
        } else {
            measuredHeight2 = 0;
        }
        int i8 = size - paddingBottom;
        if (view2 != null) {
            int i9 = paddingBottom - iL;
            int iMin = Math.min(i8, measuredHeight);
            if (iMin > 0) {
                i8 -= iMin;
                iL += iMin;
            }
            view2.measure(i5, View.MeasureSpec.makeMeasureSpec(iL, 1073741824));
            paddingBottom = i9 + view2.getMeasuredHeight();
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view2.getMeasuredState());
        }
        if (view3 != null && i8 > 0) {
            view3.measure(i5, View.MeasureSpec.makeMeasureSpec(measuredHeight2 + i8, mode));
            paddingBottom = (paddingBottom - measuredHeight2) + view3.getMeasuredHeight();
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view3.getMeasuredState());
        }
        int iMax = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt2 = getChildAt(i10);
            if (childAt2.getVisibility() != 8) {
                iMax = Math.max(iMax, childAt2.getMeasuredWidth());
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(getPaddingRight() + getPaddingLeft() + iMax, i5, iCombineMeasuredStates), View.resolveSizeAndState(paddingBottom, i6, 0));
        if (mode2 != 1073741824) {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt3 = getChildAt(i11);
                if (childAt3.getVisibility() != 8) {
                    C0617p0 c0617p0 = (C0617p0) childAt3.getLayoutParams();
                    if (((LinearLayout.LayoutParams) c0617p0).width == -1) {
                        int i12 = ((LinearLayout.LayoutParams) c0617p0).height;
                        ((LinearLayout.LayoutParams) c0617p0).height = childAt3.getMeasuredHeight();
                        measureChildWithMargins(childAt3, iMakeMeasureSpec, 0, i6, 0);
                        ((LinearLayout.LayoutParams) c0617p0).height = i12;
                    }
                }
            }
        }
    }
}
