package e;

import J.r0;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationManager;
import android.os.PowerManager;
import android.util.Log;
import com.google.android.gms.internal.p000firebaseauthapi.O3;
import java.util.Calendar;
import z.AbstractC0936d;

/* loaded from: classes.dex */
public final class z extends O3 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6799c = 1;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C f6800d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f6801e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(C c2, r0 r0Var) {
        super(c2);
        this.f6800d = c2;
        this.f6801e = r0Var;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.O3
    public final IntentFilter e() {
        switch (this.f6799c) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            default:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.TIME_SET");
                intentFilter2.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter2.addAction("android.intent.action.TIME_TICK");
                return intentFilter2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    @Override // com.google.android.gms.internal.p000firebaseauthapi.O3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int f() {
        Location location;
        boolean z4;
        long j3;
        Location lastKnownLocation;
        switch (this.f6799c) {
            case 0:
                return ((PowerManager) this.f6801e).isPowerSaveMode() ? 2 : 1;
            default:
                r0 r0Var = (r0) this.f6801e;
                N n = (N) r0Var.f1008e;
                if (n == null || n.f6675b <= System.currentTimeMillis()) {
                    Context context = (Context) r0Var.f1006c;
                    int iA = AbstractC0936d.a(context, "android.permission.ACCESS_COARSE_LOCATION");
                    Location lastKnownLocation2 = null;
                    LocationManager locationManager = (LocationManager) r0Var.f1007d;
                    if (iA != 0) {
                        location = null;
                    } else if (locationManager == null) {
                        lastKnownLocation = null;
                        location = lastKnownLocation;
                    } else {
                        try {
                            if (locationManager.isProviderEnabled("network")) {
                                lastKnownLocation = locationManager.getLastKnownLocation("network");
                            }
                        } catch (Exception e5) {
                            Log.d("TwilightManager", "Failed to get last known location", e5);
                        }
                        location = lastKnownLocation;
                    }
                    if (AbstractC0936d.a(context, "android.permission.ACCESS_FINE_LOCATION") == 0 && locationManager != null) {
                        try {
                            if (locationManager.isProviderEnabled("gps")) {
                                lastKnownLocation2 = locationManager.getLastKnownLocation("gps");
                            }
                        } catch (Exception e6) {
                            Log.d("TwilightManager", "Failed to get last known location", e6);
                        }
                    }
                    if (lastKnownLocation2 == null || location == null ? lastKnownLocation2 != null : lastKnownLocation2.getTime() > location.getTime()) {
                        location = lastKnownLocation2;
                    }
                    if (location != null) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (M.f6670d == null) {
                            M.f6670d = new M();
                        }
                        M m5 = M.f6670d;
                        m5.a(location.getLatitude(), location.getLongitude(), jCurrentTimeMillis - 86400000);
                        m5.a(location.getLatitude(), location.getLongitude(), jCurrentTimeMillis);
                        z4 = m5.f6673c == 1;
                        long j5 = m5.f6672b;
                        long j6 = m5.f6671a;
                        m5.a(location.getLatitude(), location.getLongitude(), 86400000 + jCurrentTimeMillis);
                        long j7 = m5.f6672b;
                        if (j5 == -1 || j6 == -1) {
                            j3 = jCurrentTimeMillis + 43200000;
                        } else {
                            if (jCurrentTimeMillis <= j6) {
                                j7 = jCurrentTimeMillis > j5 ? j6 : j5;
                            }
                            j3 = j7 + 60000;
                        }
                        n.f6674a = z4;
                        n.f6675b = j3;
                    } else {
                        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                        int i5 = Calendar.getInstance().get(11);
                        if (i5 < 6 || i5 >= 22) {
                            z4 = true;
                        }
                    }
                } else {
                    z4 = n.f6674a;
                }
                return z4 ? 2 : 1;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.O3
    public final void h() throws PackageManager.NameNotFoundException {
        switch (this.f6799c) {
            case 0:
                this.f6800d.p(true);
                break;
            default:
                this.f6800d.p(true);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(C c2, Context context) {
        super(c2);
        this.f6800d = c2;
        this.f6801e = (PowerManager) context.getApplicationContext().getSystemService("power");
    }
}
