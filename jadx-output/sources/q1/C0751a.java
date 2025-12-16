package q1;

import com.samsung.android.knox.ex.KnoxContract;
import com.samsung.android.knox.ucm.core.UniversalCredentialUtil;
import java.util.Collections;
import java.util.HashMap;
import r2.C0771d;

/* renamed from: q1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0751a implements e2.d {

    /* renamed from: a, reason: collision with root package name */
    public static final C0751a f8600a = new C0751a();

    /* renamed from: b, reason: collision with root package name */
    public static final e2.c f8601b;

    /* renamed from: c, reason: collision with root package name */
    public static final e2.c f8602c;

    /* renamed from: d, reason: collision with root package name */
    public static final e2.c f8603d;

    /* renamed from: e, reason: collision with root package name */
    public static final e2.c f8604e;
    public static final e2.c f;

    /* renamed from: g, reason: collision with root package name */
    public static final e2.c f8605g;

    /* renamed from: h, reason: collision with root package name */
    public static final e2.c f8606h;

    /* renamed from: i, reason: collision with root package name */
    public static final e2.c f8607i;

    /* renamed from: j, reason: collision with root package name */
    public static final e2.c f8608j;

    /* renamed from: k, reason: collision with root package name */
    public static final e2.c f8609k;

    /* renamed from: l, reason: collision with root package name */
    public static final e2.c f8610l;

    /* renamed from: m, reason: collision with root package name */
    public static final e2.c f8611m;
    public static final e2.c n;

    /* renamed from: o, reason: collision with root package name */
    public static final e2.c f8612o;

    /* renamed from: p, reason: collision with root package name */
    public static final e2.c f8613p;

    static {
        i iVar = new i(1);
        HashMap map = new HashMap();
        map.put(m.class, iVar);
        f8601b = new e2.c("projectNumber", Collections.unmodifiableMap(new HashMap(map)));
        i iVar2 = new i(2);
        HashMap map2 = new HashMap();
        map2.put(m.class, iVar2);
        f8602c = new e2.c("messageId", Collections.unmodifiableMap(new HashMap(map2)));
        i iVar3 = new i(3);
        HashMap map3 = new HashMap();
        map3.put(m.class, iVar3);
        f8603d = new e2.c("instanceId", Collections.unmodifiableMap(new HashMap(map3)));
        i iVar4 = new i(4);
        HashMap map4 = new HashMap();
        map4.put(m.class, iVar4);
        f8604e = new e2.c("messageType", Collections.unmodifiableMap(new HashMap(map4)));
        i iVar5 = new i(5);
        HashMap map5 = new HashMap();
        map5.put(m.class, iVar5);
        f = new e2.c("sdkPlatform", Collections.unmodifiableMap(new HashMap(map5)));
        i iVar6 = new i(6);
        HashMap map6 = new HashMap();
        map6.put(m.class, iVar6);
        f8605g = new e2.c(UniversalCredentialUtil.AGENT_PACKAGENAME, Collections.unmodifiableMap(new HashMap(map6)));
        i iVar7 = new i(7);
        HashMap map7 = new HashMap();
        map7.put(m.class, iVar7);
        f8606h = new e2.c("collapseKey", Collections.unmodifiableMap(new HashMap(map7)));
        i iVar8 = new i(8);
        HashMap map8 = new HashMap();
        map8.put(m.class, iVar8);
        f8607i = new e2.c("priority", Collections.unmodifiableMap(new HashMap(map8)));
        i iVar9 = new i(9);
        HashMap map9 = new HashMap();
        map9.put(m.class, iVar9);
        f8608j = new e2.c("ttl", Collections.unmodifiableMap(new HashMap(map9)));
        i iVar10 = new i(10);
        HashMap map10 = new HashMap();
        map10.put(m.class, iVar10);
        f8609k = new e2.c("topic", Collections.unmodifiableMap(new HashMap(map10)));
        i iVar11 = new i(11);
        HashMap map11 = new HashMap();
        map11.put(m.class, iVar11);
        f8610l = new e2.c("bulkId", Collections.unmodifiableMap(new HashMap(map11)));
        i iVar12 = new i(12);
        HashMap map12 = new HashMap();
        map12.put(m.class, iVar12);
        f8611m = new e2.c(KnoxContract.Config.Settings.PARAM_HWKEY_ACTIVITY_EVENT, Collections.unmodifiableMap(new HashMap(map12)));
        i iVar13 = new i(13);
        HashMap map13 = new HashMap();
        map13.put(m.class, iVar13);
        n = new e2.c("analyticsLabel", Collections.unmodifiableMap(new HashMap(map13)));
        i iVar14 = new i(14);
        HashMap map14 = new HashMap();
        map14.put(m.class, iVar14);
        f8612o = new e2.c("campaignId", Collections.unmodifiableMap(new HashMap(map14)));
        i iVar15 = new i(15);
        HashMap map15 = new HashMap();
        map15.put(m.class, iVar15);
        f8613p = new e2.c("composerLabel", Collections.unmodifiableMap(new HashMap(map15)));
    }

    @Override // e2.InterfaceC0415a
    public final void a(Object obj, Object obj2) {
        C0771d c0771d = (C0771d) obj;
        e2.e eVar = (e2.e) obj2;
        eVar.d(f8601b, c0771d.f8765a);
        eVar.e(f8602c, c0771d.f8766b);
        eVar.e(f8603d, c0771d.f8767c);
        eVar.e(f8604e, c0771d.f8768d);
        eVar.e(f, c0771d.f8769e);
        eVar.e(f8605g, c0771d.f);
        eVar.e(f8606h, c0771d.f8770g);
        eVar.c(f8607i, 0);
        eVar.c(f8608j, c0771d.f8771h);
        eVar.e(f8609k, c0771d.f8772i);
        eVar.d(f8610l, 0L);
        eVar.e(f8611m, c0771d.f8773j);
        eVar.e(n, c0771d.f8774k);
        eVar.d(f8612o, 0L);
        eVar.e(f8613p, c0771d.f8775l);
    }
}
