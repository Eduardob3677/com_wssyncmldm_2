package S;

import J.Q;
import K.h;
import K.j;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class a extends j {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ b f2426e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(b bVar) {
        super(0);
        this.f2426e = bVar;
    }

    @Override // K.j
    public final h a(int i5) {
        return new h(AccessibilityNodeInfo.obtain(this.f2426e.r(i5).f1201a));
    }

    @Override // K.j
    public final h b(int i5) {
        b bVar = this.f2426e;
        int i6 = i5 == 2 ? bVar.f2435k : bVar.f2436l;
        if (i6 == Integer.MIN_VALUE) {
            return null;
        }
        return a(i6);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002c  */
    @Override // K.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean c(int i5, int i6, Bundle bundle) {
        int i7;
        b bVar = this.f2426e;
        View view = bVar.f2433i;
        if (i5 == -1) {
            WeakHashMap weakHashMap = Q.f940a;
            return view.performAccessibilityAction(i6, bundle);
        }
        boolean z4 = true;
        if (i6 == 1) {
            return bVar.x(i5);
        }
        if (i6 == 2) {
            return bVar.j(i5);
        }
        if (i6 == 64) {
            AccessibilityManager accessibilityManager = bVar.f2432h;
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled() && (i7 = bVar.f2435k) != i5) {
                if (i7 != Integer.MIN_VALUE) {
                    bVar.f2435k = Integer.MIN_VALUE;
                    bVar.f2433i.invalidate();
                    bVar.y(i7, NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID);
                }
                bVar.f2435k = i5;
                view.invalidate();
                bVar.y(i5, NetworkAnalyticsConstants.DataPoints.FLAG_UID);
            }
        } else {
            if (i6 != 128) {
                return bVar.s(i5, i6);
            }
            if (bVar.f2435k == i5) {
                bVar.f2435k = Integer.MIN_VALUE;
                view.invalidate();
                bVar.y(i5, NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID);
            } else {
                z4 = false;
            }
        }
        return z4;
    }
}
