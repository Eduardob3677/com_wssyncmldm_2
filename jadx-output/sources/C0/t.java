package C0;

import J.I;
import J.Q;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import h0.AbstractC0432c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
import o.AbstractC0715d;
import o.C0713b;
import o.C0716e;

/* loaded from: classes.dex */
public abstract class t implements Cloneable {

    /* renamed from: w, reason: collision with root package name */
    public static final int[] f303w = {2, 1, 3, 4};

    /* renamed from: x, reason: collision with root package name */
    public static final Z0.h f304x = new Z0.h(1);

    /* renamed from: y, reason: collision with root package name */
    public static final ThreadLocal f305y = new ThreadLocal();

    /* renamed from: m, reason: collision with root package name */
    public ArrayList f315m;
    public ArrayList n;

    /* renamed from: u, reason: collision with root package name */
    public Z0.j f322u;

    /* renamed from: c, reason: collision with root package name */
    public final String f306c = getClass().getName();

    /* renamed from: d, reason: collision with root package name */
    public long f307d = -1;

    /* renamed from: e, reason: collision with root package name */
    public long f308e = -1;
    public TimeInterpolator f = null;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f309g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f310h = new ArrayList();

    /* renamed from: i, reason: collision with root package name */
    public com.google.firebase.messaging.p f311i = new com.google.firebase.messaging.p(1);

    /* renamed from: j, reason: collision with root package name */
    public com.google.firebase.messaging.p f312j = new com.google.firebase.messaging.p(1);

    /* renamed from: k, reason: collision with root package name */
    public y f313k = null;

    /* renamed from: l, reason: collision with root package name */
    public final int[] f314l = f303w;

    /* renamed from: o, reason: collision with root package name */
    public final ArrayList f316o = new ArrayList();

    /* renamed from: p, reason: collision with root package name */
    public int f317p = 0;

    /* renamed from: q, reason: collision with root package name */
    public boolean f318q = false;

    /* renamed from: r, reason: collision with root package name */
    public boolean f319r = false;

    /* renamed from: s, reason: collision with root package name */
    public ArrayList f320s = null;

    /* renamed from: t, reason: collision with root package name */
    public ArrayList f321t = new ArrayList();

    /* renamed from: v, reason: collision with root package name */
    public Z0.h f323v = f304x;

