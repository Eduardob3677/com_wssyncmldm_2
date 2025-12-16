package S1;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import androidx.picker.widget.D;

/* loaded from: classes.dex */
public final class q extends View.AccessibilityDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2528a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2529b;

    public /* synthetic */ q(int i5, Object obj) {
        this.f2528a = i5;
        this.f2529b = obj;
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        switch (this.f2528a) {
            case 0:
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                EditText editText = ((r) this.f2529b).f2538h.getEditText();
                if (editText != null) {
                    accessibilityNodeInfo.setLabeledBy(editText);
                    break;
                }
                break;
            default:
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                break;
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean performAccessibilityAction(View view, int i5, Bundle bundle) {
        switch (this.f2528a) {
            case 1:
                if (i5 == 16) {
                    D d2 = (D) this.f2529b;
                    d2.f4147e.selectAll();
                    d2.x();
                }
                break;
        }
        return super.performAccessibilityAction(view, i5, bundle);
    }
}
