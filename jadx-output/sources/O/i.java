package O;

import J.C0028b;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ScrollView;
import androidx.core.widget.NestedScrollView;

/* loaded from: classes.dex */
public final class i extends C0028b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1936d;

    public /* synthetic */ i(int i5) {
        this.f1936d = i5;
    }

    @Override // J.C0028b
    public void c(View view, AccessibilityEvent accessibilityEvent) {
        switch (this.f1936d) {
            case 0:
                super.c(view, accessibilityEvent);
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                accessibilityEvent.setClassName(ScrollView.class.getName());
                accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
                accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
                accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
                accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
                accessibilityEvent.setMaxScrollY(nestedScrollView.getScrollRange());
                break;
            default:
                super.c(view, accessibilityEvent);
                break;
        }
    }

    @Override // J.C0028b
    public final void d(View view, K.h hVar) {
        int scrollRange;
        switch (this.f1936d) {
            case 0:
                this.f956a.onInitializeAccessibilityNodeInfo(view, hVar.f1201a);
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                hVar.g(ScrollView.class.getName());
                if (nestedScrollView.isEnabled() && (scrollRange = nestedScrollView.getScrollRange()) > 0) {
                    hVar.i(true);
                    if (nestedScrollView.getScrollY() > 0) {
                        hVar.b(K.c.f1190g);
                        hVar.b(K.c.f1194k);
                    }
                    if (nestedScrollView.getScrollY() < scrollRange) {
                        hVar.b(K.c.f);
                        hVar.b(K.c.f1195l);
                        break;
                    }
                }
                break;
            case 1:
                View.AccessibilityDelegate accessibilityDelegate = this.f956a;
                AccessibilityNodeInfo accessibilityNodeInfo = hVar.f1201a;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setCollectionInfo(null);
                break;
            case 2:
                this.f956a.onInitializeAccessibilityNodeInfo(view, hVar.f1201a);
                hVar.i(false);
                break;
            default:
                View.AccessibilityDelegate accessibilityDelegate2 = this.f956a;
                AccessibilityNodeInfo accessibilityNodeInfo2 = hVar.f1201a;
                accessibilityDelegate2.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo2);
                accessibilityNodeInfo2.setCollectionInfo(null);
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x006b  */
    @Override // J.C0028b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean g(View view, int i5, Bundle bundle) {
        switch (this.f1936d) {
            case 0:
                if (super.g(view, i5, bundle)) {
                    return true;
                }
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                if (nestedScrollView.isEnabled()) {
                    int height = nestedScrollView.getHeight();
                    Rect rect = new Rect();
                    if (nestedScrollView.getMatrix().isIdentity() && nestedScrollView.getGlobalVisibleRect(rect)) {
                        height = rect.height();
                    }
                    if (i5 == 4096) {
                        int iMin = Math.min(nestedScrollView.getScrollY() + ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
                        if (iMin != nestedScrollView.getScrollY()) {
                            nestedScrollView.scrollTo(0, iMin);
                            return true;
                        }
                    } else if (i5 == 8192 || i5 == 16908344) {
                        int iMax = Math.max(nestedScrollView.getScrollY() - ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                        if (iMax != nestedScrollView.getScrollY()) {
                            nestedScrollView.scrollTo(0, iMax);
                            return true;
                        }
                    } else if (i5 == 16908346) {
                    }
                }
                return false;
            default:
                return super.g(view, i5, bundle);
        }
    }
}
