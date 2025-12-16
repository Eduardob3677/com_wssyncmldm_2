package m3;

import R2.z;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import i3.InterfaceC0482c;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import x3.AbstractC0917d;

/* renamed from: m3.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0708a implements e {

    /* renamed from: a, reason: collision with root package name */
    public final Class f8275a;

    /* renamed from: b, reason: collision with root package name */
    public final List f8276b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8277c;

    /* renamed from: d, reason: collision with root package name */
    public final List f8278d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f8279e;
    public final ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f8280g;

    public C0708a(Class cls, ArrayList arrayList, int i5, int i6, List list) {
        boolean z4;
        d3.i.e("jClass", cls);
        B.f.x(i5, "callMode");
        B.f.x(i6, "origin");
        d3.i.e("methods", list);
        this.f8275a = cls;
        this.f8276b = arrayList;
        this.f8277c = i5;
        this.f8278d = list;
        ArrayList arrayList2 = new ArrayList(R2.o.C0(list));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(((Method) it.next()).getGenericReturnType());
        }
        this.f8279e = arrayList2;
        List list2 = this.f8278d;
        ArrayList arrayList3 = new ArrayList(R2.o.C0(list2));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            Class<?> returnType = ((Method) it2.next()).getReturnType();
            d3.i.d("it", returnType);
            List list3 = AbstractC0917d.f9651a;
            Class<?> cls2 = (Class) AbstractC0917d.f9653c.get(returnType);
            if (cls2 != null) {
                returnType = cls2;
            }
            arrayList3.add(returnType);
        }
        this.f = arrayList3;
        List list4 = this.f8278d;
        ArrayList arrayList4 = new ArrayList(R2.o.C0(list4));
        Iterator it3 = list4.iterator();
        while (it3.hasNext()) {
            arrayList4.add(((Method) it3.next()).getDefaultValue());
        }
        this.f8280g = arrayList4;
        if (this.f8277c == 2 && i6 == 1) {
            List list5 = this.f8276b;
            d3.i.e("<this>", list5);
            ArrayList arrayList5 = new ArrayList(R2.o.C0(list5));
            boolean z5 = false;
            for (Object obj : list5) {
                if (z5 || !d3.i.a(obj, "value")) {
                    z4 = true;
                } else {
                    z5 = true;
                    z4 = false;
                }
                if (z4) {
                    arrayList5.add(obj);
                }
            }
            if (!arrayList5.isEmpty()) {
                throw new UnsupportedOperationException("Positional call of a Java annotation constructor is allowed only if there are no parameters or one parameter named \"value\". This restriction exists because Java annotations (in contrast to Kotlin)do not impose any order on their arguments. Use KCallable#callBy instead.");
            }
        }
    }

    @Override // m3.e
    public final Object i(Object[] objArr) {
        Object obj;
        String strL;
        W1.a.j(this, objArr);
        ArrayList arrayList = new ArrayList(objArr.length);
        int length = objArr.length;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            List list = this.f8276b;
            if (i5 >= length) {
                return L2.b.h(this.f8275a, z.C1(R2.m.l1(list, arrayList)), this.f8278d);
            }
            Object array = objArr[i5];
            int i7 = i6 + 1;
            ArrayList arrayList2 = this.f;
            if (array == null && this.f8277c == 1) {
                obj = this.f8280g.get(i6);
            } else {
                Class cls = (Class) arrayList2.get(i6);
                if (array instanceof Class) {
                    obj = null;
                } else {
                    if (array instanceof InterfaceC0482c) {
                        array = L2.b.q((InterfaceC0482c) array);
                    } else if (array instanceof Object[]) {
                        Object[] objArr2 = (Object[]) array;
                        if (!(objArr2 instanceof Class[])) {
                            if (objArr2 instanceof InterfaceC0482c[]) {
                                d3.i.c("null cannot be cast to non-null type kotlin.Array<kotlin.reflect.KClass<*>>", array);
                                InterfaceC0482c[] interfaceC0482cArr = (InterfaceC0482c[]) array;
                                ArrayList arrayList3 = new ArrayList(interfaceC0482cArr.length);
                                for (InterfaceC0482c interfaceC0482c : interfaceC0482cArr) {
                                    arrayList3.add(L2.b.q(interfaceC0482c));
                                }
                                array = arrayList3.toArray(new Class[0]);
                            } else {
                                array = objArr2;
                            }
                        }
                        obj = null;
                    }
                    obj = cls.isInstance(array) ? array : null;
                }
            }
            if (obj == null) {
                String str = (String) list.get(i6);
                Class cls2 = (Class) arrayList2.get(i6);
                InterfaceC0482c interfaceC0482cB = d3.i.a(cls2, Class.class) ? d3.q.f6516a.b(InterfaceC0482c.class) : (cls2.isArray() && d3.i.a(cls2.getComponentType(), Class.class)) ? d3.q.f6516a.b(InterfaceC0482c[].class) : L2.b.t(cls2);
                if (d3.i.a(interfaceC0482cB.l(), d3.q.f6516a.b(Object[].class).l())) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(interfaceC0482cB.l());
                    sb.append(IDMTndsXmlWbxmlDefine.XML_OPEN_TAG);
                    Class<?> componentType = L2.b.q(interfaceC0482cB).getComponentType();
                    d3.i.d("kotlinClass.java.componentType", componentType);
                    sb.append(L2.b.t(componentType).l());
                    sb.append(IDMTndsXmlWbxmlDefine.XML_CLOSE_TAG);
                    strL = sb.toString();
                } else {
                    strL = interfaceC0482cB.l();
                }
                throw new IllegalArgumentException("Argument #" + i6 + ' ' + str + " is not of the required type " + strL);
            }
            arrayList.add(obj);
            i5++;
            i6 = i7;
        }
    }

    @Override // m3.e
    public final Type n() {
        return this.f8275a;
    }

    @Override // m3.e
    public final List o() {
        return this.f8279e;
    }

    @Override // m3.e
    public final /* bridge */ /* synthetic */ Member p() {
        return null;
    }

    public /* synthetic */ C0708a(Class cls, ArrayList arrayList, int i5) {
        ArrayList arrayList2 = new ArrayList(R2.o.C0(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(cls.getDeclaredMethod((String) it.next(), null));
        }
        this(cls, arrayList, i5, 2, arrayList2);
    }
}
