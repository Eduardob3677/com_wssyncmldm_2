package J;

import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.wssyncmldm.R;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class Q {

    /* renamed from: a, reason: collision with root package name */
    public static WeakHashMap f940a;

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f941b = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};

    /* renamed from: c, reason: collision with root package name */
    public static final E f942c = new E();

    public static a0 a(View view) {
        if (f940a == null) {
            f940a = new WeakHashMap();
        }
        a0 a0Var = (a0) f940a.get(view);
        if (a0Var != null) {
            return a0Var;
        }
        a0 a0Var2 = new a0(view);
        f940a.put(view, a0Var2);
        return a0Var2;
    }

    public static q0 b(View view, q0 q0Var) {
        WindowInsets windowInsetsE = q0Var.e();
        if (windowInsetsE != null) {
            WindowInsets windowInsetsA = G.a(view, windowInsetsE);
            if (!windowInsetsA.equals(windowInsetsE)) {
                return q0.f(windowInsetsA, view);
            }
        }
        return q0Var;
    }

    public static ArrayList c(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(R.id.tag_accessibility_actions, arrayList2);
        return arrayList2;
    }

    public static void d(int i5, View view) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z4 = M.b(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (view.getAccessibilityLiveRegion() != 0 || z4) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z4 ? 32 : 2048);
                accessibilityEventObtain.setContentChangeTypes(i5);
                if (z4) {
                    accessibilityEventObtain.getText().add(M.b(view));
                    if (view.getImportantForAccessibility() == 0) {
                        view.setImportantForAccessibility(1);
                    }
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i5 != 32) {
                if (view.getParent() != null) {
                    try {
                        view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i5);
                        return;
                    } catch (AbstractMethodError e5) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e5);
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
            accessibilityEventObtain2.setEventType(32);
            accessibilityEventObtain2.setContentChangeTypes(i5);
            accessibilityEventObtain2.setSource(view);
            view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
            accessibilityEventObtain2.getText().add(M.b(view));
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
        }
    }

    public static q0 e(View view, q0 q0Var) {
        WindowInsets windowInsetsE = q0Var.e();
        if (windowInsetsE != null) {
            WindowInsets windowInsetsB = G.b(view, windowInsetsE);
            if (!windowInsetsB.equals(windowInsetsE)) {
                return q0.f(windowInsetsB, view);
            }
        }
        return q0Var;
    }

    public static void f(int i5, View view) {
        ArrayList arrayListC = c(view);
        for (int i6 = 0; i6 < arrayListC.size(); i6++) {
            if (((K.c) arrayListC.get(i6)).a() == i5) {
                arrayListC.remove(i6);
                return;
            }
        }
    }

    public static void g(View view, K.c cVar, K.r rVar) {
        if (rVar == null) {
            f(cVar.a(), view);
            d(0, view);
            return;
        }
        K.c cVar2 = new K.c(null, cVar.f1197b, null, rVar, cVar.f1198c);
        View.AccessibilityDelegate accessibilityDelegateA = N.a(view);
        C0028b c0028b = accessibilityDelegateA == null ? null : accessibilityDelegateA instanceof C0027a ? ((C0027a) accessibilityDelegateA).f953a : new C0028b(accessibilityDelegateA);
        if (c0028b == null) {
            c0028b = new C0028b();
        }
        h(view, c0028b);
        f(cVar2.a(), view);
        c(view).add(cVar2);
        d(0, view);
    }

    public static void h(View view, C0028b c0028b) {
        if (c0028b == null && (N.a(view) instanceof C0027a)) {
            c0028b = new C0028b();
        }
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
        view.setAccessibilityDelegate(c0028b == null ? null : c0028b.f957b);
    }

    public static void i(View view, CharSequence charSequence) {
        new D(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28, 0).e(view, charSequence);
        E e5 = f942c;
        if (charSequence == null) {
            e5.f934c.remove(view);
            view.removeOnAttachStateChangeListener(e5);
            view.getViewTreeObserver().removeOnGlobalLayoutListener(e5);
        } else {
            e5.f934c.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(e5);
            if (view.isAttachedToWindow()) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(e5);
            }
        }
    }
}
