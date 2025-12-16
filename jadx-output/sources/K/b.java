package K;

import J.Q;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import f1.AbstractC0420a;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class b implements AccessibilityManager.TouchExplorationStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final A2.b f1188a;

    public b(A2.b bVar) {
        this.f1188a = bVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f1188a.equals(((b) obj).f1188a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f1188a.hashCode();
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z4) {
        S1.j jVar = (S1.j) this.f1188a.f58d;
        AutoCompleteTextView autoCompleteTextView = jVar.f2485h;
        if (autoCompleteTextView == null || AbstractC0420a.P(autoCompleteTextView)) {
            return;
        }
        int i5 = z4 ? 2 : 1;
        WeakHashMap weakHashMap = Q.f940a;
        jVar.f2522d.setImportantForAccessibility(i5);
    }
}
