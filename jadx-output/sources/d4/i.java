package d4;

import R3.C0087i;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import f1.AbstractC0420a;
import h4.C0459l;
import java.util.List;
import java.util.Set;
import r3.InterfaceC0775C;
import r3.InterfaceC0776D;
import r3.InterfaceC0802e;
import r3.InterfaceC0821x;
import s2.C0837c;
import t3.C0857a;
import t3.InterfaceC0858b;
import t3.InterfaceC0860d;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final g4.o f6529a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0821x f6530b;

    /* renamed from: c, reason: collision with root package name */
    public final j f6531c;

    /* renamed from: d, reason: collision with root package name */
    public final e f6532d;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC0396a f6533e;
    public final InterfaceC0776D f;

    /* renamed from: g, reason: collision with root package name */
    public final j f6534g;

    /* renamed from: h, reason: collision with root package name */
    public final k f6535h;

    /* renamed from: i, reason: collision with root package name */
    public final z3.a f6536i;

    /* renamed from: j, reason: collision with root package name */
    public final l f6537j;

    /* renamed from: k, reason: collision with root package name */
    public final Iterable f6538k;

    /* renamed from: l, reason: collision with root package name */
    public final com.google.firebase.messaging.p f6539l;

    /* renamed from: m, reason: collision with root package name */
    public final j f6540m;
    public final InterfaceC0858b n;

    /* renamed from: o, reason: collision with root package name */
    public final InterfaceC0860d f6541o;

    /* renamed from: p, reason: collision with root package name */
    public final C0087i f6542p;

    /* renamed from: q, reason: collision with root package name */
    public final i4.k f6543q;

    /* renamed from: r, reason: collision with root package name */
    public final C0857a f6544r;

    /* renamed from: s, reason: collision with root package name */
    public final List f6545s;

    /* renamed from: t, reason: collision with root package name */
    public final g f6546t;

    public i(g4.o oVar, InterfaceC0821x interfaceC0821x, e eVar, InterfaceC0396a interfaceC0396a, InterfaceC0776D interfaceC0776D, k kVar, l lVar, Iterable iterable, com.google.firebase.messaging.p pVar, InterfaceC0858b interfaceC0858b, InterfaceC0860d interfaceC0860d, C0087i c0087i, i4.l lVar2, e4.d dVar, List list, int i5) {
        i4.l lVar3;
        j jVar = j.f6547b;
        j jVar2 = j.f6549d;
        z3.a aVar = z3.a.f9728a;
        j jVar3 = h.f6528a;
        if ((i5 & NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID) != 0) {
            i4.k.f7186b.getClass();
            lVar3 = i4.j.f7185b;
        } else {
            lVar3 = lVar2;
        }
        C0857a c0857a = C0857a.f9140e;
        List listV = (i5 & NetworkAnalyticsConstants.DataPoints.FLAG_INTERFACE_NAME) != 0 ? AbstractC0420a.V(C0459l.f7063a) : list;
        d3.i.e("storageManager", oVar);
        d3.i.e("moduleDescriptor", interfaceC0821x);
        d3.i.e("fictitiousClassDescriptorFactories", iterable);
        d3.i.e("additionalClassPartsProvider", interfaceC0858b);
        d3.i.e("platformDependentDeclarationFilter", interfaceC0860d);
        d3.i.e("extensionRegistryLite", c0087i);
        d3.i.e("kotlinTypeChecker", lVar3);
        d3.i.e("typeAttributeTranslators", listV);
        this.f6529a = oVar;
        this.f6530b = interfaceC0821x;
        this.f6531c = jVar;
        this.f6532d = eVar;
        this.f6533e = interfaceC0396a;
        this.f = interfaceC0776D;
        this.f6534g = jVar2;
        this.f6535h = kVar;
        this.f6536i = aVar;
        this.f6537j = lVar;
        this.f6538k = iterable;
        this.f6539l = pVar;
        this.f6540m = jVar3;
        this.n = interfaceC0858b;
        this.f6541o = interfaceC0860d;
        this.f6542p = c0087i;
        this.f6543q = lVar3;
        this.f6544r = c0857a;
        this.f6545s = listV;
        this.f6546t = new g(this);
    }

    public final G4 a(InterfaceC0775C interfaceC0775C, N3.f fVar, C0837c c0837c, N3.g gVar, N3.a aVar, f4.j jVar) {
        d3.i.e("descriptor", interfaceC0775C);
        d3.i.e("nameResolver", fVar);
        d3.i.e("metadataVersion", aVar);
        return new G4(this, fVar, interfaceC0775C, c0837c, gVar, aVar, jVar, null, R2.u.f2325c);
    }

    public final InterfaceC0802e b(Q3.b bVar) {
        d3.i.e("classId", bVar);
        Set set = g.f6525c;
        return this.f6546t.a(bVar, null);
    }
}
