package F3;

import R2.m;
import R2.o;
import S3.g;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import d3.i;
import f1.AbstractC0420a;
import h4.AbstractC0464q;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.G;
import h4.N;
import h4.Z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import s4.h;

/* loaded from: classes.dex */
public final class f extends AbstractC0464q {
    public f(AbstractC0472z abstractC0472z, AbstractC0472z abstractC0472z2, boolean z4) {
        super(abstractC0472z, abstractC0472z2);
        if (z4) {
            return;
        }
        i4.d.f7169a.b(abstractC0472z, abstractC0472z2);
    }

    public static final ArrayList S0(g gVar, AbstractC0472z abstractC0472z) throws IOException {
        List<N> listU0 = abstractC0472z.u0();
        ArrayList arrayList = new ArrayList(o.C0(listU0));
        for (N n : listU0) {
            gVar.getClass();
            i.e("typeProjection", n);
            StringBuilder sb = new StringBuilder();
            m.R0(AbstractC0420a.V(n), sb, null, null, new S3.e(gVar, 0), 60);
            String string = sb.toString();
            i.d("StringBuilder().apply(builderAction).toString()", string);
            arrayList.add(string);
        }
        return arrayList;
    }

    public static final String T0(String str, String str2) {
        i.e("<this>", str);
        if (h.m(str, IDMTndsXmlWbxmlDefine.XML_OPEN_TAG, 0, false, 2) < 0) {
            return str;
        }
        return h.v(str, IDMTndsXmlWbxmlDefine.XML_OPEN_TAG) + IDMTndsXmlWbxmlDefine.XML_OPEN_TAG + str2 + IDMTndsXmlWbxmlDefine.XML_CLOSE_TAG + h.u(str, IDMTndsXmlWbxmlDefine.XML_CLOSE_TAG);
    }

    @Override // h4.AbstractC0468v
    public final AbstractC0468v L0(i4.f fVar) {
        i.e("kotlinTypeRefiner", fVar);
        AbstractC0472z abstractC0472z = this.f7069d;
        i.e("type", abstractC0472z);
        AbstractC0472z abstractC0472z2 = this.f7070e;
        i.e("type", abstractC0472z2);
        return new f(abstractC0472z, abstractC0472z2, true);
    }

    @Override // h4.Z
    public final Z N0(boolean z4) {
        return new f(this.f7069d.N0(z4), this.f7070e.N0(z4));
    }

    @Override // h4.Z
    /* renamed from: O0 */
    public final Z L0(i4.f fVar) {
        i.e("kotlinTypeRefiner", fVar);
        AbstractC0472z abstractC0472z = this.f7069d;
        i.e("type", abstractC0472z);
        AbstractC0472z abstractC0472z2 = this.f7070e;
        i.e("type", abstractC0472z2);
        return new f(abstractC0472z, abstractC0472z2, true);
    }

    @Override // h4.Z
    public final Z P0(G g5) {
        i.e("newAttributes", g5);
        return new f(this.f7069d.P0(g5), this.f7070e.P0(g5));
    }

    @Override // h4.AbstractC0464q
    public final AbstractC0472z Q0() {
        return this.f7069d;
    }

    @Override // h4.AbstractC0464q
    public final String R0(g gVar, S3.i iVar) throws IOException {
        i.e("renderer", gVar);
        i.e("options", iVar);
        AbstractC0472z abstractC0472z = this.f7069d;
        String strY = gVar.Y(abstractC0472z);
        AbstractC0472z abstractC0472z2 = this.f7070e;
        String strY2 = gVar.Y(abstractC0472z2);
        if (iVar.g()) {
            return "raw (" + strY + ".." + strY2 + ')';
        }
        if (abstractC0472z2.u0().isEmpty()) {
            return gVar.F(strY, strY2, AbstractC0420a.y(this));
        }
        ArrayList arrayListS0 = S0(gVar, abstractC0472z);
        ArrayList arrayListS02 = S0(gVar, abstractC0472z2);
        String strS0 = m.S0(arrayListS0, ", ", null, null, e.f772d, 30);
        ArrayList arrayListL1 = m.l1(arrayListS0, arrayListS02);
        if (arrayListL1.isEmpty()) {
            strY2 = T0(strY2, strS0);
        } else {
            Iterator it = arrayListL1.iterator();
            while (it.hasNext()) {
                Q2.e eVar = (Q2.e) it.next();
                String str = (String) eVar.f2212c;
                String str2 = (String) eVar.f2213d;
                if (!i.a(str, h.p(str2, "out ")) && !i.a(str2, "*")) {
                    break;
                }
            }
            strY2 = T0(strY2, strS0);
        }
        String strT0 = T0(strY, strS0);
        return i.a(strT0, strY2) ? strT0 : gVar.F(strT0, strY2, AbstractC0420a.y(this));
    }

    @Override // h4.AbstractC0464q, h4.AbstractC0468v
    public final a4.o q0() {
        InterfaceC0804g interfaceC0804gI = J0().i();
        InterfaceC0802e interfaceC0802e = interfaceC0804gI instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gI : null;
        if (interfaceC0802e != null) {
            a4.o oVarC = interfaceC0802e.C(new d());
            i.d("classDescriptor.getMemberScope(RawSubstitution())", oVarC);
            return oVarC;
        }
        throw new IllegalStateException(("Incorrect classifier: " + J0().i()).toString());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public f(AbstractC0472z abstractC0472z, AbstractC0472z abstractC0472z2) {
        this(abstractC0472z, abstractC0472z2, false);
        i.e("lowerBound", abstractC0472z);
        i.e("upperBound", abstractC0472z2);
    }
}
