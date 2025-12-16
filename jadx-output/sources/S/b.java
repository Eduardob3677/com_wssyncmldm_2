package S;

import J.C0028b;
import J.Q;
import K.h;
import K.j;
import P1.e;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;
import o.C0723l;

/* loaded from: classes.dex */
public abstract class b extends C0028b {
    public static final Rect n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: o, reason: collision with root package name */
    public static final e4.d f2427o = new e4.d(4);

    /* renamed from: p, reason: collision with root package name */
    public static final e f2428p = new e(5);

    /* renamed from: h, reason: collision with root package name */
    public final AccessibilityManager f2432h;

    /* renamed from: i, reason: collision with root package name */
    public final View f2433i;

    /* renamed from: j, reason: collision with root package name */
    public a f2434j;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f2429d = new Rect();

    /* renamed from: e, reason: collision with root package name */
    public final Rect f2430e = new Rect();
    public final Rect f = new Rect();

    /* renamed from: g, reason: collision with root package name */
    public final int[] f2431g = new int[2];

    /* renamed from: k, reason: collision with root package name */
    public int f2435k = Integer.MIN_VALUE;

    /* renamed from: l, reason: collision with root package name */
    public int f2436l = Integer.MIN_VALUE;

    /* renamed from: m, reason: collision with root package name */
    public int f2437m = Integer.MIN_VALUE;

    public b(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.f2433i = view;
        this.f2432h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        WeakHashMap weakHashMap = Q.f940a;
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
    }

    @Override // J.C0028b
    public final j b(View view) {
        if (this.f2434j == null) {
            this.f2434j = new a(this);
        }
        return this.f2434j;
    }

