package S3;

import R2.A;
import java.util.ArrayList;
import r3.InterfaceC0775C;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import u3.E;

/* loaded from: classes.dex */
public final class b implements c {

    /* renamed from: b, reason: collision with root package name */
    public static final b f2611b = new b(0);

    /* renamed from: c, reason: collision with root package name */
    public static final b f2612c = new b(1);

    /* renamed from: d, reason: collision with root package name */
    public static final b f2613d = new b(2);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2614a;

    public /* synthetic */ b(int i5) {
        this.f2614a = i5;
    }

    public static String b(InterfaceC0804g interfaceC0804g) {
        String strE0;
        Q3.f name = interfaceC0804g.getName();
        d3.i.d("descriptor.name", name);
        String strD0 = W1.a.d0(name);
        if (interfaceC0804g instanceof InterfaceC0789Q) {
            return strD0;
        }
        InterfaceC0807j interfaceC0807jL = interfaceC0804g.l();
        d3.i.d("descriptor.containingDeclaration", interfaceC0807jL);
        if (interfaceC0807jL instanceof InterfaceC0802e) {
            strE0 = b((InterfaceC0804g) interfaceC0807jL);
        } else if (interfaceC0807jL instanceof InterfaceC0775C) {
            Q3.e eVarI = ((E) ((InterfaceC0775C) interfaceC0807jL)).f9353g.i();
            d3.i.d("descriptor.fqName.toUnsafe()", eVarI);
            strE0 = W1.a.e0(eVarI.e());
        } else {
            strE0 = null;
        }
        if (strE0 == null || d3.i.a(strE0, "")) {
            return strD0;
        }
        return strE0 + '.' + strD0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [r3.g, r3.j] */
    /* JADX WARN: Type inference failed for: r1v5, types: [r3.j] */
    /* JADX WARN: Type inference failed for: r1v6, types: [r3.j] */
    @Override // S3.c
    public final String a(InterfaceC0804g interfaceC0804g, g gVar) {
        switch (this.f2614a) {
            case 0:
                d3.i.e("renderer", gVar);
                if (interfaceC0804g instanceof InterfaceC0789Q) {
                    Q3.f name = ((InterfaceC0789Q) interfaceC0804g).getName();
                    d3.i.d("classifier.name", name);
                    return gVar.O(name, false);
                }
                Q3.e eVarG = T3.e.g(interfaceC0804g);
                d3.i.d("getFqName(classifier)", eVarG);
                return gVar.o(W1.a.e0(eVarG.e()));
            case 1:
                d3.i.e("renderer", gVar);
                if (interfaceC0804g instanceof InterfaceC0789Q) {
                    Q3.f name2 = ((InterfaceC0789Q) interfaceC0804g).getName();
                    d3.i.d("classifier.name", name2);
                    return gVar.O(name2, false);
                }
                ArrayList arrayList = new ArrayList();
                do {
                    arrayList.add(interfaceC0804g.getName());
                    interfaceC0804g = interfaceC0804g.l();
                } while (interfaceC0804g instanceof InterfaceC0802e);
                return W1.a.e0(new A(arrayList));
            default:
                d3.i.e("renderer", gVar);
                return b(interfaceC0804g);
        }
    }
}
