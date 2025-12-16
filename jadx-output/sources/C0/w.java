package C0;

import android.animation.Animator;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowId;
import java.util.ArrayList;
import java.util.Iterator;
import o.C0713b;
import o.C0716e;

/* loaded from: classes.dex */
public final class w implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: c, reason: collision with root package name */
    public t f326c;

    /* renamed from: d, reason: collision with root package name */
    public ViewGroup f327d;

    /* JADX WARN: Removed duplicated region for block: B:102:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01dc A[EDGE_INSN: B:139:0x01dc->B:92:0x01dc BREAK  A[LOOP:1: B:19:0x0088->B:91:0x01d6], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01e1  */
    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onPreDraw() {
        ArrayList arrayList;
        t tVar;
        int i5;
        C0713b c0713b;
        C0713b c0713b2;
        int i6;
        int[] iArr;
        int i7;
        int i8;
        int i9;
        r rVar;
        View view;
        z zVar;
        int i10;
        View view2;
        int i11 = 1;
        ViewGroup viewGroup = this.f327d;
        viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
        viewGroup.removeOnAttachStateChangeListener(this);
        ArrayList arrayList2 = x.f330c;
        ViewGroup viewGroup2 = this.f327d;
        if (!arrayList2.remove(viewGroup2)) {
            return true;
        }
        C0713b c0713bB = x.b();
        Long l5 = null;
        ArrayList arrayList3 = (ArrayList) c0713bB.getOrDefault(viewGroup2, null);
        if (arrayList3 != null) {
            arrayList = arrayList3.size() > 0 ? new ArrayList(arrayList3) : null;
            tVar = this.f326c;
            arrayList3.add(tVar);
            tVar.a(new v(this, c0713bB));
            i5 = 0;
            tVar.i(viewGroup2, false);
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((t) it.next()).y(viewGroup2);
                }
            }
            tVar.f315m = new ArrayList();
            tVar.n = new ArrayList();
            com.google.firebase.messaging.p pVar = tVar.f311i;
            com.google.firebase.messaging.p pVar2 = tVar.f312j;
            c0713b = new C0713b((C0713b) pVar.f6258d);
            c0713b2 = new C0713b((C0713b) pVar2.f6258d);
            i6 = 0;
            while (true) {
                iArr = tVar.f314l;
                if (i6 < iArr.length) {
                    break;
                }
                int i12 = iArr[i6];
                if (i12 == i11) {
                    for (int i13 = c0713b.f8440e - i11; i13 >= 0; i13--) {
                        View view3 = (View) c0713b.h(i13);
                        if (view3 != null && tVar.t(view3) && (zVar = (z) c0713b2.remove(view3)) != null && tVar.t(zVar.f337b)) {
                            tVar.f315m.add((z) c0713b.i(i13));
                            tVar.n.add(zVar);
                        }
                    }
                } else if (i12 != 2) {
                    if (i12 == 3) {
                        SparseArray sparseArray = (SparseArray) pVar.f6259e;
                        SparseArray sparseArray2 = (SparseArray) pVar2.f6259e;
                        int size = sparseArray.size();
                        for (int i14 = 0; i14 < size; i14 += i11) {
                            View view4 = (View) sparseArray.valueAt(i14);
                            if (view4 != null && tVar.t(view4) && (view2 = (View) sparseArray2.get(sparseArray.keyAt(i14))) != null && tVar.t(view2)) {
                                z zVar2 = (z) c0713b.getOrDefault(view4, null);
                                z zVar3 = (z) c0713b2.getOrDefault(view2, null);
                                if (zVar2 != null && zVar3 != null) {
                                    tVar.f315m.add(zVar2);
                                    tVar.n.add(zVar3);
                                    c0713b.remove(view4);
                                    c0713b2.remove(view2);
                                    i11 = 1;
                                }
                            }
                        }
                    } else if (i12 == 4) {
                        C0716e c0716e = (C0716e) pVar.f;
                        int iF = c0716e.f();
                        int i15 = i5;
                        while (i15 < iF) {
                            View view5 = (View) c0716e.g(i15);
                            if (view5 != null && tVar.t(view5)) {
                                if (c0716e.f8417c) {
                                    c0716e.c();
                                }
                                View view6 = (View) ((C0716e) pVar2.f).d(c0716e.f8418d[i15], l5);
                                if (view6 != null && tVar.t(view6)) {
                                    z zVar4 = (z) c0713b.getOrDefault(view5, l5);
                                    z zVar5 = (z) c0713b2.getOrDefault(view6, l5);
                                    if (zVar4 != null && zVar5 != null) {
                                        tVar.f315m.add(zVar4);
                                        tVar.n.add(zVar5);
                                        c0713b.remove(view5);
                                        c0713b2.remove(view6);
                                    }
                                }
                            }
                            i15 += i11;
                            l5 = null;
                        }
                    }
                    i10 = i11;
                    i6 += i10;
                    i11 = i10;
                    i5 = 0;
                    l5 = null;
                } else {
                    C0713b c0713b3 = (C0713b) pVar.f6260g;
                    int i16 = c0713b3.f8440e;
                    for (int i17 = 0; i17 < i16; i17++) {
                        View view7 = (View) c0713b3.j(i17);
                        if (view7 != null && tVar.t(view7)) {
                            View view8 = (View) ((C0713b) pVar2.f6260g).getOrDefault(c0713b3.h(i17), null);
                            if (view8 != null && tVar.t(view8)) {
                                z zVar6 = (z) c0713b.getOrDefault(view7, null);
                                z zVar7 = (z) c0713b2.getOrDefault(view8, null);
                                if (zVar6 != null && zVar7 != null) {
                                    tVar.f315m.add(zVar6);
                                    tVar.n.add(zVar7);
                                    c0713b.remove(view7);
                                    c0713b2.remove(view8);
                                }
                            }
                        }
                    }
                }
                i10 = 1;
                i6 += i10;
                i11 = i10;
                i5 = 0;
                l5 = null;
            }
            for (i7 = 0; i7 < c0713b.f8440e; i7++) {
                z zVar8 = (z) c0713b.j(i7);
                if (tVar.t(zVar8.f337b)) {
                    tVar.f315m.add(zVar8);
                    tVar.n.add(null);
                }
            }
            for (i8 = 0; i8 < c0713b2.f8440e; i8++) {
                z zVar9 = (z) c0713b2.j(i8);
                if (tVar.t(zVar9.f337b)) {
                    tVar.n.add(zVar9);
                    tVar.f315m.add(null);
                }
            }
            C0713b c0713bP = t.p();
            int i18 = c0713bP.f8440e;
            C0013c c0013c = A.f247a;
            WindowId windowId = viewGroup2.getWindowId();
            for (i9 = i18 - 1; i9 >= 0; i9--) {
                Animator animator = (Animator) c0713bP.h(i9);
                if (animator != null && (rVar = (r) c0713bP.getOrDefault(animator, null)) != null && (view = rVar.f298a) != null) {
                    G g5 = rVar.f301d;
                    if ((g5 instanceof G) && g5.f262a.equals(windowId)) {
                        z zVarR = tVar.r(view, true);
                        z zVarO = tVar.o(view, true);
                        if (zVarR == null && zVarO == null) {
                            zVarO = (z) ((C0713b) tVar.f312j.f6258d).getOrDefault(view, null);
                        }
                        if ((zVarR != null || zVarO != null) && rVar.f302e.s(rVar.f300c, zVarO)) {
                            if (animator.isRunning() || animator.isStarted()) {
                                animator.cancel();
                            } else {
                                c0713bP.remove(animator);
                            }
                        }
                    }
                }
            }
            tVar.m(viewGroup2, tVar.f311i, tVar.f312j, tVar.f315m, tVar.n);
            tVar.z();
            return true;
        }
        arrayList3 = new ArrayList();
        c0713bB.put(viewGroup2, arrayList3);
        tVar = this.f326c;
        arrayList3.add(tVar);
        tVar.a(new v(this, c0713bB));
        i5 = 0;
        tVar.i(viewGroup2, false);
        if (arrayList != null) {
        }
        tVar.f315m = new ArrayList();
        tVar.n = new ArrayList();
        com.google.firebase.messaging.p pVar3 = tVar.f311i;
        com.google.firebase.messaging.p pVar22 = tVar.f312j;
        c0713b = new C0713b((C0713b) pVar3.f6258d);
        c0713b2 = new C0713b((C0713b) pVar22.f6258d);
        i6 = 0;
        while (true) {
            iArr = tVar.f314l;
            if (i6 < iArr.length) {
            }
            i6 += i10;
            i11 = i10;
            i5 = 0;
            l5 = null;
        }
        while (i7 < c0713b.f8440e) {
        }
        while (i8 < c0713b2.f8440e) {
        }
        C0713b c0713bP2 = t.p();
        int i182 = c0713bP2.f8440e;
        C0013c c0013c2 = A.f247a;
        WindowId windowId2 = viewGroup2.getWindowId();
        while (i9 >= 0) {
        }
        tVar.m(viewGroup2, tVar.f311i, tVar.f312j, tVar.f315m, tVar.n);
        tVar.z();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewGroup viewGroup = this.f327d;
        viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
        viewGroup.removeOnAttachStateChangeListener(this);
        ArrayList arrayList = x.f330c;
        ViewGroup viewGroup2 = this.f327d;
        arrayList.remove(viewGroup2);
        ArrayList arrayList2 = (ArrayList) x.b().getOrDefault(viewGroup2, null);
        if (arrayList2 != null && arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ((t) it.next()).y(viewGroup2);
            }
        }
        this.f326c.j(true);
    }
}