    @Override // J.C0028b
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
    }

    @Override // J.C0028b
    public final void d(View view, h hVar) {
        this.f956a.onInitializeAccessibilityNodeInfo(view, hVar.f1201a);
        u(hVar);
    }

    public final boolean j(int i5) {
        if (this.f2436l != i5) {
            return false;
        }
        this.f2436l = Integer.MIN_VALUE;
        w(i5, false);
        y(i5, 8);
        return true;
    }

    public final AccessibilityEvent k(int i5, int i6) {
        View view = this.f2433i;
        if (i5 == -1) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i6);
            view.onInitializeAccessibilityEvent(accessibilityEventObtain);
            return accessibilityEventObtain;
        }
        AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain(i6);
        h hVarR = r(i5);
        accessibilityEventObtain2.getText().add(hVarR.f());
        AccessibilityNodeInfo accessibilityNodeInfo = hVarR.f1201a;
        accessibilityEventObtain2.setContentDescription(accessibilityNodeInfo.getContentDescription());
        accessibilityEventObtain2.setScrollable(accessibilityNodeInfo.isScrollable());
        accessibilityEventObtain2.setPassword(accessibilityNodeInfo.isPassword());
        accessibilityEventObtain2.setEnabled(accessibilityNodeInfo.isEnabled());
        accessibilityEventObtain2.setChecked(accessibilityNodeInfo.isChecked());
        t(i5, accessibilityEventObtain2);
        if (accessibilityEventObtain2.getText().isEmpty() && accessibilityEventObtain2.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityEventObtain2.setClassName(accessibilityNodeInfo.getClassName());
        accessibilityEventObtain2.setSource(view, i5);
        accessibilityEventObtain2.setPackageName(view.getContext().getPackageName());
        return accessibilityEventObtain2;
    }

    public final h l(int i5) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
        h hVar = new h(accessibilityNodeInfoObtain);
        accessibilityNodeInfoObtain.setEnabled(true);
        accessibilityNodeInfoObtain.setFocusable(true);
        hVar.g("android.view.View");
        Rect rect = n;
        accessibilityNodeInfoObtain.setBoundsInParent(rect);
        accessibilityNodeInfoObtain.setBoundsInScreen(rect);
        hVar.f1202b = -1;
        View view = this.f2433i;
        accessibilityNodeInfoObtain.setParent(view);
        v(i5, hVar);
        if (hVar.f() == null && accessibilityNodeInfoObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.f2430e;
        hVar.e(rect2);
        if (rect2.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = accessibilityNodeInfoObtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoObtain.setPackageName(view.getContext().getPackageName());
        hVar.f1203c = i5;
        accessibilityNodeInfoObtain.setSource(view, i5);
        if (this.f2435k == i5) {
            accessibilityNodeInfoObtain.setAccessibilityFocused(true);
            hVar.a(128);
        } else {
            accessibilityNodeInfoObtain.setAccessibilityFocused(false);
            hVar.a(64);
        }
        boolean z4 = this.f2436l == i5;
        if (z4) {
            hVar.a(2);
        } else if (accessibilityNodeInfoObtain.isFocusable()) {
            hVar.a(1);
        }
        accessibilityNodeInfoObtain.setFocused(z4);
        int[] iArr = this.f2431g;
        view.getLocationOnScreen(iArr);
        Rect rect3 = this.f2429d;
        accessibilityNodeInfoObtain.getBoundsInScreen(rect3);
        if (rect3.equals(rect)) {
            hVar.e(rect3);
            if (hVar.f1202b != -1) {
                h hVar2 = new h(AccessibilityNodeInfo.obtain());
                for (int i6 = hVar.f1202b; i6 != -1; i6 = hVar2.f1202b) {
                    hVar2.f1202b = -1;
                    AccessibilityNodeInfo accessibilityNodeInfo = hVar2.f1201a;
                    accessibilityNodeInfo.setParent(view, -1);
                    accessibilityNodeInfo.setBoundsInParent(rect);
                    v(i6, hVar2);
                    hVar2.e(rect2);
                    rect3.offset(rect2.left, rect2.top);
                }
            }
            rect3.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
        }
        Rect rect4 = this.f;
        if (view.getLocalVisibleRect(rect4)) {
            rect4.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
            if (rect3.intersect(rect4)) {
                hVar.f1201a.setBoundsInScreen(rect3);
                if (!rect3.isEmpty() && view.getWindowVisibility() == 0) {
                    Object parent = view.getParent();
                    while (true) {
                        if (parent instanceof View) {
                            View view2 = (View) parent;
                            if (view2.getAlpha() <= 0.0f || view2.getVisibility() != 0) {
                                break;
                            }
                            parent = view2.getParent();
                        } else if (parent != null) {
                            accessibilityNodeInfoObtain.setVisibleToUser(true);
                        }
                    }
                }
            }
        }
        return hVar;
    }

    public final boolean m(MotionEvent motionEvent) {
        int i5;
        AccessibilityManager accessibilityManager = this.f2432h;
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int iN = n(motionEvent.getX(), motionEvent.getY());
            int i6 = this.f2437m;
            if (i6 != iN) {
                this.f2437m = iN;
                y(iN, 128);
                y(i6, 256);
            }
            return iN != Integer.MIN_VALUE;
        }
        if (action != 10 || (i5 = this.f2437m) == Integer.MIN_VALUE) {
            return false;
        }
        if (i5 != Integer.MIN_VALUE) {
            this.f2437m = Integer.MIN_VALUE;
            y(Integer.MIN_VALUE, 128);
            y(i5, 256);
        }
        return true;
    }

    public abstract int n(float f, float f5);

    public abstract void o(ArrayList arrayList);

    public final void p() {
        View view;
        ViewParent parent;
        if (!this.f2432h.isEnabled() || (parent = (view = this.f2433i).getParent()) == null) {
            return;
        }
        AccessibilityEvent accessibilityEventK = k(-1, 2048);
        accessibilityEventK.setContentChangeTypes(1);
        parent.requestSendAccessibilityEvent(view, accessibilityEventK);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean q(int i5, Rect rect) {
        int i6;
        int i7;
        Object obj;
        h hVar;
        int i8;
        int i9;
        int i10;
        ArrayList arrayList = new ArrayList();
        o(arrayList);
        C0723l c0723l = new C0723l();
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            c0723l.e(((Integer) arrayList.get(i11)).intValue(), l(((Integer) arrayList.get(i11)).intValue()));
        }
        int i12 = this.f2436l;
        int i13 = Integer.MIN_VALUE;
        h hVar2 = i12 == Integer.MIN_VALUE ? null : (h) c0723l.c(null, i12);
        e4.d dVar = f2427o;
        e eVar = f2428p;
        View view = this.f2433i;
        if (i5 == 1 || i5 == 2) {
            i6 = 0;
            i7 = -1;
            WeakHashMap weakHashMap = Q.f940a;
            boolean z4 = view.getLayoutDirection() == 1;
            eVar.getClass();
            int i14 = c0723l.f8443e;
            ArrayList arrayList2 = new ArrayList(i14);
            for (int i15 = 0; i15 < i14; i15++) {
                arrayList2.add((h) c0723l.f8442d[i15]);
            }
            Collections.sort(arrayList2, new c(z4, dVar));
            if (i5 == 1) {
                int size = arrayList2.size();
                if (hVar2 != null) {
                    size = arrayList2.indexOf(hVar2);
                }
                int i16 = size - 1;
                if (i16 >= 0) {
                    obj = arrayList2.get(i16);
                }
                hVar = (h) obj;
            } else {
                if (i5 != 2) {
                    throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
                }
                int size2 = arrayList2.size();
                int iLastIndexOf = (hVar2 == null ? -1 : arrayList2.lastIndexOf(hVar2)) + 1;
                obj = iLastIndexOf < size2 ? arrayList2.get(iLastIndexOf) : null;
                hVar = (h) obj;
            }
        } else {
            if (i5 != 17 && i5 != 33 && i5 != 66 && i5 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i17 = this.f2436l;
            if (i17 != Integer.MIN_VALUE) {
                r(i17).e(rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                int width = view.getWidth();
                int height = view.getHeight();
                if (i5 == 17) {
                    i7 = -1;
                    rect2.set(width, 0, width, height);
                } else if (i5 == 33) {
                    i7 = -1;
                    rect2.set(0, height, width, height);
                } else if (i5 == 66) {
                    rect2.set(-1, 0, -1, height);
                    i7 = -1;
                } else {
                    if (i5 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    rect2.set(0, -1, width, -1);
                    i7 = -1;
                }
                Rect rect3 = new Rect(rect2);
                if (i5 != 17) {
                    i6 = 0;
                    rect3.offset(rect2.width() + 1, 0);
                } else if (i5 == 33) {
                    i6 = 0;
                    rect3.offset(0, rect2.height() + 1);
                } else if (i5 == 66) {
                    i6 = 0;
                    rect3.offset(-(rect2.width() + 1), 0);
                } else {
                    if (i5 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    i6 = 0;
                    rect3.offset(0, -(rect2.height() + 1));
                }
                eVar.getClass();
                i9 = c0723l.f8443e;
                Rect rect4 = new Rect();
                hVar = null;
                for (i10 = i6; i10 < i9; i10++) {
                    h hVar3 = (h) c0723l.f8442d[i10];
                    if (hVar3 != hVar2) {
                        dVar.getClass();
                        hVar3.e(rect4);
                        if (W1.a.O(i5, rect2, rect4)) {
                            if (W1.a.O(i5, rect2, rect3) && !W1.a.c(i5, rect2, rect4, rect3)) {
                                if (!W1.a.c(i5, rect2, rect3, rect4)) {
                                    int iZ = W1.a.Z(i5, rect2, rect4);
                                    int iB0 = W1.a.b0(i5, rect2, rect4);
                                    int i18 = (iB0 * iB0) + (iZ * 13 * iZ);
                                    int iZ2 = W1.a.Z(i5, rect2, rect3);
                                    int iB02 = W1.a.b0(i5, rect2, rect3);
                                    if (i18 < (iB02 * iB02) + (iZ2 * 13 * iZ2)) {
                                        rect3.set(rect4);
                                        hVar = hVar3;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            i7 = -1;
            Rect rect32 = new Rect(rect2);
            if (i5 != 17) {
            }
            eVar.getClass();
            i9 = c0723l.f8443e;
            Rect rect42 = new Rect();
            hVar = null;
            while (i10 < i9) {
            }
        }
        h hVar4 = hVar;
        if (hVar4 != null) {
            int i19 = i6;
            while (true) {
                if (i19 >= c0723l.f8443e) {
                    i8 = i7;
                    break;
                }
                if (c0723l.f8442d[i19] == hVar4) {
                    i8 = i19;
                    break;
                }
                i19++;
            }
            i13 = c0723l.f8441c[i8];
        }
        return x(i13);
    }

    public final h r(int i5) {
        if (i5 != -1) {
            return l(i5);
        }
        View view = this.f2433i;
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(view);
        h hVar = new h(accessibilityNodeInfoObtain);
        WeakHashMap weakHashMap = Q.f940a;
        view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoObtain);
        ArrayList arrayList = new ArrayList();
        o(arrayList);
        if (accessibilityNodeInfoObtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            hVar.f1201a.addChild(view, ((Integer) arrayList.get(i6)).intValue());
        }
        return hVar;
    }

    public abstract boolean s(int i5, int i6);

    public void t(int i5, AccessibilityEvent accessibilityEvent) {
    }

    public void u(h hVar) {
    }

    public abstract void v(int i5, h hVar);

    public void w(int i5, boolean z4) {
    }

    public final boolean x(int i5) {
        int i6;
        View view = this.f2433i;
        if ((!view.isFocused() && !view.requestFocus()) || (i6 = this.f2436l) == i5) {
            return false;
        }
        if (i6 != Integer.MIN_VALUE) {
            j(i6);
        }
        if (i5 == Integer.MIN_VALUE) {
            return false;
        }
        this.f2436l = i5;
        w(i5, true);
        y(i5, 8);
        return true;
    }

    public final void y(int i5, int i6) {
        View view;
        ViewParent parent;
        if (i5 == Integer.MIN_VALUE || !this.f2432h.isEnabled() || (parent = (view = this.f2433i).getParent()) == null) {
            return;
        }
        parent.requestSendAccessibilityEvent(view, k(i5, i6));
    }
}
