package E3;

import A3.C0005d;
import h4.J;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import o3.AbstractC0729f;
import r3.AbstractC0790S;
import r3.AbstractC0811n;
import r3.C0784L;
import r3.C0787O;
import r3.C0797Z;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import r3.c0;
import r3.f0;
import s3.InterfaceC0845h;
import u3.AbstractC0880l;
import u3.C0879k;
import v3.C0894a;
import v3.C0895b;
import v3.C0896c;

/* loaded from: classes.dex */
public final class j extends AbstractC0880l implements C3.c {

    /* renamed from: j, reason: collision with root package name */
    public final D3.e f594j;

    /* renamed from: k, reason: collision with root package name */
    public final x3.o f595k;

    /* renamed from: l, reason: collision with root package name */
    public final InterfaceC0802e f596l;

    /* renamed from: m, reason: collision with root package name */
    public final D3.e f597m;
    public final Q2.h n;

    /* renamed from: o, reason: collision with root package name */
    public final int f598o;

    /* renamed from: p, reason: collision with root package name */
    public final int f599p;

    /* renamed from: q, reason: collision with root package name */
    public final f0 f600q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f601r;

    /* renamed from: s, reason: collision with root package name */
    public final C0025h f602s;

    /* renamed from: t, reason: collision with root package name */
    public final q f603t;

    /* renamed from: u, reason: collision with root package name */
    public final C0784L f604u;

    /* renamed from: v, reason: collision with root package name */
    public final a4.i f605v;

    /* renamed from: w, reason: collision with root package name */
    public final G f606w;

    /* renamed from: x, reason: collision with root package name */
    public final D3.c f607x;

    /* renamed from: y, reason: collision with root package name */
    public final g4.i f608y;

