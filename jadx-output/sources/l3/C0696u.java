package l3;

import c3.InterfaceC0221a;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import o3.AbstractC0732i;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;

/* renamed from: l3.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0696u extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8224d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0698w f8225e;
    public final /* synthetic */ C0701z f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0696u(C0698w c0698w, C0701z c0701z, int i5) {
        super(0);
        this.f8224d = i5;
        this.f8225e = c0698w;
        this.f = c0701z;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        int i5 = 1;
        C0701z c0701z = this.f;
        C0698w c0698w = this.f8225e;
        switch (this.f8224d) {
            case 0:
                if (c0701z.f8243d.isAnonymousClass()) {
                    return null;
                }
                Q3.b bVarQ = c0701z.q();
                if (!bVarQ.f2232c) {
                    String strB = bVarQ.j().b();
                    d3.i.d("classId.shortClassName.asString()", strB);
                    return strB;
                }
                c0698w.getClass();
                Class cls = c0701z.f8243d;
                String simpleName = cls.getSimpleName();
                Method enclosingMethod = cls.getEnclosingMethod();
                if (enclosingMethod != null) {
                    return s4.h.t(simpleName, enclosingMethod.getName() + '$', simpleName);
                }
                Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
                if (enclosingConstructor != null) {
                    return s4.h.t(simpleName, enclosingConstructor.getName() + '$', simpleName);
                }
                int iM = s4.h.m(simpleName, '$', 0, false, 6);
                if (iM != -1) {
                    simpleName = simpleName.substring(iM + 1, simpleName.length());
                    d3.i.d("this as java.lang.String…ing(startIndex, endIndex)", simpleName);
                }
                return simpleName;
            case 1:
                Collection<AbstractC0468v> collectionJ = c0698w.a().H().j();
                d3.i.d("descriptor.typeConstructor.supertypes", collectionJ);
                ArrayList arrayList = new ArrayList(collectionJ.size());
                for (AbstractC0468v abstractC0468v : collectionJ) {
                    d3.i.d("kotlinType", abstractC0468v);
                    arrayList.add(new l0(abstractC0468v, new f4.l(abstractC0468v, c0698w, c0701z, i5)));
                }
                InterfaceC0802e interfaceC0802eA = c0698w.a();
                Q3.f fVar = AbstractC0732i.f8454e;
                if (!AbstractC0732i.b(interfaceC0802eA, o3.m.f8503a) && !AbstractC0732i.b(interfaceC0802eA, o3.m.f8505b)) {
                    if (arrayList.isEmpty()) {
                        AbstractC0472z abstractC0472zE = X3.f.e(c0698w.a()).e();
                        d3.i.d("descriptor.builtIns.anyType", abstractC0472zE);
                        arrayList.add(new l0(abstractC0472zE, C0697v.f8227d));
                    } else {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            int iL = T3.e.c(((l0) it.next()).f8192a).L();
                            B.f.E(iL, "getClassDescriptorForType(it.type).kind");
                            if (iL == 2 || iL == 5) {
                            }
                        }
                        AbstractC0472z abstractC0472zE2 = X3.f.e(c0698w.a()).e();
                        d3.i.d("descriptor.builtIns.anyType", abstractC0472zE2);
                        arrayList.add(new l0(abstractC0472zE2, C0697v.f8227d));
                    }
                }
                return q4.k.e(arrayList);
            default:
                List<InterfaceC0789Q> listS = c0698w.a().s();
                d3.i.d("descriptor.declaredTypeParameters", listS);
                ArrayList arrayList2 = new ArrayList(R2.o.C0(listS));
                for (InterfaceC0789Q interfaceC0789Q : listS) {
                    d3.i.d("descriptor", interfaceC0789Q);
                    arrayList2.add(new m0(c0701z, interfaceC0789Q));
                }
                return arrayList2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0696u(C0701z c0701z, C0698w c0698w) {
        super(0);
        this.f8224d = 0;
        this.f = c0701z;
        this.f8225e = c0698w;
    }
}
