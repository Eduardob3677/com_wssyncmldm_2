package l3;

import c3.InterfaceC0221a;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import i3.InterfaceC0494o;

/* renamed from: l3.M, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0657M extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8120d = 1;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0659O f8121e;
    public final /* synthetic */ C0661Q f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0657M(C0659O c0659o, C0661Q c0661q) {
        super(0);
        this.f8121e = c0659o;
        this.f = c0661q;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    @Override // c3.InterfaceC0221a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a() {
        String str;
        K3.b bVar;
        switch (this.f8120d) {
            case 0:
                C0659O c0659o = this.f8121e;
                c0659o.getClass();
                InterfaceC0494o interfaceC0494o = C0659O.f8124g[1];
                Object objA = c0659o.f8126d.a();
                d3.i.d("<get-scope>(...)", objA);
                return this.f.g((a4.o) objA, 1);
            default:
                C0659O c0659o2 = this.f8121e;
                c0659o2.getClass();
                InterfaceC0494o interfaceC0494o2 = C0659O.f8124g[0];
                w3.b bVar2 = (w3.b) c0659o2.f8125c.a();
                if (bVar2 == null || (bVar = bVar2.f9609b) == null) {
                    str = null;
                } else if (((K3.a) bVar.f1289d) == K3.a.MULTIFILE_CLASS_PART) {
                    str = bVar.f1287b;
                }
                if (str == null || str.length() <= 0) {
                    return null;
                }
                return this.f.f8129d.getClassLoader().loadClass(s4.h.q(str, IDMTndsXmlWbxmlDefine.XML_SLASH, '.'));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0657M(C0661Q c0661q, C0659O c0659o) {
        super(0);
        this.f = c0661q;
        this.f8121e = c0659o;
    }
}
