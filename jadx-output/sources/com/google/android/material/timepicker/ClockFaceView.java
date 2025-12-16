package com.google.android.material.timepicker;

import A.r;
import J.Q;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import com.wssyncmldm.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import u.l;

/* loaded from: classes.dex */
class ClockFaceView extends e implements d {

    /* renamed from: A, reason: collision with root package name */
    public final SparseArray f6145A;

    /* renamed from: B, reason: collision with root package name */
    public final c f6146B;

    /* renamed from: C, reason: collision with root package name */
    public final int[] f6147C;

    /* renamed from: D, reason: collision with root package name */
    public final float[] f6148D;
    public final int E;

    /* renamed from: F, reason: collision with root package name */
    public final int f6149F;

    /* renamed from: G, reason: collision with root package name */
    public final int f6150G;

    /* renamed from: H, reason: collision with root package name */
    public final int f6151H;

    /* renamed from: I, reason: collision with root package name */
    public final String[] f6152I;

    /* renamed from: J, reason: collision with root package name */
    public float f6153J;

    /* renamed from: K, reason: collision with root package name */
    public final ColorStateList f6154K;

    /* renamed from: w, reason: collision with root package name */
    public final ClockHandView f6155w;

    /* renamed from: x, reason: collision with root package name */
    public final Rect f6156x;

    /* renamed from: y, reason: collision with root package name */
    public final RectF f6157y;

    /* renamed from: z, reason: collision with root package name */
    public final Rect f6158z;

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6156x = new Rect();
        this.f6157y = new RectF();
        this.f6158z = new Rect();
        SparseArray sparseArray = new SparseArray();
        this.f6145A = sparseArray;
        this.f6148D = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v1.a.f9531e, R.attr.materialClockStyle, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateListB = W1.a.B(context, typedArrayObtainStyledAttributes, 1);
        this.f6154K = colorStateListB;
        LayoutInflater.from(context).inflate(R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        this.f6155w = clockHandView;
        this.E = resources.getDimensionPixelSize(R.dimen.material_clock_hand_padding);
        int colorForState = colorStateListB.getColorForState(new int[]{android.R.attr.state_selected}, colorStateListB.getDefaultColor());
        this.f6147C = new int[]{colorForState, colorForState, colorStateListB.getDefaultColor()};
        clockHandView.f6161e.add(this);
        int defaultColor = r.a(context.getResources(), R.color.material_timepicker_clockface, context.getTheme()).getDefaultColor();
        ColorStateList colorStateListB2 = W1.a.B(context, typedArrayObtainStyledAttributes, 0);
        setBackgroundColor(colorStateListB2 != null ? colorStateListB2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new b(this));
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.f6146B = new c(this);
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        this.f6152I = strArr;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = sparseArray.size();
        boolean z4 = false;
        for (int i5 = 0; i5 < Math.max(this.f6152I.length, size); i5++) {
            TextView textView = (TextView) sparseArray.get(i5);
            if (i5 >= this.f6152I.length) {
                removeView(textView);
                sparseArray.remove(i5);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    sparseArray.put(i5, textView);
                    addView(textView);
                }
                textView.setText(this.f6152I[i5]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i5));
                int i6 = (i5 / 12) + 1;
                textView.setTag(R.id.material_clock_level, Integer.valueOf(i6));
                z4 = i6 > 1 ? true : z4;
                Q.h(textView, this.f6146B);
                textView.setTextColor(this.f6154K);
            }
        }
        ClockHandView clockHandView2 = this.f6155w;
        if (clockHandView2.f6160d && !z4) {
            clockHandView2.f6169o = 1;
        }
        clockHandView2.f6160d = z4;
        clockHandView2.invalidate();
        this.f6149F = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_height);
        this.f6150G = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_width);
        this.f6151H = resources.getDimensionPixelSize(R.dimen.material_clock_size);
    }

    @Override // com.google.android.material.timepicker.e
    public final void g() {
        l lVar = new l();
        lVar.b(this);
        HashMap map = new HashMap();
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getId() != R.id.circle_center && !"skip".equals(childAt.getTag())) {
                int i6 = (Integer) childAt.getTag(R.id.material_clock_level);
                if (i6 == null) {
                    i6 = 1;
                }
                if (!map.containsKey(i6)) {
                    map.put(i6, new ArrayList());
                }
                ((List) map.get(i6)).add(childAt);
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            List list = (List) entry.getValue();
            int iRound = ((Integer) entry.getKey()).intValue() == 2 ? Math.round(this.f6176u * 0.66f) : this.f6176u;
            Iterator it = list.iterator();
            float size = 0.0f;
            while (it.hasNext()) {
                int id = ((View) it.next()).getId();
                HashMap map2 = lVar.f9309c;
                if (!map2.containsKey(Integer.valueOf(id))) {
                    map2.put(Integer.valueOf(id), new u.g());
                }
                u.h hVar = ((u.g) map2.get(Integer.valueOf(id))).f9224d;
                hVar.f9280w = R.id.circle_center;
                hVar.f9281x = iRound;
                hVar.f9282y = size;
                size += 360.0f / list.size();
            }
        }
        lVar.a(this);
        setConstraintSet(null);
        requestLayout();
        int i7 = 0;
        while (true) {
            SparseArray sparseArray = this.f6145A;
            if (i7 >= sparseArray.size()) {
                return;
            }
            ((TextView) sparseArray.get(i7)).setVisibility(0);
            i7++;
        }
    }

    public final void h() {
        SparseArray sparseArray;
        RectF rectF;
        Rect rect;
        RectF rectF2 = this.f6155w.f6164i;
        float f = Float.MAX_VALUE;
        TextView textView = null;
        int i5 = 0;
        while (true) {
            sparseArray = this.f6145A;
            int size = sparseArray.size();
            rectF = this.f6157y;
            rect = this.f6156x;
            if (i5 >= size) {
                break;
            }
            TextView textView2 = (TextView) sparseArray.get(i5);
            if (textView2 != null) {
                textView2.getHitRect(rect);
                rectF.set(rect);
                rectF.union(rectF2);
                float fHeight = rectF.height() * rectF.width();
                if (fHeight < f) {
                    textView = textView2;
                    f = fHeight;
                }
            }
            i5++;
        }
        for (int i6 = 0; i6 < sparseArray.size(); i6++) {
            TextView textView3 = (TextView) sparseArray.get(i6);
            if (textView3 != null) {
                textView3.setSelected(textView3 == textView);
                textView3.getHitRect(rect);
                rectF.set(rect);
                textView3.getLineBounds(0, this.f6158z);
                rectF.inset(r8.left, r8.top);
                textView3.getPaint().setShader(!RectF.intersects(rectF2, rectF) ? null : new RadialGradient(rectF2.centerX() - rectF.left, rectF2.centerY() - rectF.top, 0.5f * rectF2.width(), this.f6147C, this.f6148D, Shader.TileMode.CLAMP));
                textView3.invalidate();
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, this.f6152I.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
        h();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i5, int i6) throws Resources.NotFoundException, NumberFormatException {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iMax = (int) (this.f6151H / Math.max(Math.max(this.f6149F / displayMetrics.heightPixels, this.f6150G / displayMetrics.widthPixels), 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
        setMeasuredDimension(iMax, iMax);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }
}
