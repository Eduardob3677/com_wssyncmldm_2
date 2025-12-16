package J;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import com.wssyncmldm.R;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;

/* renamed from: J.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0027a extends View.AccessibilityDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final C0028b f953a;

    public C0027a(C0028b c0028b) {
        this.f953a = c0028b;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.f953a.a(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
        K.j jVarB = this.f953a.b(view);
        if (jVarB != null) {
            return (AccessibilityNodeProvider) jVarB.f1206c;
        }
        return null;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.f953a.c(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        K.h hVar = new K.h(accessibilityNodeInfo);
        WeakHashMap weakHashMap = Q.f940a;
        accessibilityNodeInfo.setScreenReaderFocusable(Boolean.valueOf(M.d(view)).booleanValue());
        accessibilityNodeInfo.setHeading(Boolean.valueOf(M.c(view)).booleanValue());
        accessibilityNodeInfo.setPaneTitle(M.b(view));
        K.d.c(accessibilityNodeInfo, O.b(view));
        this.f953a.d(view, hVar);
        accessibilityNodeInfo.getText();
        List listEmptyList = (List) view.getTag(R.id.tag_accessibility_actions);
        if (listEmptyList == null) {
            listEmptyList = Collections.emptyList();
        }
        for (int i5 = 0; i5 < listEmptyList.size(); i5++) {
            hVar.b((K.c) listEmptyList.get(i5));
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.f953a.e(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f953a.f(viewGroup, view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean performAccessibilityAction(View view, int i5, Bundle bundle) {
        return this.f953a.g(view, i5, bundle);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void sendAccessibilityEvent(View view, int i5) {
        this.f953a.h(view, i5);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.f953a.i(view, accessibilityEvent);
    }
}
