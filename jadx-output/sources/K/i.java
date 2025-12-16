package K;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

/* loaded from: classes.dex */
public final class i extends AccessibilityNodeProvider {

    /* renamed from: a, reason: collision with root package name */
    public final j f1204a;

    public i(j jVar) {
        this.f1204a = jVar;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final void addExtraDataToAccessibilityNodeInfo(int i5, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
        this.f1204a.getClass();
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i5) {
        h hVarA = this.f1204a.a(i5);
        if (hVarA == null) {
            return null;
        }
        return hVarA.f1201a;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final List findAccessibilityNodeInfosByText(String str, int i5) {
        this.f1204a.getClass();
        return null;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo findFocus(int i5) {
        h hVarB = this.f1204a.b(i5);
        if (hVarB == null) {
            return null;
        }
        return hVarB.f1201a;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final boolean performAction(int i5, int i6, Bundle bundle) {
        return this.f1204a.c(i5, i6, bundle);
    }
}
