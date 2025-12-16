package J;

import android.graphics.Rect;
import android.graphics.Region;
import android.util.ArrayMap;
import android.util.Log;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: J.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0050y extends TouchDelegate {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f1022c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f1023a;

    /* renamed from: b, reason: collision with root package name */
    public final View f1024b;

    public C0050y(View view) {
        super(new Rect(), view);
        this.f1023a = new HashSet();
        this.f1024b = view;
    }

    public static Rect b(View view, View view2) {
        Rect rect = new Rect(0, 0, view2.getWidth(), view2.getHeight());
        Rect rect2 = new Rect();
        while (!view2.equals(view)) {
            view2.getHitRect(rect2);
            rect.left += rect2.left;
            rect.right += rect2.left;
            rect.top += rect2.top;
            rect.bottom += rect2.top;
            Object parent = view2.getParent();
            if (!(parent instanceof View)) {
                break;
            }
            view2 = (View) parent;
        }
        if (view2.equals(view)) {
            return rect;
        }
        throw new C0049x("TouchTargetDelegate's delegateView must be child of anchorView");
    }

    public final void a(View view, C0048w c0048w) {
        try {
            Rect rectB = b(this.f1024b, view);
            if (c0048w != null) {
                rectB.left -= c0048w.f1020c;
                rectB.top -= c0048w.f1018a;
                rectB.right += c0048w.f1021d;
                rectB.bottom += c0048w.f1019b;
            }
            this.f1023a.add(new C0047v(rectB, view));
        } catch (C0049x e5) {
            Log.w("SeslTouchTargetDelegate", "delegateView must be child of anchorView");
            e5.printStackTrace();
        }
    }

    @Override // android.view.TouchDelegate
    public final AccessibilityNodeInfo.TouchDelegateInfo getTouchDelegateInfo() {
        Log.i("SeslTouchTargetDelegate", "SeslTouchTargetDelegate does not support accessibility because it cannot support multi-touch delegation with AOSP View");
        ArrayMap arrayMap = new ArrayMap(1);
        arrayMap.put(new Region(), this.f1024b);
        return new AccessibilityNodeInfo.TouchDelegateInfo(arrayMap);
    }

    @Override // android.view.TouchDelegate
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        Iterator it = this.f1023a.iterator();
        while (it.hasNext()) {
            C0047v c0047v = (C0047v) it.next();
            if (c0047v.f1016a.getParent() == null) {
                Log.w("SeslTouchTargetDelegate", "delegate view(" + c0047v.f1016a + ")'s getParent() is null");
            } else if (c0047v.onTouchEvent(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.TouchDelegate
    public final boolean onTouchExplorationHoverEvent(MotionEvent motionEvent) {
        Log.i("SeslTouchTargetDelegate", "SeslTouchTargetDelegate does not support accessibility because it cannot support multi-touch delegation with AOSP View");
        return false;
    }
}
