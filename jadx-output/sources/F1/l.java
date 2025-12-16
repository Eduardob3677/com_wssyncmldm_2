package F1;

import J.Q;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.SeslChipGroup;
import com.wssyncmldm.R;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class l extends J1.d {
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f735g;

    /* renamed from: h, reason: collision with root package name */
    public j f736h;

    /* renamed from: i, reason: collision with root package name */
    public final I3.p f737i;

    /* renamed from: j, reason: collision with root package name */
    public final int f738j;

    /* renamed from: k, reason: collision with root package name */
    public final k f739k;

    /* JADX WARN: Illegal instructions before constructor call */
    public l(Context context, AttributeSet attributeSet) {
        Context contextA = U1.a.a(context, attributeSet, R.attr.chipGroupStyle, R.style.Widget_MaterialComponents_ChipGroup);
        super(contextA, attributeSet, R.attr.chipGroupStyle);
        this.f1102e = false;
        TypedArray typedArrayObtainStyledAttributes = contextA.getTheme().obtainStyledAttributes(attributeSet, v1.a.f9534i, 0, 0);
        this.f1100c = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f1101d = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        I3.p pVar = new I3.p();
        this.f737i = pVar;
        SeslChipGroup seslChipGroup = (SeslChipGroup) this;
        k kVar = new k(seslChipGroup);
        this.f739k = kVar;
        TypedArray typedArrayF = J1.m.f(getContext(), attributeSet, v1.a.f9530d, R.attr.chipGroupStyle, R.style.Widget_MaterialComponents_ChipGroup, new int[0]);
        int dimensionPixelOffset = typedArrayF.getDimensionPixelOffset(1, 0);
        setChipSpacingHorizontal(typedArrayF.getDimensionPixelOffset(2, dimensionPixelOffset));
        setChipSpacingVertical(typedArrayF.getDimensionPixelOffset(3, dimensionPixelOffset));
        setSingleLine(typedArrayF.getBoolean(5, false));
        setSingleSelection(typedArrayF.getBoolean(6, false));
        setSelectionRequired(typedArrayF.getBoolean(4, false));
        this.f738j = typedArrayF.getResourceId(0, -1);
        typedArrayF.recycle();
        pVar.f922e = new g(seslChipGroup);
        super.setOnHierarchyChangeListener(kVar);
        WeakHashMap weakHashMap = Q.f940a;
        setImportantForAccessibility(1);
    }

    private int getVisibleChipCount() {
        int i5 = 0;
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            if ((getChildAt(i6) instanceof Chip) && getChildAt(i6).getVisibility() == 0) {
                i5++;
            }
        }
        return i5;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof h);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new h(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new h(getContext(), attributeSet);
    }

    public int getCheckedChipId() {
        return this.f737i.g();
    }

    public List<Integer> getCheckedChipIds() {
        return this.f737i.d(this);
    }

    public int getChipSpacingHorizontal() {
        return this.f;
    }

    public int getChipSpacingVertical() {
        return this.f735g;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i5 = this.f738j;
        if (i5 != -1) {
            I3.p pVar = this.f737i;
            J1.g gVar = (J1.g) ((HashMap) pVar.f920c).get(Integer.valueOf(i5));
            if (gVar != null && pVar.a(gVar)) {
                pVar.i();
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(getRowCount(), this.f1102e ? getVisibleChipCount() : -1, false, this.f737i.f918a ? 1 : 2));
    }

    public void setChipSpacing(int i5) {
        setChipSpacingHorizontal(i5);
        setChipSpacingVertical(i5);
    }

    public void setChipSpacingHorizontal(int i5) {
        if (this.f != i5) {
            this.f = i5;
            setItemSpacing(i5);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(int i5) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i5));
    }

    public void setChipSpacingResource(int i5) {
        setChipSpacing(getResources().getDimensionPixelOffset(i5));
    }

    public void setChipSpacingVertical(int i5) {
        if (this.f735g != i5) {
            this.f735g = i5;
            setLineSpacing(i5);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(int i5) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i5));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i5) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    @Deprecated
    public void setOnCheckedChangeListener(i iVar) {
        if (iVar == null) {
            setOnCheckedStateChangeListener(null);
        } else {
            setOnCheckedStateChangeListener(new g(this));
        }
    }

    public void setOnCheckedStateChangeListener(j jVar) {
        this.f736h = jVar;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f739k.f733a = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z4) {
        this.f737i.f919b = z4;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i5) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i5) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Override // J1.d
    public void setSingleLine(boolean z4) {
        super.setSingleLine(z4);
    }

    public void setSingleSelection(boolean z4) {
        I3.p pVar = this.f737i;
        if (pVar.f918a != z4) {
            pVar.f918a = z4;
            boolean z5 = !((HashSet) pVar.f921d).isEmpty();
            Iterator it = ((HashMap) pVar.f920c).values().iterator();
            while (it.hasNext()) {
                pVar.k((J1.g) it.next(), false);
            }
            if (z5) {
                pVar.i();
            }
        }
    }

    public void setSingleLine(int i5) {
        setSingleLine(getResources().getBoolean(i5));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new h(layoutParams);
    }

    public void setSingleSelection(int i5) {
        setSingleSelection(getResources().getBoolean(i5));
    }
}
