package c1;

import J.InterfaceC0043q;
import J.Q;
import J.o0;
import J.q0;
import android.util.Log;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.profileinstaller.ProfileInstallReceiver;
import com.google.android.material.behavior.SwipeDismissBehavior;
import h0.InterfaceC0434e;
import h4.AbstractC0468v;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.Lock;
import k.InterfaceC0580c1;
import l3.AbstractC0647C;
import l3.C0649E;
import l3.C0651G;
import l3.C0653I;
import l3.C0655K;
import l3.C0666W;
import l3.C0669Z;
import l3.C0675c0;
import p.AbstractC0735a;
import r3.InterfaceC0775C;
import r3.InterfaceC0776D;
import r3.InterfaceC0780H;
import r3.InterfaceC0783K;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0806i;
import r3.InterfaceC0807j;
import r3.InterfaceC0809l;
import r3.InterfaceC0815r;
import r3.InterfaceC0816s;
import r3.InterfaceC0821x;
import s3.InterfaceC0845h;
import u3.C0890w;
import u3.L;
import u3.M;
import u3.V;
import w3.C0902a;

/* loaded from: classes.dex */
public class w implements d4.e, g4.n, InterfaceC0434e, InterfaceC0815r, InterfaceC0809l, J3.o, q4.a, u1.b, u1.d, u1.e, InterfaceC0043q, InterfaceC0580c1, K.r {

    /* renamed from: c, reason: collision with root package name */
    public Object f5265c;

