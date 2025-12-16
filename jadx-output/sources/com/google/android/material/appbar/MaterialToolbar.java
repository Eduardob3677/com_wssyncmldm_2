package com.google.android.material.appbar;

import F0.b;
import J.I;
import J.Q;
import J1.m;
import P1.g;
import U1.a;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.ColorStateListDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Menu;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.wssyncmldm.R;
import f1.AbstractC0420a;
import j.MenuC0508i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class MaterialToolbar extends Toolbar {
    public static final ImageView.ScaleType[] l0 = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    public Integer g0;

    /* renamed from: h0, reason: collision with root package name */
    public boolean f5809h0;

    /* renamed from: i0, reason: collision with root package name */
    public boolean f5810i0;

    /* renamed from: j0, reason: collision with root package name */
    public ImageView.ScaleType f5811j0;
    public Boolean k0;

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        super(a.a(context, attributeSet, R.attr.toolbarStyle, R.style.Widget_MaterialComponents_Toolbar), attributeSet, 0);
        Context context2 = getContext();
        TypedArray typedArrayF = m.f(context2, attributeSet, v1.a.f9545u, R.attr.toolbarStyle, R.style.Widget_MaterialComponents_Toolbar, new int[0]);
        if (typedArrayF.hasValue(2)) {
            setNavigationIconTint(typedArrayF.getColor(2, -1));
        }
        this.f5809h0 = typedArrayF.getBoolean(4, false);
        this.f5810i0 = typedArrayF.getBoolean(3, false);
        int i5 = typedArrayF.getInt(1, -1);
        if (i5 >= 0) {
            ImageView.ScaleType[] scaleTypeArr = l0;
            if (i5 < scaleTypeArr.length) {
                this.f5811j0 = scaleTypeArr[i5];
            }
        }
        if (typedArrayF.hasValue(0)) {
            this.k0 = Boolean.valueOf(typedArrayF.getBoolean(0, false));
        }
        typedArrayF.recycle();
        Drawable background = getBackground();
        ColorStateList colorStateListValueOf = background == null ? ColorStateList.valueOf(0) : background instanceof ColorDrawable ? ColorStateList.valueOf(((ColorDrawable) background).getColor()) : background instanceof ColorStateListDrawable ? ((ColorStateListDrawable) background).getColorStateList() : null;
        if (colorStateListValueOf != null) {
            g gVar = new g();
            gVar.k(colorStateListValueOf);
            gVar.i(context2);
            WeakHashMap weakHashMap = Q.f940a;
            gVar.j(I.i(this));
            setBackground(gVar);
        }
    }

    public ImageView.ScaleType getLogoScaleType() {
        return this.f5811j0;
    }

    public Integer getNavigationIconTint() {
        return this.g0;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public final void n(int i5) {
        Menu menu = getMenu();
        boolean z4 = menu instanceof MenuC0508i;
        if (z4) {
            ((MenuC0508i) menu).w();
        }
        super.n(i5);
        if (z4) {
            ((MenuC0508i) menu).v();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() throws Resources.NotFoundException {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof g) {
            AbstractC0420a.m0(this, (g) background);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        ImageView imageView;
        Drawable drawable;
        super.onLayout(z4, i5, i6, i7, i8);
        int i9 = 0;
        ImageView imageView2 = null;
        if (this.f5809h0 || this.f5810i0) {
            ArrayList arrayListD = m.d(this, getTitle());
            boolean zIsEmpty = arrayListD.isEmpty();
            b bVar = m.f1127c;
            TextView textView = zIsEmpty ? null : (TextView) Collections.min(arrayListD, bVar);
            ArrayList arrayListD2 = m.d(this, getSubtitle());
            TextView textView2 = arrayListD2.isEmpty() ? null : (TextView) Collections.max(arrayListD2, bVar);
            if (textView != null || textView2 != null) {
                int measuredWidth = getMeasuredWidth();
                int i10 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i11 = 0; i11 < getChildCount(); i11++) {
                    View childAt = getChildAt(i11);
                    if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                        if (childAt.getRight() < i10 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i10 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair pair = new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (this.f5809h0 && textView != null) {
                    y(textView, pair);
                }
                if (this.f5810i0 && textView2 != null) {
                    y(textView2, pair);
                }
            }
        }
        Drawable logo = getLogo();
        if (logo != null) {
            while (true) {
                if (i9 >= getChildCount()) {
                    break;
                }
                View childAt2 = getChildAt(i9);
                if ((childAt2 instanceof ImageView) && (drawable = (imageView = (ImageView) childAt2).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(logo.getConstantState())) {
                    imageView2 = imageView;
                    break;
                }
                i9++;
            }
        }
        if (imageView2 != null) {
            Boolean bool = this.k0;
            if (bool != null) {
                imageView2.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.f5811j0;
            if (scaleType != null) {
                imageView2.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        Drawable background = getBackground();
        if (background instanceof g) {
            ((g) background).j(f);
        }
    }

    public void setLogoAdjustViewBounds(boolean z4) {
        Boolean bool = this.k0;
        if (bool == null || bool.booleanValue() != z4) {
            this.k0 = Boolean.valueOf(z4);
            requestLayout();
        }
    }

    public void setLogoScaleType(ImageView.ScaleType scaleType) {
        if (this.f5811j0 != scaleType) {
            this.f5811j0 = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.g0 != null) {
            drawable = drawable.mutate();
            C.a.g(drawable, this.g0.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i5) {
        this.g0 = Integer.valueOf(i5);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z4) {
        if (this.f5810i0 != z4) {
            this.f5810i0 = z4;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z4) {
        if (this.f5809h0 != z4) {
            this.f5809h0 = z4;
            requestLayout();
        }
    }

    public final void y(TextView textView, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = textView.getMeasuredWidth();
        int i5 = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i6 = measuredWidth2 + i5;
        int iMax = Math.max(Math.max(((Integer) pair.first).intValue() - i5, 0), Math.max(i6 - ((Integer) pair.second).intValue(), 0));
        if (iMax > 0) {
            i5 += iMax;
            i6 -= iMax;
            textView.measure(View.MeasureSpec.makeMeasureSpec(i6 - i5, 1073741824), textView.getMeasuredHeightAndState());
        }
        textView.layout(i5, textView.getTop(), i6, textView.getBottom());
    }
}
