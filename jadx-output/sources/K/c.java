package K;

import android.R;
import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;
import com.idm.agent.dm.IDMDmInterface;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: e, reason: collision with root package name */
    public static final c f1189e;
    public static final c f;

    /* renamed from: g, reason: collision with root package name */
    public static final c f1190g;

    /* renamed from: h, reason: collision with root package name */
    public static final c f1191h;

    /* renamed from: i, reason: collision with root package name */
    public static final c f1192i;

    /* renamed from: j, reason: collision with root package name */
    public static final c f1193j;

    /* renamed from: k, reason: collision with root package name */
    public static final c f1194k;

    /* renamed from: l, reason: collision with root package name */
    public static final c f1195l;

    /* renamed from: a, reason: collision with root package name */
    public final Object f1196a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1197b;

    /* renamed from: c, reason: collision with root package name */
    public final Class f1198c;

    /* renamed from: d, reason: collision with root package name */
    public final r f1199d;

    static {
        new c(1);
        new c(2);
        new c(4);
        new c(8);
        f1189e = new c(16);
        new c(32);
        new c(64);
        new c(128);
        new c(256, k.class);
        new c(512, k.class);
        new c(1024, l.class);
        new c(2048, l.class);
        f = new c(4096);
        f1190g = new c(8192);
        new c(NetworkAnalyticsConstants.DataPoints.FLAG_SOURCE_PORT);
        new c(NetworkAnalyticsConstants.DataPoints.FLAG_UID);
        new c(NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID);
        new c(NetworkAnalyticsConstants.DataPoints.FLAG_PPID, p.class);
        f1191h = new c(NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH);
        f1192i = new c(NetworkAnalyticsConstants.DataPoints.FLAG_INTERFACE_NAME);
        f1193j = new c(IDMDmInterface.IDM_MAX_OBJ_SIZE);
        new c(2097152, q.class);
        int i5 = Build.VERSION.SDK_INT;
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, R.id.accessibilityActionShowOnScreen, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, R.id.accessibilityActionScrollToPosition, null, null, n.class);
        f1194k = new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, R.id.accessibilityActionScrollUp, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, R.id.accessibilityActionScrollLeft, null, null, null);
        f1195l = new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, R.id.accessibilityActionScrollDown, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, R.id.accessibilityActionScrollRight, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP, R.id.accessibilityActionPageUp, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN, R.id.accessibilityActionPageDown, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT, R.id.accessibilityActionPageLeft, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT, R.id.accessibilityActionPageRight, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, R.id.accessibilityActionContextClick, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS, R.id.accessibilityActionSetProgress, null, null, o.class);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW, R.id.accessibilityActionMoveWindow, null, null, m.class);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP, R.id.accessibilityActionShowTooltip, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP, R.id.accessibilityActionHideTooltip, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD, R.id.accessibilityActionPressAndHold, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER, R.id.accessibilityActionImeEnter, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START, R.id.accessibilityActionDragStart, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP, R.id.accessibilityActionDragDrop, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL, R.id.accessibilityActionDragCancel, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS, R.id.accessibilityActionShowTextSuggestions, null, null, null);
        new c(i5 >= 34 ? f.a() : null, R.id.accessibilityActionScrollInDirection, null, null, null);
    }

    public c(int i5) {
        this(null, i5, null, null, null);
    }

    public final int a() {
        return ((AccessibilityNodeInfo.AccessibilityAction) this.f1196a).getId();
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        Object obj2 = ((c) obj).f1196a;
        Object obj3 = this.f1196a;
        return obj3 == null ? obj2 == null : obj3.equals(obj2);
    }

    public final int hashCode() {
        Object obj = this.f1196a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AccessibilityActionCompat: ");
        String strD = h.d(this.f1197b);
        if (strD.equals("ACTION_UNKNOWN")) {
            Object obj = this.f1196a;
            if (((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel() != null) {
                strD = ((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel().toString();
            }
        }
        sb.append(strD);
        return sb.toString();
    }

    public c(int i5, Class cls) {
        this(null, i5, null, null, cls);
    }

    public c(Object obj, int i5, String str, r rVar, Class cls) {
        this.f1197b = i5;
        this.f1199d = rVar;
        if (obj == null) {
            this.f1196a = new AccessibilityNodeInfo.AccessibilityAction(i5, str);
        } else {
            this.f1196a = obj;
        }
        this.f1198c = cls;
    }
}
