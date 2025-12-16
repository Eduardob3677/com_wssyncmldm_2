package K0;

import com.samsung.android.knox.ex.KnoxContract;
import com.samsung.android.lib.episode.EternalContract;

/* loaded from: classes.dex */
public final class b implements e2.d {

    /* renamed from: a, reason: collision with root package name */
    public static final b f1207a = new b();

    /* renamed from: b, reason: collision with root package name */
    public static final e2.c f1208b = e2.c.a("sdkVersion");

    /* renamed from: c, reason: collision with root package name */
    public static final e2.c f1209c = e2.c.a("model");

    /* renamed from: d, reason: collision with root package name */
    public static final e2.c f1210d = e2.c.a("hardware");

    /* renamed from: e, reason: collision with root package name */
    public static final e2.c f1211e = e2.c.a(KnoxContract.Config.Device.ID);
    public static final e2.c f = e2.c.a("product");

    /* renamed from: g, reason: collision with root package name */
    public static final e2.c f1212g = e2.c.a("osBuild");

    /* renamed from: h, reason: collision with root package name */
    public static final e2.c f1213h = e2.c.a(EternalContract.EXTRA_MANUFACTURER);

    /* renamed from: i, reason: collision with root package name */
    public static final e2.c f1214i = e2.c.a("fingerprint");

    /* renamed from: j, reason: collision with root package name */
    public static final e2.c f1215j = e2.c.a("locale");

    /* renamed from: k, reason: collision with root package name */
    public static final e2.c f1216k = e2.c.a("country");

    /* renamed from: l, reason: collision with root package name */
    public static final e2.c f1217l = e2.c.a("mccMnc");

    /* renamed from: m, reason: collision with root package name */
    public static final e2.c f1218m = e2.c.a("applicationBuild");

    @Override // e2.InterfaceC0415a
    public final void a(Object obj, Object obj2) {
        e2.e eVar = (e2.e) obj2;
        h hVar = (h) ((a) obj);
        eVar.e(f1208b, hVar.f1241a);
        eVar.e(f1209c, hVar.f1242b);
        eVar.e(f1210d, hVar.f1243c);
        eVar.e(f1211e, hVar.f1244d);
        eVar.e(f, hVar.f1245e);
        eVar.e(f1212g, hVar.f);
        eVar.e(f1213h, hVar.f1246g);
        eVar.e(f1214i, hVar.f1247h);
        eVar.e(f1215j, hVar.f1248i);
        eVar.e(f1216k, hVar.f1249j);
        eVar.e(f1217l, hVar.f1250k);
        eVar.e(f1218m, hVar.f1251l);
    }
}
