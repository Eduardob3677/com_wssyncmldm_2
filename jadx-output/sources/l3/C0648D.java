package l3;

import c3.InterfaceC0221a;
import f1.AbstractC0420a;
import i3.InterfaceC0490k;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import m3.C0708a;
import r3.InterfaceC0802e;
import r3.InterfaceC0807j;

/* renamed from: l3.D, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0648D extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8105d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0649E f8106e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0648D(C0649E c0649e, int i5) {
        super(0);
        this.f8105d = i5;
        this.f8106e = c0649e;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x016a  */
    @Override // c3.InterfaceC0221a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a() throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        Object objC;
        m3.t pVar;
        GenericDeclaration genericDeclarationO;
        m3.t tVarO;
        m3.t rVar;
        C0649E c0649e = this.f8106e;
        switch (this.f8105d) {
            case 0:
                Q3.b bVar = u0.f8226a;
                r0 r0VarC = u0.c(c0649e.k());
                boolean z4 = r0VarC instanceof C0684i;
                AbstractC0647C abstractC0647C = c0649e.f8108d;
                if (z4) {
                    if (c0649e.m()) {
                        Class clsA = abstractC0647C.a();
                        List listL = c0649e.l();
                        ArrayList arrayList = new ArrayList(R2.o.C0(listL));
                        Iterator it = listL.iterator();
                        while (it.hasNext()) {
                            String strB = ((C0663T) ((InterfaceC0490k) it.next())).b();
                            d3.i.b(strB);
                            arrayList.add(strB);
                        }
                        return new C0708a(clsA, arrayList, 2);
                    }
                    String str = ((C0684i) r0VarC).f8174d.f2160c;
                    abstractC0647C.getClass();
                    d3.i.e("desc", str);
                    objC = AbstractC0647C.o(abstractC0647C.a(), abstractC0647C.j(str));
                } else if (r0VarC instanceof C0685j) {
                    P3.e eVar = ((C0685j) r0VarC).f8178d;
                    objC = abstractC0647C.c(eVar.f2159b, eVar.f2160c);
                } else if (r0VarC instanceof C0683h) {
                    objC = ((C0683h) r0VarC).f8171d;
                } else {
                    if (!(r0VarC instanceof C0682g)) {
                        if (!(r0VarC instanceof C0680f)) {
                            throw new A0.c();
                        }
                        Class clsA2 = abstractC0647C.a();
                        List list = ((C0680f) r0VarC).f8165d;
                        ArrayList arrayList2 = new ArrayList(R2.o.C0(list));
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            arrayList2.add(((Method) it2.next()).getName());
                        }
                        return new C0708a(clsA2, arrayList2, 2, 1, list);
                    }
                    objC = ((C0682g) r0VarC).f8168d;
                }
                if (objC instanceof Constructor) {
                    pVar = C0649E.o(c0649e, (Constructor) objC, c0649e.k(), false);
                } else {
                    if (!(objC instanceof Method)) {
                        throw new Q2.d("Could not compute caller for function: " + c0649e.k() + " (member = " + objC + ')', 2);
                    }
                    Method method = (Method) objC;
                    boolean zIsStatic = Modifier.isStatic(method.getModifiers());
                    Object obj = c0649e.f;
                    pVar = !zIsStatic ? c0649e.n() ? new m3.p(method, AbstractC0420a.c(obj, c0649e.k())) : new m3.s(0, method) : ((K3.c) c0649e.k()).t().f(w0.f8238a) != null ? c0649e.n() ? new m3.q(method) : new m3.s(1, method) : c0649e.n() ? new m3.r(method, AbstractC0420a.c(obj, c0649e.k())) : new m3.s(2, method);
                }
                return AbstractC0420a.k(pVar, c0649e.k(), false);
            default:
                Q3.b bVar2 = u0.f8226a;
                r0 r0VarC2 = u0.c(c0649e.k());
                boolean z5 = r0VarC2 instanceof C0685j;
                AbstractC0647C abstractC0647C2 = c0649e.f8108d;
                if (z5) {
                    P3.e eVar2 = ((C0685j) r0VarC2).f8178d;
                    String str2 = eVar2.f2159b;
                    Member memberP = c0649e.g().p();
                    d3.i.b(memberP);
                    boolean z6 = !Modifier.isStatic(memberP.getModifiers());
                    abstractC0647C2.getClass();
                    d3.i.e("name", str2);
                    String str3 = eVar2.f2160c;
                    d3.i.e("desc", str3);
                    if (d3.i.a(str2, "<init>")) {
                        genericDeclarationO = null;
                    } else {
                        ArrayList arrayList3 = new ArrayList();
                        if (z6) {
                            arrayList3.add(abstractC0647C2.a());
                        }
                        abstractC0647C2.b(arrayList3, str3, false);
                        genericDeclarationO = AbstractC0647C.m(abstractC0647C2.h(), str2.concat("$default"), (Class[]) arrayList3.toArray(new Class[0]), abstractC0647C2.n(s4.h.m(str3, ')', 0, false, 6) + 1, str3.length(), str3), z6);
                    }
                } else if (!(r0VarC2 instanceof C0684i)) {
                    if (r0VarC2 instanceof C0680f) {
                        Class clsA3 = abstractC0647C2.a();
                        List list2 = ((C0680f) r0VarC2).f8165d;
                        ArrayList arrayList4 = new ArrayList(R2.o.C0(list2));
                        Iterator it3 = list2.iterator();
                        while (it3.hasNext()) {
                            arrayList4.add(((Method) it3.next()).getName());
                        }
                        return new C0708a(clsA3, arrayList4, 1, 1, list2);
                    }
                    genericDeclarationO = null;
                } else {
                    if (c0649e.m()) {
                        Class clsA4 = abstractC0647C2.a();
                        List listL2 = c0649e.l();
                        ArrayList arrayList5 = new ArrayList(R2.o.C0(listL2));
                        Iterator it4 = listL2.iterator();
                        while (it4.hasNext()) {
                            String strB2 = ((C0663T) ((InterfaceC0490k) it4.next())).b();
                            d3.i.b(strB2);
                            arrayList5.add(strB2);
                        }
                        return new C0708a(clsA4, arrayList5, 1);
                    }
                    String str4 = ((C0684i) r0VarC2).f8174d.f2160c;
                    abstractC0647C2.getClass();
                    d3.i.e("desc", str4);
                    Class clsA5 = abstractC0647C2.a();
                    ArrayList arrayList6 = new ArrayList();
                    abstractC0647C2.b(arrayList6, str4, true);
                    genericDeclarationO = AbstractC0647C.o(clsA5, arrayList6);
                }
                if (genericDeclarationO instanceof Constructor) {
                    tVarO = C0649E.o(c0649e, (Constructor) genericDeclarationO, c0649e.k(), true);
                } else if (!(genericDeclarationO instanceof Method)) {
                    tVarO = null;
                } else if (((K3.c) c0649e.k()).t().f(w0.f8238a) != null) {
                    InterfaceC0807j interfaceC0807jL = c0649e.k().l();
                    d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0807jL);
                    if (((InterfaceC0802e) interfaceC0807jL).N()) {
                        Method method2 = (Method) genericDeclarationO;
                        rVar = c0649e.n() ? new m3.r(method2, AbstractC0420a.c(c0649e.f, c0649e.k())) : new m3.s(2, method2);
                    } else {
                        Method method3 = (Method) genericDeclarationO;
                        rVar = c0649e.n() ? new m3.q(method3) : new m3.s(1, method3);
                    }
                    tVarO = rVar;
                }
                return tVarO != null ? AbstractC0420a.k(tVarO, c0649e.k(), true) : null;
        }
    }
}
