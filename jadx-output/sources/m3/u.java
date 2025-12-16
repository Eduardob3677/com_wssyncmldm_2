package m3;

import J.r0;
import f1.AbstractC0420a;
import h3.C0447c;
import h4.AbstractC0468v;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import l3.w0;
import r3.InterfaceC0802e;
import r3.InterfaceC0806i;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import u3.C0890w;
import u3.V;

/* loaded from: classes.dex */
public final class u implements e {

    /* renamed from: a, reason: collision with root package name */
    public final e f8301a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f8302b;

    /* renamed from: c, reason: collision with root package name */
    public final r0 f8303c;

    /* JADX WARN: Removed duplicated region for block: B:20:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public u(e eVar, InterfaceC0816s interfaceC0816s, boolean z4) throws NoSuchMethodException, SecurityException {
        Method declaredMethod;
        r0 r0Var;
        Class clsO0;
        d3.i.e("descriptor", interfaceC0816s);
        this.f8301a = eVar;
        this.f8302b = z4;
        AbstractC0468v abstractC0468vN = interfaceC0816s.n();
        d3.i.b(abstractC0468vN);
        Class clsO02 = AbstractC0420a.o0(abstractC0468vN);
        if (clsO02 != null) {
            try {
                declaredMethod = clsO02.getDeclaredMethod("box-impl", AbstractC0420a.J(clsO02, interfaceC0816s).getReturnType());
                d3.i.d("{\n        getDeclaredMet…riptor).returnType)\n    }", declaredMethod);
            } catch (NoSuchMethodException unused) {
                throw new Q2.d("No box method found in inline class: " + clsO02 + " (calling " + interfaceC0816s + ')', 2);
            }
        } else {
            declaredMethod = null;
        }
        int i5 = 0;
        if (T3.i.a(interfaceC0816s)) {
            r0Var = new r0(C0447c.f, new Method[0], declaredMethod);
        } else {
            int i6 = -1;
            if (!(eVar instanceof r)) {
                if (interfaceC0816s instanceof InterfaceC0806i) {
                    if (!(eVar instanceof d)) {
                        i6 = 0;
                    }
                } else if (interfaceC0816s.F() != null && !(eVar instanceof d)) {
                    InterfaceC0807j interfaceC0807jL = interfaceC0816s.l();
                    d3.i.d("descriptor.containingDeclaration", interfaceC0807jL);
                    if (!T3.i.b(interfaceC0807jL)) {
                        i6 = 1;
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            C0890w c0890wD0 = interfaceC0816s.d0();
            AbstractC0468v abstractC0468vE = c0890wD0 != null ? c0890wD0.e() : null;
            if (abstractC0468vE != null) {
                arrayList.add(abstractC0468vE);
            } else if (interfaceC0816s instanceof InterfaceC0806i) {
                InterfaceC0802e interfaceC0802eY = ((InterfaceC0806i) interfaceC0816s).Y();
                d3.i.d("descriptor.constructedClass", interfaceC0802eY);
                if (interfaceC0802eY.z()) {
                    InterfaceC0807j interfaceC0807jL2 = interfaceC0802eY.l();
                    d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0807jL2);
                    arrayList.add(((InterfaceC0802e) interfaceC0807jL2).q());
                }
            } else {
                InterfaceC0807j interfaceC0807jL3 = interfaceC0816s.l();
                d3.i.d("descriptor.containingDeclaration", interfaceC0807jL3);
                if ((interfaceC0807jL3 instanceof InterfaceC0802e) && T3.i.b(interfaceC0807jL3)) {
                    arrayList.add(((InterfaceC0802e) interfaceC0807jL3).q());
                }
            }
            List listW0 = interfaceC0816s.w0();
            d3.i.d("descriptor.valueParameters", listW0);
            Iterator it = listW0.iterator();
            while (it.hasNext()) {
                arrayList.add(((V) it.next()).e());
            }
            int size = arrayList.size() + i6 + (interfaceC0816s.h() ? 1 : 0) + (this.f8302b ? ((arrayList.size() + 31) / 32) + 1 : 0);
            if (Z0.j.I(this) != size) {
                throw new Q2.d("Inconsistent number of parameters in the descriptor and Java reflection object: " + Z0.j.I(this) + " != " + size + "\nCalling: " + interfaceC0816s + "\nParameter types: " + this.f8301a.o() + ")\nDefault: " + this.f8302b, 2);
            }
            int iMax = Math.max(i6, 0);
            int size2 = arrayList.size() + i6;
            C0447c c0447c = size2 <= Integer.MIN_VALUE ? C0447c.f : new C0447c(iMax, size2 - 1, 1);
            Method[] methodArr = new Method[size];
            while (i5 < size) {
                methodArr[i5] = (i5 > c0447c.f7003d || c0447c.f7002c > i5 || (clsO0 = AbstractC0420a.o0((AbstractC0468v) arrayList.get(i5 - i6))) == null) ? null : AbstractC0420a.J(clsO0, interfaceC0816s);
                i5++;
            }
            r0Var = new r0(c0447c, methodArr, declaredMethod);
        }
        this.f8303c = r0Var;
    }

    @Override // m3.e
    public final Object i(Object[] objArr) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke;
        r0 r0Var = this.f8303c;
        C0447c c0447c = (C0447c) r0Var.f1006c;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        d3.i.d("copyOf(this, size)", objArrCopyOf);
        int i5 = c0447c.f7002c;
        int i6 = c0447c.f7003d;
        if (i5 <= i6) {
            while (true) {
                Method method = ((Method[]) r0Var.f1007d)[i5];
                Object objE = objArr[i5];
                if (method != null) {
                    if (objE != null) {
                        objE = method.invoke(objE, null);
                    } else {
                        Class<?> returnType = method.getReturnType();
                        d3.i.d("method.returnType", returnType);
                        objE = w0.e(returnType);
                    }
                }
                objArrCopyOf[i5] = objE;
                if (i5 == i6) {
                    break;
                }
                i5++;
            }
        }
        Object objI = this.f8301a.i(objArrCopyOf);
        Method method2 = (Method) r0Var.f1008e;
        return (method2 == null || (objInvoke = method2.invoke(null, objI)) == null) ? objI : objInvoke;
    }

    @Override // m3.e
    public final Type n() {
        return this.f8301a.n();
    }

    @Override // m3.e
    public final List o() {
        return this.f8301a.o();
    }

    @Override // m3.e
    public final Member p() {
        return this.f8301a.p();
    }
}
