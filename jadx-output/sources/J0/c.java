package J0;

import K0.e;
import K0.f;
import K0.h;
import K0.i;
import K0.j;
import K0.k;
import K0.l;
import K0.n;
import K0.o;
import K0.q;
import K0.r;
import K0.s;
import K0.t;
import K0.u;
import K0.v;
import M0.g;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.util.SparseArray;
import c1.w;
import com.samsung.android.knox.ex.KnoxContract;
import com.samsung.android.lib.episode.EternalContract;
import g2.d;
import h0.AbstractC0432c;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Calendar;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class c implements g {

    /* renamed from: a, reason: collision with root package name */
    public final w f1036a;

    /* renamed from: b, reason: collision with root package name */
    public final ConnectivityManager f1037b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f1038c;

    /* renamed from: d, reason: collision with root package name */
    public final URL f1039d;

    /* renamed from: e, reason: collision with root package name */
    public final T0.b f1040e;
    public final T0.b f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1041g;

    public c(Context context, T0.b bVar, T0.b bVar2) {
        d dVar = new d();
        K0.c cVar = K0.c.f1219a;
        dVar.a(o.class, cVar);
        dVar.a(i.class, cVar);
        f fVar = f.f1231a;
        dVar.a(s.class, fVar);
        dVar.a(l.class, fVar);
        K0.d dVar2 = K0.d.f1221a;
        dVar.a(q.class, dVar2);
        dVar.a(j.class, dVar2);
        K0.b bVar3 = K0.b.f1207a;
        dVar.a(K0.a.class, bVar3);
        dVar.a(h.class, bVar3);
        e eVar = e.f1224a;
        dVar.a(r.class, eVar);
        dVar.a(k.class, eVar);
        K0.g gVar = K0.g.f1238a;
        dVar.a(v.class, gVar);
        dVar.a(n.class, gVar);
        dVar.f6926d = true;
        this.f1036a = new w(dVar);
        this.f1038c = context;
        this.f1037b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f1039d = b(a.f1028c);
        this.f1040e = bVar2;
        this.f = bVar;
        this.f1041g = 40000;
    }

    public static URL b(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e5) {
            throw new IllegalArgumentException(AbstractC0432c.i("Invalid url: ", str), e5);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final L0.a a(L0.a aVar) {
        int type;
        int subtype;
        Map map;
        NetworkInfo activeNetworkInfo = this.f1037b.getActiveNetworkInfo();
        J3.d dVarC = aVar.c();
        int i5 = Build.VERSION.SDK_INT;
        Map map2 = (Map) dVarC.f1148h;
        if (map2 == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        map2.put("sdk-version", String.valueOf(i5));
        dVarC.c("model", Build.MODEL);
        dVarC.c("hardware", Build.HARDWARE);
        dVarC.c(KnoxContract.Config.Device.ID, Build.DEVICE);
        dVarC.c("product", Build.PRODUCT);
        dVarC.c("os-uild", Build.ID);
        dVarC.c(EternalContract.EXTRA_MANUFACTURER, Build.MANUFACTURER);
        dVarC.c("fingerprint", Build.FINGERPRINT);
        Calendar.getInstance();
        long offset = TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
        Map map3 = (Map) dVarC.f1148h;
        if (map3 == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        map3.put("tz-offset", String.valueOf(offset));
        int i6 = -1;
        if (activeNetworkInfo == null) {
            SparseArray sparseArray = u.f1274c;
            type = -1;
        } else {
            type = activeNetworkInfo.getType();
        }
        Map map4 = (Map) dVarC.f1148h;
        if (map4 == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        map4.put("net-type", String.valueOf(type));
        if (activeNetworkInfo != null) {
            subtype = activeNetworkInfo.getSubtype();
            if (subtype == -1) {
                SparseArray sparseArray2 = t.f1272c;
                subtype = 100;
            } else if (((t) t.f1272c.get(subtype)) == null) {
            }
            map = (Map) dVarC.f1148h;
            if (map != null) {
                throw new IllegalStateException("Property \"autoMetadata\" has not been set");
            }
            map.put("mobile-subtype", String.valueOf(subtype));
            dVarC.c("country", Locale.getDefault().getCountry());
            dVarC.c("locale", Locale.getDefault().getLanguage());
            Context context = this.f1038c;
            dVarC.c("mcc_mnc", ((TelephonyManager) context.getSystemService(EternalContract.DEVICE_TYPE_PHONE)).getSimOperator());
            try {
                i6 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException e5) {
                Log.e("TransportRuntime.".concat("CctTransportBackend"), "Unable to find version code for package", e5);
            }
            dVarC.c("application_build", Integer.toString(i6));
            return dVarC.d();
        }
        SparseArray sparseArray3 = t.f1272c;
        subtype = 0;
        map = (Map) dVarC.f1148h;
        if (map != null) {
        }
    }
}
