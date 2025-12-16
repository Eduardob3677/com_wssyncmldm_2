package l3;

import R3.C0094p;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import f1.AbstractC0420a;
import java.util.regex.Pattern;
import r3.AbstractC0811n;
import r3.InterfaceC0775C;
import r3.InterfaceC0783K;
import r3.InterfaceC0807j;
import s2.C0837c;

/* renamed from: l3.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0688m extends r0 {

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC0783K f8196d;

    /* renamed from: e, reason: collision with root package name */
    public final L3.G f8197e;
    public final O3.e f;

    /* renamed from: g, reason: collision with root package name */
    public final N3.f f8198g;

    /* renamed from: h, reason: collision with root package name */
    public final C0837c f8199h;

    /* renamed from: i, reason: collision with root package name */
    public final String f8200i;

    /* JADX WARN: Removed duplicated region for block: B:25:0x00e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C0688m(InterfaceC0783K interfaceC0783K, L3.G g5, O3.e eVar, N3.f fVar, C0837c c0837c) {
        String string;
        String string2;
        d3.i.e("proto", g5);
        d3.i.e("nameResolver", fVar);
        d3.i.e("typeTable", c0837c);
        this.f8196d = interfaceC0783K;
        this.f8197e = g5;
        this.f = eVar;
        this.f8198g = fVar;
        this.f8199h = c0837c;
        if ((eVar.f1978d & 4) == 4) {
            string2 = fVar.r(eVar.f1980g.f1967e).concat(fVar.r(eVar.f1980g.f));
        } else {
            P3.d dVarB = P3.h.b(g5, fVar, c0837c, true);
            if (dVarB == null) {
                throw new Q2.d("No field signature for property: " + interfaceC0783K, 2);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(A3.y.a(dVarB.f2157b));
            InterfaceC0807j interfaceC0807jL = interfaceC0783K.l();
            d3.i.d("descriptor.containingDeclaration", interfaceC0807jL);
            if (d3.i.a(interfaceC0783K.c(), AbstractC0811n.f8812d) && (interfaceC0807jL instanceof f4.i)) {
                C0094p c0094p = O3.k.f2023i;
                d3.i.d("classModuleName", c0094p);
                Integer num = (Integer) AbstractC0420a.C(((f4.i) interfaceC0807jL).f6850g, c0094p);
                String strR = num != null ? fVar.r(num.intValue()) : "main";
                Q2.a aVar = Q3.g.f2244a;
                aVar.getClass();
                String strReplaceAll = ((Pattern) aVar.f2208d).matcher(strR).replaceAll("_");
                d3.i.d("nativePattern.matcher(in…).replaceAll(replacement)", strReplaceAll);
                string = "$".concat(strReplaceAll);
            } else if (d3.i.a(interfaceC0783K.c(), AbstractC0811n.f8809a) && (interfaceC0807jL instanceof InterfaceC0775C)) {
                f4.j jVar = ((f4.r) interfaceC0783K).f6894H;
                if (jVar instanceof J3.h) {
                    J3.h hVar = (J3.h) jVar;
                    if (hVar.f1159c != null) {
                        StringBuilder sb2 = new StringBuilder("$");
                        String strE = hVar.f1158b.e();
                        d3.i.d("className.internalName", strE);
                        sb2.append(Q3.f.e(s4.h.u(strE, IDMTndsXmlWbxmlDefine.XML_SLASH)).b());
                        string = sb2.toString();
                    }
                }
            } else {
                string = "";
            }
            sb.append(string);
            sb.append("()");
            sb.append(dVarB.f2158c);
            string2 = sb.toString();
        }
        this.f8200i = string2;
    }

    @Override // l3.r0
    public final String e() {
        return this.f8200i;
    }
}
