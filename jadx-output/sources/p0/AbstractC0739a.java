package p0;

import J.r0;
import R2.o;
import R2.u;
import R2.z;
import T3.e;
import X3.f;
import android.graphics.Rect;
import android.os.Build;
import android.os.Looper;
import android.view.PointerIcon;
import android.view.View;
import c1.AbstractC0213D;
import c1.w;
import com.wssyncmldm.R;
import e.J;
import f1.AbstractC0420a;
import h3.C0447c;
import h4.AbstractC0472z;
import h4.K;
import i3.x;
import j4.i;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import r3.C0801d;
import r3.C0814q;
import r3.InterfaceC0775C;
import r3.InterfaceC0789Q;
import r3.InterfaceC0799b;
import r3.InterfaceC0802e;
import r3.InterfaceC0805h;
import r3.InterfaceC0807j;
import r4.c;
import r4.k;
import r4.m;
import r4.p;
import u1.h;
import u1.j;
import u1.l;
import u1.n;
import u3.AbstractC0870b;
import u3.E;

/* renamed from: p0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0739a {
    public static Object a(h hVar) throws InterruptedException {
        boolean z4;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IllegalStateException("Must not be called on the main application thread");
        }
        AbstractC0213D.f("Task must not be null", hVar);
        n nVar = (n) hVar;
        synchronized (nVar.f9329a) {
            z4 = nVar.f9331c;
        }
        if (z4) {
            return t(hVar);
        }
        w wVar = new w(19, false);
        J j3 = j.f9322b;
        hVar.c(j3, wVar);
        hVar.b(j3, wVar);
        n nVar2 = (n) hVar;
        nVar2.f9330b.f(new l(j3, (u1.b) wVar));
        nVar2.m();
        ((CountDownLatch) wVar.f5265c).await();
        return t(hVar);
    }

    public static Object b(n nVar, long j3, TimeUnit timeUnit) throws TimeoutException {
        boolean z4;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IllegalStateException("Must not be called on the main application thread");
        }
        AbstractC0213D.f("Task must not be null", nVar);
        AbstractC0213D.f("TimeUnit must not be null", timeUnit);
        synchronized (nVar.f9329a) {
            z4 = nVar.f9331c;
        }
        if (z4) {
            return t(nVar);
        }
        w wVar = new w(19, false);
        J j5 = j.f9322b;
        nVar.c(j5, wVar);
        nVar.b(j5, wVar);
        nVar.f9330b.f(new l(j5, (u1.b) wVar));
        nVar.m();
        if (((CountDownLatch) wVar.f5265c).await(j3, timeUnit)) {
            return t(nVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static final r0 c(AbstractC0472z abstractC0472z, InterfaceC0805h interfaceC0805h, int i5) {
        if (interfaceC0805h == null || i.f(interfaceC0805h)) {
            return null;
        }
        int size = interfaceC0805h.s().size() + i5;
        if (interfaceC0805h.z()) {
            List listSubList = abstractC0472z.u0().subList(i5, size);
            InterfaceC0807j interfaceC0807jL = interfaceC0805h.l();
            return new r0(interfaceC0805h, listSubList, c(abstractC0472z, interfaceC0807jL instanceof InterfaceC0805h ? (InterfaceC0805h) interfaceC0807jL : null, size));
        }
        if (size != abstractC0472z.u0().size()) {
            e.p(interfaceC0805h);
        }
        return new r0(interfaceC0805h, abstractC0472z.u0().subList(i5, abstractC0472z.u0().size()), (r0) null);
    }

    public static n d(Executor executor, Callable callable) {
        AbstractC0213D.f("Executor must not be null", executor);
        n nVar = new n();
        executor.execute(new G.a(nVar, 15, callable));
        return nVar;
    }

    public static final void e() {
        if (new C0447c(2, 36, 1).l(10)) {
            return;
        }
        throw new IllegalArgumentException("radix 10 was not in valid range " + new C0447c(2, 36, 1));
    }

    public static final List f(InterfaceC0805h interfaceC0805h) {
        List listK;
        Object next;
        h4.J jH;
        d3.i.e("<this>", interfaceC0805h);
        List listS = interfaceC0805h.s();
        d3.i.d("declaredTypeParameters", listS);
        if (!interfaceC0805h.z() && !(interfaceC0805h.l() instanceof InterfaceC0799b)) {
            return listS;
        }
        int i5 = f.f2874a;
        X3.e eVar = X3.e.f2873d;
        k kVarK = m.k(interfaceC0805h, eVar);
        List listN = m.n(new r4.h(m.i(new r4.j(kVarK instanceof c ? ((c) kVarK).a() : new r4.b(kVarK, 1)), C0814q.f8826h), C0814q.f8827i, p.f8864l));
        k kVarK2 = m.k(interfaceC0805h, eVar);
        Iterator it = (kVarK2 instanceof c ? ((c) kVarK2).a() : new r4.b(kVarK2, 1)).iterator();
        while (true) {
            listK = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (next instanceof InterfaceC0802e) {
                break;
            }
        }
        InterfaceC0802e interfaceC0802e = (InterfaceC0802e) next;
        if (interfaceC0802e != null && (jH = interfaceC0802e.H()) != null) {
            listK = jH.k();
        }
        if (listK == null) {
            listK = u.f2325c;
        }
        if (listN.isEmpty() && listK.isEmpty()) {
            List listS2 = interfaceC0805h.s();
            d3.i.d("declaredTypeParameters", listS2);
            return listS2;
        }
        ArrayList arrayListY0 = R2.m.Y0(listN, listK);
        ArrayList arrayList = new ArrayList(o.C0(arrayListY0));
        Iterator it2 = arrayListY0.iterator();
        while (it2.hasNext()) {
            InterfaceC0789Q interfaceC0789Q = (InterfaceC0789Q) it2.next();
            d3.i.d("it", interfaceC0789Q);
            arrayList.add(new C0801d(interfaceC0789Q, interfaceC0805h, listS.size()));
        }
        return R2.m.Y0(listS, arrayList);
    }

    public static final K g(InterfaceC0802e interfaceC0802e, AbstractC0870b abstractC0870b) {
        d3.i.e("to", abstractC0870b);
        interfaceC0802e.s().size();
        abstractC0870b.s().size();
        List listS = interfaceC0802e.s();
        d3.i.d("from.declaredTypeParameters", listS);
        ArrayList arrayList = new ArrayList(o.C0(listS));
        Iterator it = listS.iterator();
        while (it.hasNext()) {
            arrayList.add(((InterfaceC0789Q) it.next()).H());
        }
        List listS2 = abstractC0870b.s();
        d3.i.d("to.declaredTypeParameters", listS2);
        ArrayList arrayList2 = new ArrayList(o.C0(listS2));
        Iterator it2 = listS2.iterator();
        while (it2.hasNext()) {
            AbstractC0472z abstractC0472zQ = ((InterfaceC0789Q) it2.next()).q();
            d3.i.d("it.defaultType", abstractC0472zQ);
            arrayList2.add(AbstractC0420a.b(abstractC0472zQ));
        }
        return new K(z.C1(R2.m.l1(arrayList, arrayList2)), false);
    }

    public static final boolean h(char c2, char c5, boolean z4) {
        if (c2 == c5) {
            return true;
        }
        if (!z4) {
            return false;
        }
        char upperCase = Character.toUpperCase(c2);
        char upperCase2 = Character.toUpperCase(c5);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static n i(Exception exc) {
        n nVar = new n();
        nVar.j(exc);
        return nVar;
    }

    public static n j(Object obj) {
        n nVar = new n();
        nVar.k(obj);
        return nVar;
    }

    public static int k() throws NoSuchFieldException, SecurityException {
        Field fieldI = x.I(Build.VERSION.class, "SEM_PLATFORM_INT");
        if (fieldI == null || !(x.A(null, fieldI) instanceof Integer)) {
            return -1;
        }
        return ((Integer) x.A(null, fieldI)).intValue();
    }

    public static boolean l(View view) {
        Method methodP = x.P(View.class, "semIsHighContrastTextEnabled", new Class[0]);
        if (methodP != null) {
            Object objJ0 = x.j0(view, methodP, new Object[0]);
            if (objJ0 instanceof Boolean) {
                return ((Boolean) objJ0).booleanValue();
            }
        }
        return false;
    }

    public static boolean m(Rect rect, View view) {
        Method methodJ = x.J(View.class, "isVisibleToUser", Rect.class);
        if (methodJ == null) {
            return false;
        }
        Object objJ0 = x.j0(view, methodJ, rect);
        if (objJ0 instanceof Boolean) {
            return ((Boolean) objJ0).booleanValue();
        }
        return false;
    }

    public static final void n(z3.a aVar, z3.b bVar, InterfaceC0775C interfaceC0775C, Q3.f fVar) {
        d3.i.e("<this>", aVar);
        d3.i.e("scopeOwner", interfaceC0775C);
        d3.i.e("name", fVar);
        ((E) interfaceC0775C).f9353g.b();
        d3.i.d("name.asString()", fVar.b());
    }

    public static Object o(View view) {
        Method methodJ = x.J(View.class, "hidden_semGetHoverPopup", Boolean.TYPE);
        if (methodJ != null) {
            return x.j0(view, methodJ, Boolean.TRUE);
        }
        return null;
    }

    public static void p(int i5, View view) {
        Method methodJ = x.J(View.class, "hidden_semSetHoverPopupType", Integer.TYPE);
        if (methodJ != null) {
            x.j0(view, methodJ, Integer.valueOf(i5));
        }
    }

    public static void q(View view, int i5, PointerIcon pointerIcon) {
        Method methodJ = x.J(View.class, "hidden_semSetPointerIcon", Integer.TYPE, PointerIcon.class);
        if (methodJ != null) {
            x.j0(view, methodJ, Integer.valueOf(i5), pointerIcon);
        }
    }

    public static final void r(View view, x0.f fVar) {
        d3.i.e("<this>", view);
        view.setTag(R.id.view_tree_saved_state_registry_owner, fVar);
    }

    public static void s(View view, float f) {
        Method methodJ = x.J(View.class, "setFrameContentVelocity", Float.TYPE);
        if (methodJ != null) {
            x.j0(view, methodJ, Float.valueOf(f));
        }
    }

    public static Object t(h hVar) throws ExecutionException {
        if (hVar.f()) {
            return hVar.e();
        }
        if (((n) hVar).f9332d) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(hVar.d());
    }
}