    public static void c(com.google.firebase.messaging.p pVar, View view, z zVar) {
        ((C0713b) pVar.f6258d).put(view, zVar);
        int id = view.getId();
        if (id >= 0) {
            SparseArray sparseArray = (SparseArray) pVar.f6259e;
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        WeakHashMap weakHashMap = Q.f940a;
        String strK = I.k(view);
        if (strK != null) {
            C0713b c0713b = (C0713b) pVar.f6260g;
            if (c0713b.containsKey(strK)) {
                c0713b.put(strK, null);
            } else {
                c0713b.put(strK, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                C0716e c0716e = (C0716e) pVar.f;
                if (c0716e.f8417c) {
                    c0716e.c();
                }
                if (AbstractC0715d.b(c0716e.f8418d, c0716e.f, itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    c0716e.e(itemIdAtPosition, view);
                    return;
                }
                View view2 = (View) c0716e.d(itemIdAtPosition, null);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    c0716e.e(itemIdAtPosition, null);
                }
            }
        }
    }

    public static C0713b p() {
        ThreadLocal threadLocal = f305y;
        C0713b c0713b = (C0713b) threadLocal.get();
        if (c0713b != null) {
            return c0713b;
        }
        C0713b c0713b2 = new C0713b();
        threadLocal.set(c0713b2);
        return c0713b2;
    }

    public static boolean u(z zVar, z zVar2, String str) {
        Object obj = zVar.f336a.get(str);
        Object obj2 = zVar2.f336a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    public void A(long j3) {
        this.f308e = j3;
    }

    public void B(Z0.j jVar) {
        this.f322u = jVar;
    }

    public void C(TimeInterpolator timeInterpolator) {
        this.f = timeInterpolator;
    }

    public void D(Z0.h hVar) {
        if (hVar == null) {
            this.f323v = f304x;
        } else {
            this.f323v = hVar;
        }
    }

    public void E() {
    }

    public void F(long j3) {
        this.f307d = j3;
    }

    public final void G() {
        if (this.f317p == 0) {
            ArrayList arrayList = this.f320s;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f320s.clone();
                int size = arrayList2.size();
                for (int i5 = 0; i5 < size; i5++) {
                    ((s) arrayList2.get(i5)).d(this);
                }
            }
            this.f319r = false;
        }
        this.f317p++;
    }

    public String H(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.f308e != -1) {
            str2 = str2 + "dur(" + this.f308e + ") ";
        }
        if (this.f307d != -1) {
            str2 = str2 + "dly(" + this.f307d + ") ";
        }
        if (this.f != null) {
            str2 = str2 + "interp(" + this.f + ") ";
        }
        ArrayList arrayList = this.f309g;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f310h;
        if (size <= 0 && arrayList2.size() <= 0) {
            return str2;
        }
        String strH = AbstractC0432c.h(str2, "tgts(");
        if (arrayList.size() > 0) {
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                if (i5 > 0) {
                    strH = AbstractC0432c.h(strH, ", ");
                }
                strH = strH + arrayList.get(i5);
            }
        }
        if (arrayList2.size() > 0) {
            for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                if (i6 > 0) {
                    strH = AbstractC0432c.h(strH, ", ");
                }
                strH = strH + arrayList2.get(i6);
            }
        }
        return AbstractC0432c.h(strH, ")");
    }

    public void a(s sVar) {
        if (this.f320s == null) {
            this.f320s = new ArrayList();
        }
        this.f320s.add(sVar);
    }

    public void b(View view) {
        this.f310h.add(view);
    }

    public void d() {
        ArrayList arrayList = this.f316o;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((Animator) arrayList.get(size)).cancel();
        }
        ArrayList arrayList2 = this.f320s;
        if (arrayList2 == null || arrayList2.size() <= 0) {
            return;
        }
        ArrayList arrayList3 = (ArrayList) this.f320s.clone();
        int size2 = arrayList3.size();
        for (int i5 = 0; i5 < size2; i5++) {
            ((s) arrayList3.get(i5)).a();
        }
    }

    public abstract void e(z zVar);

    public final void f(View view, boolean z4) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            z zVar = new z(view);
            if (z4) {
                h(zVar);
            } else {
                e(zVar);
            }
            zVar.f338c.add(this);
            g(zVar);
            if (z4) {
                c(this.f311i, view, zVar);
            } else {
                c(this.f312j, view, zVar);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i5 = 0; i5 < viewGroup.getChildCount(); i5++) {
                f(viewGroup.getChildAt(i5), z4);
            }
        }
    }

    public void g(z zVar) {
    }

    public abstract void h(z zVar);

    public final void i(ViewGroup viewGroup, boolean z4) {
        j(z4);
        ArrayList arrayList = this.f309g;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f310h;
        if (size <= 0 && arrayList2.size() <= 0) {
            f(viewGroup, z4);
            return;
        }
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            View viewFindViewById = viewGroup.findViewById(((Integer) arrayList.get(i5)).intValue());
            if (viewFindViewById != null) {
                z zVar = new z(viewFindViewById);
                if (z4) {
                    h(zVar);
                } else {
                    e(zVar);
                }
                zVar.f338c.add(this);
                g(zVar);
                if (z4) {
                    c(this.f311i, viewFindViewById, zVar);
                } else {
                    c(this.f312j, viewFindViewById, zVar);
                }
            }
        }
        for (int i6 = 0; i6 < arrayList2.size(); i6++) {
            View view = (View) arrayList2.get(i6);
            z zVar2 = new z(view);
            if (z4) {
                h(zVar2);
            } else {
                e(zVar2);
            }
            zVar2.f338c.add(this);
            g(zVar2);
            if (z4) {
                c(this.f311i, view, zVar2);
            } else {
                c(this.f312j, view, zVar2);
            }
        }
    }

    public final void j(boolean z4) {
        if (z4) {
            ((C0713b) this.f311i.f6258d).clear();
            ((SparseArray) this.f311i.f6259e).clear();
            ((C0716e) this.f311i.f).a();
        } else {
            ((C0713b) this.f312j.f6258d).clear();
            ((SparseArray) this.f312j.f6259e).clear();
            ((C0716e) this.f312j.f).a();
        }
    }

    @Override // 
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public t clone() {
        try {
            t tVar = (t) super.clone();
            tVar.f321t = new ArrayList();
            tVar.f311i = new com.google.firebase.messaging.p(1);
            tVar.f312j = new com.google.firebase.messaging.p(1);
            tVar.f315m = null;
            tVar.n = null;
            return tVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public Animator l(ViewGroup viewGroup, z zVar, z zVar2) {
        return null;
    }

    public void m(ViewGroup viewGroup, com.google.firebase.messaging.p pVar, com.google.firebase.messaging.p pVar2, ArrayList arrayList, ArrayList arrayList2) {
        Animator animatorL;
        int i5;
        View view;
        z zVar;
        Animator animator;
        C0713b c0713bP = p();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            z zVar2 = (z) arrayList.get(i6);
            z zVar3 = (z) arrayList2.get(i6);
            z zVar4 = null;
            if (zVar2 != null && !zVar2.f338c.contains(this)) {
                zVar2 = null;
            }
            if (zVar3 != null && !zVar3.f338c.contains(this)) {
                zVar3 = null;
            }
            if (!(zVar2 == null && zVar3 == null) && ((zVar2 == null || zVar3 == null || s(zVar2, zVar3)) && (animatorL = l(viewGroup, zVar2, zVar3)) != null)) {
                String str = this.f306c;
                if (zVar3 != null) {
                    String[] strArrQ = q();
                    view = zVar3.f337b;
                    if (strArrQ != null && strArrQ.length > 0) {
                        zVar = new z(view);
                        z zVar5 = (z) ((C0713b) pVar2.f6258d).getOrDefault(view, null);
                        i5 = size;
                        if (zVar5 != null) {
                            int i7 = 0;
                            while (i7 < strArrQ.length) {
                                HashMap map = zVar.f336a;
                                String str2 = strArrQ[i7];
                                map.put(str2, zVar5.f336a.get(str2));
                                i7++;
                                strArrQ = strArrQ;
                            }
                        }
                        int i8 = c0713bP.f8440e;
                        for (int i9 = 0; i9 < i8; i9++) {
                            animator = null;
                            r rVar = (r) c0713bP.getOrDefault((Animator) c0713bP.h(i9), null);
                            if (rVar.f300c != null && rVar.f298a == view && rVar.f299b.equals(str) && rVar.f300c.equals(zVar)) {
                                break;
                            }
                        }
                    } else {
                        i5 = size;
                        zVar = null;
                    }
                    animator = animatorL;
                    animatorL = animator;
                    zVar4 = zVar;
                } else {
                    i5 = size;
                    view = zVar2.f337b;
                }
                if (animatorL != null) {
                    C0013c c0013c = A.f247a;
                    G g5 = new G(viewGroup);
                    r rVar2 = new r();
                    rVar2.f298a = view;
                    rVar2.f299b = str;
                    rVar2.f300c = zVar4;
                    rVar2.f301d = g5;
                    rVar2.f302e = this;
                    c0713bP.put(animatorL, rVar2);
                    this.f321t.add(animatorL);
                }
            } else {
                i5 = size;
            }
            i6++;
            size = i5;
        }
        if (sparseIntArray.size() != 0) {
            for (int i10 = 0; i10 < sparseIntArray.size(); i10++) {
                Animator animator2 = (Animator) this.f321t.get(sparseIntArray.keyAt(i10));
                animator2.setStartDelay(animator2.getStartDelay() + (sparseIntArray.valueAt(i10) - Long.MAX_VALUE));
            }
        }
    }

    public final void n() {
        int i5 = this.f317p - 1;
        this.f317p = i5;
        if (i5 == 0) {
            ArrayList arrayList = this.f320s;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f320s.clone();
                int size = arrayList2.size();
                for (int i6 = 0; i6 < size; i6++) {
                    ((s) arrayList2.get(i6)).c(this);
                }
            }
            for (int i7 = 0; i7 < ((C0716e) this.f311i.f).f(); i7++) {
                View view = (View) ((C0716e) this.f311i.f).g(i7);
                if (view != null) {
                    WeakHashMap weakHashMap = Q.f940a;
                    view.setHasTransientState(false);
                }
            }
            for (int i8 = 0; i8 < ((C0716e) this.f312j.f).f(); i8++) {
                View view2 = (View) ((C0716e) this.f312j.f).g(i8);
                if (view2 != null) {
                    WeakHashMap weakHashMap2 = Q.f940a;
                    view2.setHasTransientState(false);
                }
            }
            this.f319r = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x002d, code lost:
    
        if (r3 < 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002f, code lost:
    
        if (r7 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0031, code lost:
    
        r5 = r5.n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0034, code lost:
    
        r5 = r5.f315m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003d, code lost:
    
        return (C0.z) r5.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final z o(View view, boolean z4) {
        y yVar = this.f313k;
        if (yVar != null) {
            return yVar.o(view, z4);
        }
        ArrayList arrayList = z4 ? this.f315m : this.n;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i5 = 0;
        while (true) {
            if (i5 >= size) {
                i5 = -1;
                break;
            }
            z zVar = (z) arrayList.get(i5);
            if (zVar == null) {
                return null;
            }
            if (zVar.f337b == view) {
                break;
            }
            i5++;
        }
    }

    public String[] q() {
        return null;
    }

    public final z r(View view, boolean z4) {
        y yVar = this.f313k;
        if (yVar != null) {
            return yVar.r(view, z4);
        }
        return (z) ((C0713b) (z4 ? this.f311i : this.f312j).f6258d).getOrDefault(view, null);
    }

    public boolean s(z zVar, z zVar2) {
        if (zVar == null || zVar2 == null) {
            return false;
        }
        String[] strArrQ = q();
        if (strArrQ == null) {
            Iterator it = zVar.f336a.keySet().iterator();
            while (it.hasNext()) {
                if (u(zVar, zVar2, (String) it.next())) {
                }
            }
            return false;
        }
        for (String str : strArrQ) {
            if (!u(zVar, zVar2, str)) {
            }
        }
        return false;
        return true;
    }

    public final boolean t(View view) {
        int id = view.getId();
        ArrayList arrayList = this.f309g;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f310h;
        return (size == 0 && arrayList2.size() == 0) || arrayList.contains(Integer.valueOf(id)) || arrayList2.contains(view);
    }

    public final String toString() {
        return H("");
    }

    public void v(View view) {
        if (this.f319r) {
            return;
        }
        ArrayList arrayList = this.f316o;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((Animator) arrayList.get(size)).pause();
        }
        ArrayList arrayList2 = this.f320s;
        if (arrayList2 != null && arrayList2.size() > 0) {
            ArrayList arrayList3 = (ArrayList) this.f320s.clone();
            int size2 = arrayList3.size();
            for (int i5 = 0; i5 < size2; i5++) {
                ((s) arrayList3.get(i5)).b();
            }
        }
        this.f318q = true;
    }

    public void w(s sVar) {
        ArrayList arrayList = this.f320s;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(sVar);
        if (this.f320s.size() == 0) {
            this.f320s = null;
        }
    }

    public void x(View view) {
        this.f310h.remove(view);
    }

    public void y(ViewGroup viewGroup) {
        if (this.f318q) {
            if (!this.f319r) {
                ArrayList arrayList = this.f316o;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((Animator) arrayList.get(size)).resume();
                }
                ArrayList arrayList2 = this.f320s;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    ArrayList arrayList3 = (ArrayList) this.f320s.clone();
                    int size2 = arrayList3.size();
                    for (int i5 = 0; i5 < size2; i5++) {
                        ((s) arrayList3.get(i5)).e();
                    }
                }
            }
            this.f318q = false;
        }
    }

    public void z() {
        G();
        C0713b c0713bP = p();
        Iterator it = this.f321t.iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (c0713bP.containsKey(animator)) {
                G();
                if (animator != null) {
                    animator.addListener(new p(this, c0713bP));
                    long j3 = this.f308e;
                    if (j3 >= 0) {
                        animator.setDuration(j3);
                    }
                    long j5 = this.f307d;
                    if (j5 >= 0) {
                        animator.setStartDelay(animator.getStartDelay() + j5);
                    }
                    TimeInterpolator timeInterpolator = this.f;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new q(0, this));
                    animator.start();
                }
            }
        }
        this.f321t.clear();
        n();
    }
}
