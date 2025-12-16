package Q2;

import com.samsung.android.knox.custom.CustomDeviceManager;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import h3.C0447c;

/* loaded from: classes.dex */
public final class b implements Comparable {
    public static final b f = new b(8, 22);

    /* renamed from: c, reason: collision with root package name */
    public final int f2209c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2210d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2211e;

    public b(int i5, int i6) {
        this.f2209c = i5;
        this.f2210d = i6;
        if (new C0447c(0, CustomDeviceManager.CALL_SCREEN_ALL, 1).l(1) && new C0447c(0, CustomDeviceManager.CALL_SCREEN_ALL, 1).l(i5) && new C0447c(0, CustomDeviceManager.CALL_SCREEN_ALL, 1).l(i6)) {
            this.f2211e = NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID + (i5 << 8) + i6;
            return;
        }
        throw new IllegalArgumentException(("Version components are out of range: 1." + i5 + '.' + i6).toString());
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        b bVar = (b) obj;
        d3.i.e("other", bVar);
        return this.f2211e - bVar.f2211e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        b bVar = obj instanceof b ? (b) obj : null;
        return bVar != null && this.f2211e == bVar.f2211e;
    }

    public final int hashCode() {
        return this.f2211e;
    }

    public final String toString() {
        return "1." + this.f2209c + '.' + this.f2210d;
    }
}
