package com.google.android.material.chip;

import A2.d;
import F1.t;
import F1.v;
import F1.x;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.google.android.material.chip.SeslExpandableContainer;
import com.wssyncmldm.R;
import java.util.Arrays;
import java.util.Collections;
import java.util.Locale;

/* loaded from: classes.dex */
public class SeslExpandableContainer extends FrameLayout {
    public static final /* synthetic */ int n = 0;

    /* renamed from: c, reason: collision with root package name */
    public final HorizontalScrollView f5943c;

    /* renamed from: d, reason: collision with root package name */
    public final LinearLayout f5944d;

    /* renamed from: e, reason: collision with root package name */
    public final x f5945e;
    public final View f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5946g;

    /* renamed from: h, reason: collision with root package name */
    public final int f5947h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f5948i;

    /* renamed from: j, reason: collision with root package name */
    public int f5949j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f5950k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f5951l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f5952m;

    public SeslExpandableContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, -1, -1);
        this.f5946g = false;
        this.f5948i = true;
        this.f5949j = 0;
        this.f5951l = true;
        boolean z4 = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        this.f5952m = z4;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.sesl_expandable_container, (ViewGroup) null);
        HorizontalScrollView horizontalScrollView = (HorizontalScrollView) viewInflate.findViewById(R.id.sesl_scroll_view);
        this.f5943c = horizontalScrollView;
        horizontalScrollView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: F1.u
            @Override // android.view.View.OnScrollChangeListener
            public final void onScrollChange(View view, int i5, int i6, int i7, int i8) {
                int i9 = SeslExpandableContainer.n;
                this.f749a.b();
            }
        });
        this.f5944d = (LinearLayout) viewInflate.findViewById(R.id.sesl_scrolling_chips_container);
        this.f = viewInflate.findViewById(R.id.sesl_padding_view);
        addView(viewInflate);
        int iGenerateViewId = View.generateViewId();
        this.f5947h = iGenerateViewId;
        x xVar = new x(context);
        this.f5945e = xVar;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, context.getResources().getDimensionPixelSize(R.dimen.expansion_button_margin_top), 0, 0);
        xVar.setLayoutParams(layoutParams);
        xVar.setBackground(context.getDrawable(R.drawable.sesl_expansion_button_background));
        xVar.setImageDrawable(context.getDrawable(R.drawable.sesl_expansion_button_foreground));
        xVar.setAutomaticDisappear(true);
        xVar.setExpanded(false);
        xVar.setFloated(true);
        xVar.setVisibility(8);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        relativeLayout.setId(iGenerateViewId);
        if (z4) {
            relativeLayout.setGravity(3);
        } else {
            relativeLayout.setGravity(5);
        }
        addView(relativeLayout);
        relativeLayout.addView(xVar);
    }

    public final void a() {
        setLayoutTransition(null);
        boolean z4 = this.f5946g;
        View view = this.f;
        boolean z5 = this.f5952m;
        x xVar = this.f5945e;
        HorizontalScrollView horizontalScrollView = this.f5943c;
        LinearLayout linearLayout = this.f5944d;
        int i5 = 1;
        if (z4) {
            if (linearLayout.getChildCount() > 0) {
                xVar.setAutomaticDisappear(false);
                this.f5949j = horizontalScrollView.getScrollX();
                int childCount = linearLayout.getChildCount();
                View[] viewArr = new View[childCount];
                for (int i6 = 0; i6 < linearLayout.getChildCount(); i6++) {
                    viewArr[i6] = linearLayout.getChildAt(i6);
                }
                if (z5) {
                    Collections.reverse(Arrays.asList(viewArr));
                }
                int height = 0;
                for (int i7 = 0; i7 < childCount; i7++) {
                    View view2 = viewArr[i7];
                    if (!this.f5948i || view2.getId() != view.getId()) {
                        linearLayout.removeView(view2);
                        addView(view2, i5);
                        height += view2.getHeight();
                        i5++;
                    }
                }
                horizontalScrollView.setVisibility(8);
                if (xVar.getVisibility() == 0 || height <= 0) {
                    return;
                }
                xVar.setVisibility(0);
                return;
            }
            return;
        }
        if (getChildCount() > 2) {
            xVar.setAutomaticDisappear(true);
            horizontalScrollView.setVisibility(0);
            int childCount2 = getChildCount();
            View[] viewArr2 = new View[childCount2];
            for (int i8 = 0; i8 < getChildCount(); i8++) {
                viewArr2[i8] = getChildAt(i8);
            }
            if (z5) {
                Collections.reverse(Arrays.asList(viewArr2));
            }
            int i9 = 0;
            for (int i10 = 0; i10 < childCount2; i10++) {
                View view3 = viewArr2[i10];
                if (!this.f5950k && (view3 instanceof SeslChipGroup)) {
                    ((SeslChipGroup) view3).setMaxChipWidth(getWidth());
                    this.f5950k = true;
                }
                int id = view3.getId();
                if (id != horizontalScrollView.getId() && id != this.f5947h && id != view.getId()) {
                    removeView(view3);
                    linearLayout.addView(view3, i9);
                    i9++;
                }
            }
            horizontalScrollView.scrollTo(this.f5949j, 0);
            b();
        }
    }

    public final void b() {
        boolean z4;
        int scrollContentsWidth = getScrollContentsWidth();
        int width = getWidth() + 10;
        View view = this.f;
        int width2 = view.getWidth();
        boolean z5 = this.f5948i;
        x xVar = this.f5945e;
        if (z5) {
            if ((view.getVisibility() == 0 && scrollContentsWidth - width2 > width) || (view.getVisibility() == 8 && scrollContentsWidth > width)) {
                if (xVar.getVisibility() != 0) {
                    xVar.setVisibility(0);
                }
                xVar.setOnClickListener(new d(1, this));
            } else if (xVar.getVisibility() == 0) {
                xVar.setVisibility(4);
            }
        } else if (scrollContentsWidth > width) {
            if (xVar.getVisibility() != 0) {
                xVar.setVisibility(0);
            }
            xVar.setOnClickListener(new d(1, this));
        } else if (xVar.getVisibility() == 0) {
            xVar.setVisibility(4);
        }
        if (this.f5951l) {
            HorizontalScrollView horizontalScrollView = this.f5943c;
            if (horizontalScrollView.getVisibility() == 0) {
                if (!z5 || (((z4 = this.f5952m) && horizontalScrollView.getScrollX() > getPaddingView().getWidth() / 2) || (!z4 && horizontalScrollView.getScrollX() < getScrollContentsWidth() - getWidth()))) {
                    xVar.setFloated(true);
                } else {
                    xVar.setFloated(false);
                }
            }
        }
    }

    public x getExpansionButton() {
        return this.f5945e;
    }

    public View getPaddingView() {
        return this.f;
    }

    public int getScrollContentsWidth() {
        int i5 = 0;
        if (this.f5946g) {
            return 0;
        }
        int totalWidth = 0;
        while (true) {
            LinearLayout linearLayout = this.f5944d;
            if (i5 >= linearLayout.getChildCount()) {
                return totalWidth;
            }
            View childAt = linearLayout.getChildAt(i5);
            if (childAt.getVisibility() == 0) {
                totalWidth = (childAt instanceof SeslChipGroup ? ((SeslChipGroup) childAt).getTotalWidth() : childAt.getWidth()) + totalWidth;
            }
            i5++;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
        a();
    }

    public void setExpanded(boolean z4) {
        this.f5946g = z4;
        a();
        post(new t(this, 0));
        Log.i("SeslExpandableContainer", "expansion state: " + z4);
    }

    public void setExpansionBackGroundImage(Drawable drawable) {
        this.f5945e.setBackground(drawable);
        Log.i("SeslExpandableContainer", "expansion button background changed");
    }

    public void setExpansionImageDrawable(Drawable drawable) {
        this.f5945e.setImageDrawable(drawable);
        Log.i("SeslExpandableContainer", "expansion button image changed");
    }

    public void setOnExpansionButtonClickedListener(v vVar) {
    }
}
