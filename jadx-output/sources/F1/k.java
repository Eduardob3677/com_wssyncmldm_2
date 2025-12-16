package F1;

import J.Q;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.SeslChipGroup;
import java.util.HashMap;
import java.util.HashSet;
import java.util.WeakHashMap;
import s2.C0837c;

/* loaded from: classes.dex */
public final class k implements ViewGroup.OnHierarchyChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public ViewGroup.OnHierarchyChangeListener f733a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f734b;

    public k(SeslChipGroup seslChipGroup) {
        this.f734b = seslChipGroup;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewAdded(View view, View view2) {
        l lVar = this.f734b;
        if (view == lVar && (view2 instanceof Chip)) {
            if (view2.getId() == -1) {
                WeakHashMap weakHashMap = Q.f940a;
                view2.setId(View.generateViewId());
            }
            I3.p pVar = lVar.f737i;
            Chip chip = (Chip) view2;
            ((HashMap) pVar.f920c).put(Integer.valueOf(chip.getId()), chip);
            if (chip.isChecked()) {
                pVar.a(chip);
            }
            chip.setInternalOnCheckedChangeListener(new C0837c(pVar));
        }
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f733a;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewAdded(view, view2);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewRemoved(View view, View view2) {
        l lVar = this.f734b;
        if (view == lVar && (view2 instanceof Chip)) {
            I3.p pVar = lVar.f737i;
            Chip chip = (Chip) view2;
            pVar.getClass();
            chip.setInternalOnCheckedChangeListener(null);
            ((HashMap) pVar.f920c).remove(Integer.valueOf(chip.getId()));
            ((HashSet) pVar.f921d).remove(Integer.valueOf(chip.getId()));
        }
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f733a;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewRemoved(view, view2);
        }
    }
}