    public /* synthetic */ w(Object obj) {
        this.f5265c = obj;
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r A(Q3.f fVar) {
        d3.i.e("name", fVar);
        return this;
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r B(A3.p pVar) {
        d3.i.e("visibility", pVar);
        return this;
    }

    @Override // g4.n
    public void C() {
        ((Lock) this.f5265c).unlock();
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r D() {
        return this;
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r E() {
        return this;
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r F() {
        return this;
    }

    @Override // g4.n
    public void G() {
        ((Lock) this.f5265c).lock();
    }

    @Override // u1.b
    public void H() {
        ((CountDownLatch) this.f5265c).countDown();
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r I(AbstractC0468v abstractC0468v) {
        d3.i.e("type", abstractC0468v);
        return this;
    }

    @Override // u1.d
    public void J(Exception exc) {
        ((CountDownLatch) this.f5265c).countDown();
    }

    @Override // r3.InterfaceC0809l
    public Object K(InterfaceC0780H interfaceC0780H, Object obj) {
        return null;
    }

    @Override // u1.e
    public void L(Object obj) {
        ((CountDownLatch) this.f5265c).countDown();
    }

    @Override // d4.e
    public d4.d M(Q3.b bVar) {
        d4.d dVarM;
        d3.i.e("classId", bVar);
        Q3.c cVarH = bVar.h();
        d3.i.d("classId.packageFqName", cVarH);
        Iterator it = AbstractC0735a.m((InterfaceC0776D) this.f5265c, cVarH).iterator();
        while (it.hasNext()) {
            InterfaceC0775C interfaceC0775C = (InterfaceC0775C) it.next();
            if ((interfaceC0775C instanceof e4.c) && (dVarM = ((e4.c) interfaceC0775C).f6813l.M(bVar)) != null) {
                return dVarM;
            }
        }
        return null;
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r N() {
        return this;
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r O() {
        return this;
    }

    @Override // r3.InterfaceC0809l
    public Object P(V v4, Object obj) {
        return null;
    }

    public void Q(Object obj) {
        ((ArrayList) this.f5265c).add(obj);
    }

    public void R(Object obj) {
        if (obj == null) {
            return;
        }
        boolean z4 = obj instanceof Object[];
        ArrayList arrayList = (ArrayList) this.f5265c;
        if (z4) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length > 0) {
                arrayList.ensureCapacity(arrayList.size() + objArr.length);
                Collections.addAll(arrayList, objArr);
                return;
            }
            return;
        }
        if (obj instanceof Collection) {
            arrayList.addAll((Collection) obj);
            return;
        }
        if (obj instanceof Iterable) {
            Iterator it = ((Iterable) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
        } else {
            if (!(obj instanceof Iterator)) {
                throw new UnsupportedOperationException("Don't know how to spread " + obj.getClass());
            }
            Iterator it2 = (Iterator) obj;
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
        }
    }

    @Override // J.InterfaceC0043q
    public q0 Y(View view, q0 q0Var) {
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f5265c;
        if (!Objects.equals(coordinatorLayout.f3601p, q0Var)) {
            coordinatorLayout.f3601p = q0Var;
            boolean z4 = q0Var.d() > 0;
            coordinatorLayout.f3602q = z4;
            coordinatorLayout.setWillNotDraw(!z4 && coordinatorLayout.getBackground() == null);
            o0 o0Var = q0Var.f1002a;
            if (!o0Var.j()) {
                int childCount = coordinatorLayout.getChildCount();
                for (int i5 = 0; i5 < childCount; i5++) {
                    View childAt = coordinatorLayout.getChildAt(i5);
                    WeakHashMap weakHashMap = Q.f940a;
                    if (childAt.getFitsSystemWindows() && ((w.d) childAt.getLayoutParams()).f9558a != null && o0Var.j()) {
                        break;
                    }
                }
            }
            coordinatorLayout.requestLayout();
        }
        return q0Var;
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r a(int i5) {
        B.f.x(i5, "kind");
        return this;
    }

    @Override // r3.InterfaceC0809l
    public Object b(InterfaceC0802e interfaceC0802e, Object obj) {
        return null;
    }

    @Override // r3.InterfaceC0809l
    public Object c(L l5, Object obj) {
        return v(l5, obj);
    }

    @Override // J3.o
    public void d() {
    }

    @Override // J3.o
    public J3.m e(Q3.b bVar, C0902a c0902a) {
        if (!d3.i.a(bVar, A3.y.f164b)) {
            return null;
        }
        ((d3.p) this.f5265c).f6515c = true;
        return null;
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r f(C0890w c0890w) {
        return this;
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r g() {
        return this;
    }

    @Override // r3.InterfaceC0809l
    public Object h(InterfaceC0783K interfaceC0783K, Object obj) {
        d3.i.e("descriptor", interfaceC0783K);
        int i5 = (interfaceC0783K.F() != null ? 1 : 0) + (interfaceC0783K.d0() != null ? 1 : 0);
        boolean zT = interfaceC0783K.T();
        AbstractC0647C abstractC0647C = (AbstractC0647C) this.f5265c;
        if (zT) {
            if (i5 == 0) {
                return new C0651G(abstractC0647C, interfaceC0783K);
            }
            if (i5 == 1) {
                return new C0653I(abstractC0647C, interfaceC0783K);
            }
            if (i5 == 2) {
                return new C0655K(abstractC0647C, interfaceC0783K);
            }
        } else {
            if (i5 == 0) {
                return new C0666W(abstractC0647C, interfaceC0783K);
            }
            if (i5 == 1) {
                return new C0669Z(abstractC0647C, interfaceC0783K);
            }
            if (i5 == 2) {
                return new C0675c0(abstractC0647C, interfaceC0783K);
            }
        }
        throw new Q2.d("Unsupported property: " + interfaceC0783K, 2);
    }

    @Override // K.r
    public boolean i(View view) {
        SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) this.f5265c;
        if (!swipeDismissBehavior.s(view)) {
            return false;
        }
        WeakHashMap weakHashMap = Q.f940a;
        boolean z4 = view.getLayoutDirection() == 1;
        int i5 = swipeDismissBehavior.f5833d;
        view.offsetLeftAndRight((!(i5 == 0 && z4) && (i5 != 1 || z4)) ? view.getWidth() : -view.getWidth());
        view.setAlpha(0.0f);
        return true;
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0816s j() {
        return (j4.b) this.f5265c;
    }

    @Override // r3.InterfaceC0809l
    public Object k(C0890w c0890w, Object obj) {
        return null;
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r l() {
        return this;
    }

    @Override // r3.InterfaceC0809l
    public Object m(Object obj, InterfaceC0821x interfaceC0821x) {
        return null;
    }

    @Override // h0.InterfaceC0434e
    public void n() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r o(List list) {
        return this;
    }

    @Override // r3.InterfaceC0809l
    public Object p(M m5, Object obj) {
        return v(m5, obj);
    }

    @Override // h0.InterfaceC0434e
    public void q(int i5, Object obj) {
        String str;
        switch (i5) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case 11:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i5 == 6 || i5 == 7 || i5 == 8) {
            Log.e("ProfileInstaller", str, (Throwable) obj);
        } else {
            Log.d("ProfileInstaller", str);
        }
        ((ProfileInstallReceiver) this.f5265c).setResultCode(i5);
    }

    @Override // q4.a
    public Iterable r(Object obj) {
        q3.n nVar = (q3.n) this.f5265c;
        d3.i.e("this$0", nVar);
        Collection collectionJ = ((InterfaceC0802e) obj).H().j();
        d3.i.d("it.typeConstructor.supertypes", collectionJ);
        ArrayList arrayList = new ArrayList();
        Iterator it = collectionJ.iterator();
        while (it.hasNext()) {
            InterfaceC0804g interfaceC0804gI = ((AbstractC0468v) it.next()).J0().i();
            InterfaceC0804g interfaceC0804gA = interfaceC0804gI != null ? interfaceC0804gI.a() : null;
            InterfaceC0802e interfaceC0802e = interfaceC0804gA instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gA : null;
            E3.j jVarF = interfaceC0802e != null ? nVar.f(interfaceC0802e) : null;
            if (jVarF != null) {
                arrayList.add(jVarF);
            }
        }
        return arrayList;
    }

    @Override // r3.InterfaceC0809l
    public Object s(InterfaceC0775C interfaceC0775C, Object obj) {
        return null;
    }

    @Override // r3.InterfaceC0809l
    public Object t(InterfaceC0789Q interfaceC0789Q, Object obj) {
        return null;
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r u(InterfaceC0807j interfaceC0807j) {
        d3.i.e("owner", interfaceC0807j);
        return this;
    }

    @Override // r3.InterfaceC0809l
    public Object v(InterfaceC0816s interfaceC0816s, Object obj) {
        d3.i.e("descriptor", interfaceC0816s);
        return new C0649E((AbstractC0647C) this.f5265c, interfaceC0816s);
    }

    @Override // r3.InterfaceC0809l
    public Object w(f4.t tVar, Object obj) {
        return null;
    }

    @Override // r3.InterfaceC0809l
    public Object x(InterfaceC0806i interfaceC0806i, Object obj) {
        return v(interfaceC0806i, obj);
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r y(InterfaceC0845h interfaceC0845h) {
        d3.i.e("additionalAnnotations", interfaceC0845h);
        return this;
    }

    @Override // r3.InterfaceC0815r
    public InterfaceC0815r z(int i5) {
        B.f.x(i5, "modality");
        return this;
    }

    public w(AbstractC0647C abstractC0647C) {
        d3.i.e("container", abstractC0647C);
        this.f5265c = abstractC0647C;
    }

    public w(int i5) {
        this.f5265c = new ArrayList(i5);
    }

    public w(int i5, boolean z4) {
        switch (i5) {
            case 19:
                this.f5265c = new CountDownLatch(1);
                break;
            default:
                this.f5265c = new HashSet();
                break;
        }
    }
}