    static {
        R2.B.T("equals", "hashCode", "getClass", "wait", "notify", "notifyAll", "toString");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public j(D3.e eVar, InterfaceC0807j interfaceC0807j, x3.o oVar, InterfaceC0802e interfaceC0802e) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        d3.i.e("outerContext", eVar);
        d3.i.e("containingDeclaration", interfaceC0807j);
        d3.i.e("jClass", oVar);
        D3.a aVar = (D3.a) eVar.f499d;
        g4.o oVar2 = aVar.f469a;
        Class cls = oVar.f9666a;
        super(oVar2, interfaceC0807j, Q3.f.e(cls.getSimpleName()), aVar.f477j.c(oVar));
        this.f594j = eVar;
        this.f595k = oVar;
        this.f596l = interfaceC0802e;
        int i5 = 4;
        D3.e eVarD = L2.b.d(eVar, this, oVar, 4);
        this.f597m = eVarD;
        D3.a aVar2 = (D3.a) eVarD.f499d;
        aVar2.f474g.getClass();
        this.n = new Q2.h(new C0024g(this, 2));
        this.f598o = cls.isAnnotation() ? 5 : cls.isInterface() ? 2 : cls.isEnum() ? 3 : 1;
        if (cls.isAnnotation() || cls.isEnum()) {
            i5 = 1;
        } else {
            boolean zF = oVar.f();
            boolean z4 = oVar.f() || Modifier.isAbstract(cls.getModifiers()) || cls.isInterface();
            boolean z5 = !Modifier.isFinal(cls.getModifiers());
            if (zF) {
                i5 = 2;
            } else if (!z4) {
                if (z5) {
                    i5 = 3;
                }
            }
        }
        this.f599p = i5;
        int modifiers = cls.getModifiers();
        this.f600q = Modifier.isPublic(modifiers) ? c0.f8801c : Modifier.isPrivate(modifiers) ? C0797Z.f8798c : Modifier.isProtected(modifiers) ? Modifier.isStatic(modifiers) ? C0896c.f9556c : C0895b.f9555c : C0894a.f9554c;
        Class<?> declaringClass = cls.getDeclaringClass();
        this.f601r = ((declaringClass != null ? new x3.o(declaringClass) : null) == null || Modifier.isStatic(cls.getModifiers())) ? false : true;
        this.f602s = new C0025h(this);
        q qVar = new q(eVarD, this, oVar, interfaceC0802e != null, null);
        this.f603t = qVar;
        C0787O c0787o = C0784L.f8785e;
        ((i4.l) aVar2.f487u).getClass();
        C0005d c0005d = new C0005d(5, this);
        c0787o.getClass();
        g4.o oVar3 = aVar2.f469a;
        d3.i.e("storageManager", oVar3);
        this.f604u = new C0784L(this, oVar3, c0005d);
        this.f605v = new a4.i(qVar);
        this.f606w = new G(eVarD, oVar, this);
        this.f607x = W1.a.g0(eVarD, oVar);
        C0024g c0024g = new C0024g(this, 1);
        g4.l lVar = (g4.l) oVar3;
        lVar.getClass();
        this.f608y = new g4.i(lVar, c0024g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [R2.u, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.ArrayList] */
    @Override // r3.InterfaceC0802e
    public final Collection A0() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Class[] clsArr;
        ?? arrayList = R2.u.f2325c;
        if (this.f599p != 2) {
            return arrayList;
        }
        Object obj = null;
        F3.a aVarN = L2.b.N(2, false, false, null, 7);
        Class cls = this.f595k.f9666a;
        d3.i.e("clazz", cls);
        com.google.firebase.messaging.p pVar = AbstractC0729f.f8449a;
        if (pVar == null) {
            try {
                pVar = new com.google.firebase.messaging.p(Class.class.getMethod("isSealed", null), Class.class.getMethod("getPermittedSubclasses", null), Class.class.getMethod("isRecord", null), Class.class.getMethod("getRecordComponents", null), 20);
            } catch (NoSuchMethodException unused) {
                pVar = new com.google.firebase.messaging.p(obj, obj, obj, obj, 20);
            }
            AbstractC0729f.f8449a = pVar;
        }
        Method method = (Method) pVar.f6259e;
        if (method == null) {
            clsArr = null;
        } else {
            Object objInvoke = method.invoke(cls, null);
            d3.i.c("null cannot be cast to non-null type kotlin.Array<java.lang.Class<*>>", objInvoke);
            clsArr = (Class[]) objInvoke;
        }
        if (clsArr != null) {
            arrayList = new ArrayList(clsArr.length);
            for (Class cls2 : clsArr) {
                arrayList.add(new x3.q(cls2));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            InterfaceC0804g interfaceC0804gI = ((com.google.firebase.messaging.p) this.f597m.f502h).K((x3.q) it.next(), aVarN).J0().i();
            InterfaceC0802e interfaceC0802e = interfaceC0804gI instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gI : null;
            if (interfaceC0802e != null) {
                arrayList2.add(interfaceC0802e);
            }
        }
        return R2.m.e1(arrayList2, new C0026i());
    }

    @Override // r3.InterfaceC0802e
    public final boolean D0() {
        return false;
    }

    @Override // r3.InterfaceC0804g
    public final J H() {
        return this.f602s;
    }

    @Override // u3.AbstractC0865A
    public final a4.o J(i4.f fVar) {
        C0784L c0784l = this.f604u;
        X3.f.j(c0784l.f8786a);
        return (q) ((a4.o) Z0.j.N(c0784l.f8789d, C0784L.f[0]));
    }

    @Override // r3.InterfaceC0802e
    public final int L() {
        return this.f598o;
    }

    @Override // r3.InterfaceC0802e
    public final boolean N() {
        return false;
    }

    @Override // u3.AbstractC0870b, r3.InterfaceC0802e
    public final a4.o R() {
        return this.f605v;
    }

    @Override // r3.InterfaceC0802e
    public final AbstractC0790S S() {
        return null;
    }

    @Override // r3.InterfaceC0802e
    public final C0879k W() {
        return null;
    }

    @Override // r3.InterfaceC0802e
    public final a4.o X() {
        return this.f606w;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0810m, r3.InterfaceC0820w
    public final A3.p c() {
        A3.p pVar = AbstractC0811n.f8809a;
        f0 f0Var = this.f600q;
        if (d3.i.a(f0Var, pVar)) {
            Class<?> declaringClass = this.f595k.f9666a.getDeclaringClass();
            if ((declaringClass != null ? new x3.o(declaringClass) : null) == null) {
                A3.p pVar2 = A3.q.f142a;
                d3.i.d("{\n            JavaDescri…KAGE_VISIBILITY\n        }", pVar2);
                return pVar2;
            }
        }
        return L2.b.O(f0Var);
    }

    @Override // r3.InterfaceC0802e
    public final boolean h0() {
        return false;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0820w
    public final int i() {
        return this.f599p;
    }

    @Override // r3.InterfaceC0802e
    public final boolean j() {
        return false;
    }

    @Override // r3.InterfaceC0820w
    public final boolean j0() {
        return false;
    }

    @Override // r3.InterfaceC0802e
    public final Collection k() {
        return (List) this.f603t.f625q.a();
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0805h
    public final List s() {
        return (List) this.f608y.a();
    }

    @Override // s3.InterfaceC0838a
    public final InterfaceC0845h t() {
        return this.f607x;
    }

    public final String toString() {
        return "Lazy Java class " + X3.f.h(this);
    }

    @Override // u3.AbstractC0870b, r3.InterfaceC0802e
    /* renamed from: u0, reason: merged with bridge method [inline-methods] */
    public final q f0() {
        a4.o oVarF0 = super.f0();
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.load.java.lazy.descriptors.LazyJavaClassMemberScope", oVarF0);
        return (q) oVarF0;
    }

    @Override // r3.InterfaceC0802e
    public final boolean v() {
        return false;
    }

    @Override // r3.InterfaceC0820w
    public final boolean y() {
        return false;
    }

    @Override // r3.InterfaceC0805h
    public final boolean z() {
        return this.f601r;
    }
}
