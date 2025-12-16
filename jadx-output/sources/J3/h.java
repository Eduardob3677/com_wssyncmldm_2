package J3;

import L3.C;
import R3.C0094p;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import f1.AbstractC0420a;
import x3.AbstractC0917d;

/* loaded from: classes.dex */
public final class h implements f4.j {

    /* renamed from: b, reason: collision with root package name */
    public final Y3.b f1158b;

    /* renamed from: c, reason: collision with root package name */
    public final Y3.b f1159c;

    /* renamed from: d, reason: collision with root package name */
    public final w3.b f1160d;

    public h(w3.b bVar, C c2, P3.g gVar, int i5) {
        d3.i.e("kotlinClass", bVar);
        d3.i.e("packageProto", c2);
        d3.i.e("nameResolver", gVar);
        B.f.x(i5, "abiStability");
        Y3.b bVarB = Y3.b.b(AbstractC0917d.a(bVar.f9608a));
        K3.b bVar2 = bVar.f9609b;
        bVar2.getClass();
        Y3.b bVarD = null;
        String str = ((K3.a) bVar2.f1289d) == K3.a.MULTIFILE_CLASS_PART ? bVar2.f1287b : null;
        if (str != null && str.length() > 0) {
            bVarD = Y3.b.d(str);
        }
        this.f1158b = bVarB;
        this.f1159c = bVarD;
        this.f1160d = bVar;
        C0094p c0094p = O3.k.f2027m;
        d3.i.d("packageModuleName", c0094p);
        Integer num = (Integer) AbstractC0420a.C(c2, c0094p);
        if (num != null) {
            gVar.r(num.intValue());
        }
    }

    @Override // f4.j
    public final String a() {
        return "Class '" + b().b().b() + '\'';
    }

    public final Q3.b b() {
        Q3.c cVar;
        Y3.b bVar = this.f1158b;
        String str = bVar.f2964a;
        int iLastIndexOf = str.lastIndexOf("/");
        if (iLastIndexOf == -1) {
            cVar = Q3.c.f2233c;
            if (cVar == null) {
                Y3.b.a(7);
                throw null;
            }
        } else {
            cVar = new Q3.c(str.substring(0, iLastIndexOf).replace(IDMTndsXmlWbxmlDefine.XML_SLASH, '.'));
        }
        String strE = bVar.e();
        d3.i.d("className.internalName", strE);
        return new Q3.b(cVar, Q3.f.e(s4.h.u(strE, IDMTndsXmlWbxmlDefine.XML_SLASH)));
    }

    public final String toString() {
        return h.class.getSimpleName() + ": " + this.f1158b;
    }
}
