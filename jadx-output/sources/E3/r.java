package E3;

import c3.InterfaceC0221a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class r extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f630d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ s f631e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(s sVar, int i5) {
        super(0);
        this.f630d = i5;
        this.f631e = sVar;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f630d) {
            case 0:
                s sVar = this.f631e;
                J3.g gVar = ((D3.a) sVar.f634j.f499d).f479l;
                sVar.f9353g.b();
                gVar.getClass();
                return R2.z.C1(new ArrayList());
            case 1:
                HashMap map = new HashMap();
                for (Map.Entry entry : ((Map) Z0.j.N(this.f631e.f635k, s.f632o[0])).entrySet()) {
                    String str = (String) entry.getKey();
                    w3.b bVar = (w3.b) entry.getValue();
                    Y3.b bVarD = Y3.b.d(str);
                    K3.b bVar2 = bVar.f9609b;
                    int iOrdinal = ((K3.a) bVar2.f1289d).ordinal();
                    if (iOrdinal == 2) {
                        map.put(bVarD, bVarD);
                    } else if (iOrdinal == 5) {
                        String str2 = ((K3.a) bVar2.f1289d) == K3.a.MULTIFILE_CLASS_PART ? bVar2.f1287b : null;
                        if (str2 != null) {
                            map.put(bVarD, Y3.b.d(str2));
                        }
                    }
                }
                return map;
            default:
                this.f631e.f633i.getClass();
                return new ArrayList(R2.o.C0(R2.u.f2325c));
        }
    }
}
