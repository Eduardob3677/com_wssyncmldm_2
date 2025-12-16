package l3;

import c3.InterfaceC0221a;
import i3.InterfaceC0494o;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import r3.InterfaceC0802e;
import r3.InterfaceC0807j;

/* renamed from: l3.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0694s extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8219d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0698w f8220e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0694s(C0698w c0698w, int i5) {
        super(0);
        this.f8219d = i5;
        this.f8220e = c0698w;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f8219d) {
            case 0:
                C0698w c0698w = this.f8220e;
                c0698w.getClass();
                InterfaceC0494o[] interfaceC0494oArr = C0698w.f8229l;
                InterfaceC0494o interfaceC0494o = interfaceC0494oArr[14];
                Object objA = c0698w.f8236j.a();
                d3.i.d("<get-allNonStaticMembers>(...)", objA);
                InterfaceC0494o interfaceC0494o2 = interfaceC0494oArr[15];
                Object objA2 = c0698w.f8237k.a();
                d3.i.d("<get-allStaticMembers>(...)", objA2);
                return R2.m.Y0((Collection) objA, (Collection) objA2);
            case 1:
                C0698w c0698w2 = this.f8220e;
                c0698w2.getClass();
                InterfaceC0494o[] interfaceC0494oArr2 = C0698w.f8229l;
                InterfaceC0494o interfaceC0494o3 = interfaceC0494oArr2[10];
                Object objA3 = c0698w2.f.a();
                d3.i.d("<get-declaredNonStaticMembers>(...)", objA3);
                InterfaceC0494o interfaceC0494o4 = interfaceC0494oArr2[12];
                Object objA4 = c0698w2.f8234h.a();
                d3.i.d("<get-inheritedNonStaticMembers>(...)", objA4);
                return R2.m.Y0((Collection) objA3, (Collection) objA4);
            case 2:
                C0698w c0698w3 = this.f8220e;
                c0698w3.getClass();
                InterfaceC0494o[] interfaceC0494oArr3 = C0698w.f8229l;
                InterfaceC0494o interfaceC0494o5 = interfaceC0494oArr3[11];
                Object objA5 = c0698w3.f8233g.a();
                d3.i.d("<get-declaredStaticMembers>(...)", objA5);
                InterfaceC0494o interfaceC0494o6 = interfaceC0494oArr3[13];
                Object objA6 = c0698w3.f8235i.a();
                d3.i.d("<get-inheritedStaticMembers>(...)", objA6);
                return R2.m.Y0((Collection) objA5, (Collection) objA6);
            case 3:
                return w0.d(this.f8220e.a());
            case 4:
                C0698w c0698w4 = this.f8220e;
                c0698w4.getClass();
                InterfaceC0494o[] interfaceC0494oArr4 = C0698w.f8229l;
                InterfaceC0494o interfaceC0494o7 = interfaceC0494oArr4[10];
                Object objA7 = c0698w4.f.a();
                d3.i.d("<get-declaredNonStaticMembers>(...)", objA7);
                InterfaceC0494o interfaceC0494o8 = interfaceC0494oArr4[11];
                Object objA8 = c0698w4.f8233g.a();
                d3.i.d("<get-declaredStaticMembers>(...)", objA8);
                return R2.m.Y0((Collection) objA7, (Collection) objA8);
            case 5:
                a4.o oVarR = this.f8220e.a().R();
                d3.i.d("descriptor.unsubstitutedInnerClassesScope", oVarR);
                Collection collectionH = i3.x.H(oVarR, null, 3);
                ArrayList arrayList = new ArrayList();
                for (Object obj : collectionH) {
                    if (!T3.e.n((InterfaceC0807j) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    InterfaceC0807j interfaceC0807j = (InterfaceC0807j) it.next();
                    InterfaceC0802e interfaceC0802e = interfaceC0807j instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0807j : null;
                    Class clsJ = interfaceC0802e != null ? w0.j(interfaceC0802e) : null;
                    C0701z c0701z = clsJ != null ? new C0701z(clsJ) : null;
                    if (c0701z != null) {
                        arrayList2.add(c0701z);
                    }
                }
                return arrayList2;
            default:
                Collection<InterfaceC0802e> collectionA0 = this.f8220e.a().A0();
                d3.i.d("descriptor.sealedSubclasses", collectionA0);
                ArrayList arrayList3 = new ArrayList();
                for (InterfaceC0802e interfaceC0802e2 : collectionA0) {
                    d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0802e2);
                    Class clsJ2 = w0.j(interfaceC0802e2);
                    C0701z c0701z2 = clsJ2 != null ? new C0701z(clsJ2) : null;
                    if (c0701z2 != null) {
                        arrayList3.add(c0701z2);
                    }
                }
                return arrayList3;
        }
    }
}
