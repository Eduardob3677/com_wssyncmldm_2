package com.google.android.material.button;

import C1.d;
import C1.e;
import C1.f;
import J.Q;
import J1.m;
import P1.j;
import P1.k;
import U1.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import com.wssyncmldm.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;
import s2.C0837c;

/* loaded from: classes.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f5905m = 0;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f5906c;

    /* renamed from: d, reason: collision with root package name */
    public final C0837c f5907d;

    /* renamed from: e, reason: collision with root package name */
    public final LinkedHashSet f5908e;
    public final d f;

    /* renamed from: g, reason: collision with root package name */
    public Integer[] f5909g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f5910h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f5911i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f5912j;

    /* renamed from: k, reason: collision with root package name */
    public final int f5913k;

    /* renamed from: l, reason: collision with root package name */
    public HashSet f5914l;

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        super(a.a(context, attributeSet, R.attr.materialButtonToggleGroupStyle, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup), attributeSet, R.attr.materialButtonToggleGroupStyle);
        this.f5906c = new ArrayList();
        this.f5907d = new C0837c((Object) this);
        this.f5908e = new LinkedHashSet();
        this.f = new d(0, this);
        this.f5910h = false;
        this.f5914l = new HashSet();
        TypedArray typedArrayF = m.f(getContext(), attributeSet, v1.a.f9538m, R.attr.materialButtonToggleGroupStyle, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup, new int[0]);
        setSingleSelection(typedArrayF.getBoolean(3, false));
        this.f5913k = typedArrayF.getResourceId(1, -1);
        this.f5912j = typedArrayF.getBoolean(2, false);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(typedArrayF.getBoolean(0, true));
        typedArrayF.recycle();
        WeakHashMap weakHashMap = Q.f940a;
        setImportantForAccessibility(1);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            if (c(i5)) {
                return i5;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (c(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i5 = 0;
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            if ((getChildAt(i6) instanceof MaterialButton) && c(i6)) {
                i5++;
            }
        }
        return i5;
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            WeakHashMap weakHashMap = Q.f940a;
            materialButton.setId(View.generateViewId());
        }
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setOnPressedChangeListenerInternal(this.f5907d);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    public final void a() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i5 = firstVisibleChildIndex + 1; i5 < getChildCount(); i5++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i5);
            int iMin = Math.min(materialButton.getStrokeWidth(), ((MaterialButton) getChildAt(i5 - 1)).getStrokeWidth());
            ViewGroup.LayoutParams layoutParams = materialButton.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
            if (getOrientation() == 0) {
                layoutParams2.setMarginEnd(0);
                layoutParams2.setMarginStart(-iMin);
                layoutParams2.topMargin = 0;
            } else {
                layoutParams2.bottomMargin = 0;
                layoutParams2.topMargin = -iMin;
                layoutParams2.setMarginStart(0);
            }
            materialButton.setLayoutParams(layoutParams2);
        }
        if (getChildCount() == 0 || firstVisibleChildIndex == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) ((MaterialButton) getChildAt(firstVisibleChildIndex)).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams3.topMargin = 0;
            layoutParams3.bottomMargin = 0;
        } else {
            layoutParams3.setMarginEnd(0);
            layoutParams3.setMarginStart(0);
            layoutParams3.leftMargin = 0;
            layoutParams3.rightMargin = 0;
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i5, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i5, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        b(materialButton.getId(), materialButton.f5902r);
        k shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.f5906c.add(new f(shapeAppearanceModel.f2111e, shapeAppearanceModel.f2113h, shapeAppearanceModel.f, shapeAppearanceModel.f2112g));
        materialButton.setEnabled(isEnabled());
        Q.h(materialButton, new e(0, this));
    }

    public final void b(int i5, boolean z4) {
        if (i5 == -1) {
            Log.e("MButtonToggleGroup", "Button ID is not valid: " + i5);
            return;
        }
        HashSet hashSet = new HashSet(this.f5914l);
        if (z4 && !hashSet.contains(Integer.valueOf(i5))) {
            if (this.f5911i && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i5));
        } else {
            if (z4 || !hashSet.contains(Integer.valueOf(i5))) {
                return;
            }
            if (!this.f5912j || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i5));
            }
        }
        d(hashSet);
    }

    public final boolean c(int i5) {
        return getChildAt(i5).getVisibility() != 8;
    }

    public final void d(Set set) {
        HashSet hashSet = this.f5914l;
        this.f5914l = new HashSet(set);
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            int id = ((MaterialButton) getChildAt(i5)).getId();
            boolean zContains = set.contains(Integer.valueOf(id));
            View viewFindViewById = findViewById(id);
            if (viewFindViewById instanceof MaterialButton) {
                this.f5910h = true;
                ((MaterialButton) viewFindViewById).setChecked(zContains);
                this.f5910h = false;
            }
            if (hashSet.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                set.contains(Integer.valueOf(id));
                Iterator it = this.f5908e.iterator();
                while (it.hasNext()) {
                    ((com.google.android.material.timepicker.f) it.next()).a();
                }
            }
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.f);
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            treeMap.put((MaterialButton) getChildAt(i5), Integer.valueOf(i5));
        }
        this.f5909g = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    public final void e() {
        f fVar;
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i5 = 0; i5 < childCount; i5++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i5);
            if (materialButton.getVisibility() != 8) {
                j jVarE = materialButton.getShapeAppearanceModel().e();
                f fVar2 = (f) this.f5906c.get(i5);
                if (firstVisibleChildIndex != lastVisibleChildIndex) {
                    boolean z4 = getOrientation() == 0;
                    P1.a aVar = f.f362e;
                    if (i5 == firstVisibleChildIndex) {
                        fVar = z4 ? m.e(this) ? new f(aVar, aVar, fVar2.f364b, fVar2.f365c) : new f(fVar2.f363a, fVar2.f366d, aVar, aVar) : new f(fVar2.f363a, aVar, fVar2.f364b, aVar);
                    } else if (i5 == lastVisibleChildIndex) {
                        fVar = z4 ? m.e(this) ? new f(fVar2.f363a, fVar2.f366d, aVar, aVar) : new f(aVar, aVar, fVar2.f364b, fVar2.f365c) : new f(aVar, fVar2.f366d, aVar, fVar2.f365c);
                    } else {
                        fVar2 = null;
                    }
                    fVar2 = fVar;
                }
                if (fVar2 == null) {
                    jVarE.f2100e = new P1.a(0.0f);
                    jVarE.f = new P1.a(0.0f);
                    jVarE.f2101g = new P1.a(0.0f);
                    jVarE.f2102h = new P1.a(0.0f);
                } else {
                    jVarE.f2100e = fVar2.f363a;
                    jVarE.f2102h = fVar2.f366d;
                    jVarE.f = fVar2.f364b;
                    jVarE.f2101g = fVar2.f365c;
                }
                materialButton.setShapeAppearanceModel(jVarE.a());
            }
        }
    }

    public int getCheckedButtonId() {
        if (!this.f5911i || this.f5914l.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f5914l.iterator().next()).intValue();
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            int id = ((MaterialButton) getChildAt(i5)).getId();
            if (this.f5914l.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i5, int i6) {
        Integer[] numArr = this.f5909g;
        if (numArr != null && i6 < numArr.length) {
            return numArr[i6].intValue();
        }
        Log.w("MButtonToggleGroup", "Child order wasn't updated");
        return i6;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i5 = this.f5913k;
        if (i5 != -1) {
            d(Collections.singleton(Integer.valueOf(i5)));
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, getVisibleButtonCount(), false, this.f5911i ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i5, int i6) {
        e();
        a();
        super.onMeasure(i5, i6);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f5906c.remove(iIndexOfChild);
        }
        e();
        a();
    }

    @Override // android.view.View
    public void setEnabled(boolean z4) {
        super.setEnabled(z4);
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            ((MaterialButton) getChildAt(i5)).setEnabled(z4);
        }
    }

    public void setSelectionRequired(boolean z4) {
        this.f5912j = z4;
    }

    public void setSingleSelection(boolean z4) {
        if (this.f5911i != z4) {
            this.f5911i = z4;
            d(new HashSet());
        }
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            ((MaterialButton) getChildAt(i5)).setA11yClassName((this.f5911i ? RadioButton.class : ToggleButton.class).getName());
        }
    }

    public void setSingleSelection(int i5) {
        setSingleSelection(getResources().getBoolean(i5));
    }
}
