package androidx.fragment.app;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.samsung.android.lib.episode.EternalContract;
import com.wssyncmldm.R;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import o.C0713b;
import o.C0719h;

/* renamed from: androidx.fragment.app.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0120l {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f3912a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f3913b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f3914c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3915d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f3916e;

    public C0120l(ViewGroup viewGroup) {
        d3.i.e("container", viewGroup);
        this.f3912a = viewGroup;
        this.f3913b = new ArrayList();
        this.f3914c = new ArrayList();
    }

    public static void a(View view, ArrayList arrayList) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (J.V.b(viewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = viewGroup.getChildAt(i5);
            if (childAt.getVisibility() == 0) {
                a(childAt, arrayList);
            }
        }
    }

    public static void i(C0713b c0713b, View view) {
        WeakHashMap weakHashMap = J.Q.f940a;
        String strK = J.I.k(view);
        if (strK != null) {
            c0713b.put(strK, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = viewGroup.getChildAt(i5);
                if (childAt.getVisibility() == 0) {
                    i(c0713b, childAt);
                }
            }
        }
    }

    public static final C0120l l(ViewGroup viewGroup, Z z4) {
        d3.i.e("container", viewGroup);
        d3.i.e("fragmentManager", z4);
        d3.i.d("fragmentManager.specialEffectsControllerFactory", z4.E());
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof C0120l) {
            return (C0120l) tag;
        }
        C0120l c0120l = new C0120l(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, c0120l);
        return c0120l;
    }

    public static void n(C0713b c0713b, Collection collection) {
        Set setEntrySet = c0713b.entrySet();
        d3.i.d(EternalContract.EXTRA_ENTRIES, setEntrySet);
        Iterator it = ((C0719h) setEntrySet).iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            d3.i.e("entry", entry);
            View view = (View) entry.getValue();
            WeakHashMap weakHashMap = J.Q.f940a;
            if (!Boolean.valueOf(R2.m.H0(collection, J.I.k(view))).booleanValue()) {
                it.remove();
            }
        }
    }

    public final void b(int i5, int i6, g0 g0Var) {
        synchronized (this.f3913b) {
            F.f fVar = new F.f();
            Fragment fragment = g0Var.f3867c;
            d3.i.d("fragmentStateManager.fragment", fragment);
            u0 u0VarJ = j(fragment);
            if (u0VarJ != null) {
                u0VarJ.c(i5, i6);
                return;
            }
            u0 u0Var = new u0(i5, i6, g0Var, fVar);
            this.f3913b.add(u0Var);
            u0Var.f3955d.add(new t0(this, u0Var, 0));
            u0Var.f3955d.add(new t0(this, u0Var, 1));
        }
    }

    public final void c(int i5, g0 g0Var) {
        B.f.x(i5, "finalState");
        d3.i.e("fragmentStateManager", g0Var);
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + g0Var.f3867c);
        }
        b(i5, 2, g0Var);
    }

    public final void d(g0 g0Var) {
        d3.i.e("fragmentStateManager", g0Var);
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + g0Var.f3867c);
        }
        b(3, 1, g0Var);
    }

    public final void e(g0 g0Var) {
        d3.i.e("fragmentStateManager", g0Var);
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + g0Var.f3867c);
        }
        b(1, 3, g0Var);
    }

    public final void f(g0 g0Var) {
        d3.i.e("fragmentStateManager", g0Var);
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + g0Var.f3867c);
        }
        b(2, 1, g0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x0504  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x050f  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0531 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:370:0x051d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(ArrayList arrayList, final boolean z4) throws Resources.NotFoundException {
        String str;
        Object next;
        Object objPrevious;
        String str2;
        ArrayList arrayList2;
        ArrayList arrayList3;
        LinkedHashMap linkedHashMap;
        u0 u0Var;
        String str3;
        u0 u0Var2;
        boolean z5;
        u0 u0Var3;
        C0713b c0713b;
        u0 u0Var4;
        String str4;
        C0713b c0713b2;
        View view;
        View view2;
        String str5;
        String str6;
        ArrayList arrayList4;
        LinkedHashMap linkedHashMap2;
        Rect rect;
        Q2.e eVar;
        Object obj;
        View view3;
        final C0120l c0120l;
        int i5 = 0;
        Iterator it = arrayList.iterator();
        while (true) {
            str = "operation.fragment.mView";
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            u0 u0Var5 = (u0) next;
            View view4 = u0Var5.f3954c.mView;
            d3.i.d("operation.fragment.mView", view4);
            if (W1.a.b(view4) == 2 && u0Var5.f3952a != 2) {
                break;
            }
        }
        final u0 u0Var6 = (u0) next;
        ListIterator listIterator = arrayList.listIterator(arrayList.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
            u0 u0Var7 = (u0) objPrevious;
            View view5 = u0Var7.f3954c.mView;
            d3.i.d("operation.fragment.mView", view5);
            if (W1.a.b(view5) != 2 && u0Var7.f3952a == 2) {
                break;
            }
        }
        final u0 u0Var8 = (u0) objPrevious;
        String str7 = "FragmentManager";
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Executing operations from " + u0Var6 + " to " + u0Var8);
        }
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayListH1 = R2.m.h1(arrayList);
        Fragment fragment = ((u0) R2.m.U0(arrayList)).f3954c;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            C0133z c0133z = ((u0) it2.next()).f3954c.mAnimationInfo;
            C0133z c0133z2 = fragment.mAnimationInfo;
            c0133z.f3971b = c0133z2.f3971b;
            c0133z.f3972c = c0133z2.f3972c;
            c0133z.f3973d = c0133z2.f3973d;
            c0133z.f3974e = c0133z2.f3974e;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            u0 u0Var9 = (u0) it3.next();
            F.f fVar = new F.f();
            u0Var9.d();
            LinkedHashSet linkedHashSet = u0Var9.f3956e;
            linkedHashSet.add(fVar);
            arrayList5.add(new C0115g(u0Var9, fVar, z4));
            F.f fVar2 = new F.f();
            u0Var9.d();
            linkedHashSet.add(fVar2);
            arrayList6.add(new C0117i(u0Var9, fVar2, z4, !z4 ? u0Var9 != u0Var8 : u0Var9 != u0Var6));
            u0Var9.f3955d.add(new RunnableC0112d(arrayListH1, u0Var9, this, i5));
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        ArrayList arrayList7 = new ArrayList();
        Iterator it4 = arrayList6.iterator();
        while (it4.hasNext()) {
            Object next2 = it4.next();
            if (!((C0117i) next2).b()) {
                arrayList7.add(next2);
            }
        }
        ArrayList arrayList8 = new ArrayList();
        Iterator it5 = arrayList7.iterator();
        while (it5.hasNext()) {
            Object next3 = it5.next();
            if (((C0117i) next3).c() != null) {
                arrayList8.add(next3);
            }
        }
        Iterator it6 = arrayList8.iterator();
        r0 r0Var = null;
        while (it6.hasNext()) {
            C0117i c0117i = (C0117i) it6.next();
            r0 r0VarC = c0117i.c();
            if (r0Var != null && r0VarC != r0Var) {
                throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + c0117i.f3870a.f3954c + " returned Transition " + c0117i.f3876c + " which uses a different Transition type than other Fragments.").toString());
            }
            r0Var = r0VarC;
        }
        ViewGroup viewGroup = this.f3912a;
        if (r0Var == null) {
            Iterator it7 = arrayList6.iterator();
            while (it7.hasNext()) {
                C0117i c0117i2 = (C0117i) it7.next();
                linkedHashMap3.put(c0117i2.f3870a, Boolean.FALSE);
                c0117i2.a();
            }
            arrayList2 = arrayList5;
            z5 = false;
            linkedHashMap = linkedHashMap3;
            u0Var2 = u0Var6;
            u0Var = u0Var8;
            str3 = "FragmentManager";
            str2 = " to ";
            arrayList3 = arrayListH1;
        } else {
            View view6 = new View(viewGroup.getContext());
            Rect rect2 = new Rect();
            ArrayList arrayList9 = new ArrayList();
            str2 = " to ";
            ArrayList arrayList10 = new ArrayList();
            C0713b c0713b3 = new C0713b();
            Iterator it8 = arrayList6.iterator();
            arrayList2 = arrayList5;
            Object obj2 = null;
            View view7 = null;
            boolean z6 = false;
            while (it8.hasNext()) {
                ArrayList arrayList11 = arrayListH1;
                Object obj3 = ((C0117i) it8.next()).f3878e;
                if (obj3 == null || u0Var6 == null || u0Var8 == null) {
                    str5 = str;
                    str6 = str7;
                    arrayList4 = arrayList6;
                    Rect rect3 = rect2;
                    linkedHashMap2 = linkedHashMap3;
                    rect = rect3;
                    arrayListH1 = arrayList11;
                    str = str5;
                    arrayList6 = arrayList4;
                    str7 = str6;
                    LinkedHashMap linkedHashMap4 = linkedHashMap2;
                    rect2 = rect;
                    linkedHashMap3 = linkedHashMap4;
                } else {
                    Object objR = r0Var.r(r0Var.f(obj3));
                    Fragment fragment2 = u0Var8.f3954c;
                    str5 = str;
                    ArrayList<String> sharedElementSourceNames = fragment2.getSharedElementSourceNames();
                    arrayList4 = arrayList6;
                    d3.i.d("lastIn.fragment.sharedElementSourceNames", sharedElementSourceNames);
                    Fragment fragment3 = u0Var6.f3954c;
                    LinkedHashMap linkedHashMap5 = linkedHashMap3;
                    ArrayList<String> sharedElementSourceNames2 = fragment3.getSharedElementSourceNames();
                    View view8 = view6;
                    d3.i.d("firstOut.fragment.sharedElementSourceNames", sharedElementSourceNames2);
                    ArrayList<String> sharedElementTargetNames = fragment3.getSharedElementTargetNames();
                    Rect rect4 = rect2;
                    d3.i.d("firstOut.fragment.sharedElementTargetNames", sharedElementTargetNames);
                    int size = sharedElementTargetNames.size();
                    int i6 = 0;
                    while (i6 < size) {
                        int i7 = size;
                        int iIndexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i6));
                        ArrayList<String> arrayList12 = sharedElementTargetNames;
                        if (iIndexOf != -1) {
                            sharedElementSourceNames.set(iIndexOf, sharedElementSourceNames2.get(i6));
                        }
                        i6++;
                        size = i7;
                        sharedElementTargetNames = arrayList12;
                    }
                    ArrayList<String> sharedElementTargetNames2 = fragment2.getSharedElementTargetNames();
                    d3.i.d("lastIn.fragment.sharedElementTargetNames", sharedElementTargetNames2);
                    if (z4) {
                        fragment3.getEnterTransitionCallback();
                        fragment2.getExitTransitionCallback();
                        eVar = new Q2.e(null, null);
                    } else {
                        fragment3.getExitTransitionCallback();
                        fragment2.getEnterTransitionCallback();
                        eVar = new Q2.e(null, null);
                    }
                    B.f.F(eVar.f2212c);
                    B.f.F(eVar.f2213d);
                    int i8 = 0;
                    for (int size2 = sharedElementSourceNames.size(); i8 < size2; size2 = size2) {
                        c0713b3.put((String) sharedElementSourceNames.get(i8), (String) sharedElementTargetNames2.get(i8));
                        i8++;
                    }
                    if (Log.isLoggable(str7, 2)) {
                        Log.v(str7, ">>> entering view names <<<");
                        for (Iterator<String> it9 = sharedElementTargetNames2.iterator(); it9.hasNext(); it9 = it9) {
                            Log.v(str7, "Name: " + it9.next());
                        }
                        Log.v(str7, ">>> exiting view names <<<");
                        for (Iterator<String> it10 = sharedElementSourceNames.iterator(); it10.hasNext(); it10 = it10) {
                            Log.v(str7, "Name: " + it10.next());
                        }
                    }
                    C0713b c0713b4 = new C0713b();
                    View view9 = fragment3.mView;
                    d3.i.d("firstOut.fragment.mView", view9);
                    i(c0713b4, view9);
                    com.google.android.gms.internal.p000firebaseauthapi.X.l(c0713b4, sharedElementSourceNames);
                    com.google.android.gms.internal.p000firebaseauthapi.X.l(c0713b3, c0713b4.keySet());
                    final C0713b c0713b5 = new C0713b();
                    View view10 = fragment2.mView;
                    str6 = str7;
                    d3.i.d("lastIn.fragment.mView", view10);
                    i(c0713b5, view10);
                    com.google.android.gms.internal.p000firebaseauthapi.X.l(c0713b5, sharedElementTargetNames2);
                    com.google.android.gms.internal.p000firebaseauthapi.X.l(c0713b5, c0713b3.values());
                    p0 p0Var = k0.f3910a;
                    int i9 = -1;
                    for (int i10 = c0713b3.f8440e - 1; i9 < i10; i10--) {
                        if (!c0713b5.containsKey((String) c0713b3.j(i10))) {
                            c0713b3.i(i10);
                        }
                        i9 = -1;
                    }
                    Set setKeySet = c0713b3.keySet();
                    d3.i.d("sharedElementNameMapping.keys", setKeySet);
                    n(c0713b4, setKeySet);
                    Collection collectionValues = c0713b3.values();
                    d3.i.d("sharedElementNameMapping.values", collectionValues);
                    n(c0713b5, collectionValues);
                    if (c0713b3.isEmpty()) {
                        arrayList9.clear();
                        arrayList10.clear();
                        arrayListH1 = arrayList11;
                        str = str5;
                        arrayList6 = arrayList4;
                        linkedHashMap3 = linkedHashMap5;
                        view6 = view8;
                        rect2 = rect4;
                        str7 = str6;
                        obj2 = null;
                    } else {
                        if (z4) {
                            fragment3.getEnterTransitionCallback();
                        } else {
                            fragment2.getEnterTransitionCallback();
                        }
                        J.r.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.f
                            @Override // java.lang.Runnable
                            public final void run() {
                                d3.i.e("$lastInViews", c0713b5);
                                Fragment fragment4 = u0Var8.f3954c;
                                Fragment fragment5 = u0Var6.f3954c;
                                p0 p0Var2 = k0.f3910a;
                                d3.i.e("inFragment", fragment4);
                                d3.i.e("outFragment", fragment5);
                                if (z4) {
                                    fragment5.getEnterTransitionCallback();
                                } else {
                                    fragment4.getEnterTransitionCallback();
                                }
                            }
                        });
                        arrayList9.addAll(c0713b4.values());
                        if (!sharedElementSourceNames.isEmpty()) {
                            View view11 = (View) c0713b4.getOrDefault(sharedElementSourceNames.get(0), null);
                            obj = objR;
                            r0Var.m(view11, obj);
                            view7 = view11;
                        } else {
                            obj = objR;
                        }
                        arrayList10.addAll(c0713b5.values());
                        int i11 = 1;
                        if (!(!sharedElementTargetNames2.isEmpty()) || (view3 = (View) c0713b5.getOrDefault(sharedElementTargetNames2.get(0), null)) == null) {
                            rect = rect4;
                            view6 = view8;
                        } else {
                            rect = rect4;
                            J.r.a(viewGroup, new RunnableC0112d(r0Var, view3, rect, i11));
                            view6 = view8;
                            z6 = true;
                        }
                        r0Var.p(obj, view6, arrayList9);
                        r0Var.l(obj, null, null, obj, arrayList10);
                        Boolean bool = Boolean.TRUE;
                        linkedHashMap2 = linkedHashMap5;
                        linkedHashMap2.put(u0Var6, bool);
                        linkedHashMap2.put(u0Var8, bool);
                        obj2 = obj;
                        arrayListH1 = arrayList11;
                        str = str5;
                        arrayList6 = arrayList4;
                        str7 = str6;
                        LinkedHashMap linkedHashMap42 = linkedHashMap2;
                        rect2 = rect;
                        linkedHashMap3 = linkedHashMap42;
                    }
                }
            }
            String str8 = str;
            String str9 = str7;
            ArrayList arrayList13 = arrayList6;
            arrayList3 = arrayListH1;
            Rect rect5 = rect2;
            linkedHashMap = linkedHashMap3;
            ArrayList arrayList14 = new ArrayList();
            Iterator it11 = arrayList13.iterator();
            Object objJ = null;
            Object objJ2 = null;
            while (it11.hasNext()) {
                C0117i c0117i3 = (C0117i) it11.next();
                boolean zB = c0117i3.b();
                Iterator it12 = it11;
                u0 u0Var10 = c0117i3.f3870a;
                if (zB) {
                    c0713b2 = c0713b3;
                    linkedHashMap.put(u0Var10, Boolean.FALSE);
                    c0117i3.a();
                } else {
                    c0713b2 = c0713b3;
                    Object objF = r0Var.f(c0117i3.f3876c);
                    boolean z7 = obj2 != null && (u0Var10 == u0Var6 || u0Var10 == u0Var8);
                    if (objF != null) {
                        u0 u0Var11 = u0Var8;
                        ArrayList arrayList15 = new ArrayList();
                        Object obj4 = obj2;
                        View view12 = u0Var10.f3954c.mView;
                        Object obj5 = objJ2;
                        String str10 = str8;
                        d3.i.d(str10, view12);
                        a(view12, arrayList15);
                        if (z7) {
                            if (u0Var10 == u0Var6) {
                                arrayList15.removeAll(R2.m.j1(arrayList9));
                            } else {
                                arrayList15.removeAll(R2.m.j1(arrayList10));
                            }
                        }
                        if (arrayList15.isEmpty()) {
                            r0Var.a(view6, objF);
                            view = view6;
                        } else {
                            r0Var.b(objF, arrayList15);
                            r0Var.l(objF, objF, arrayList15, null, null);
                            view = view6;
                            if (u0Var10.f3952a == 3) {
                                ArrayList arrayList16 = arrayList3;
                                arrayList16.remove(u0Var10);
                                ArrayList arrayList17 = new ArrayList(arrayList15);
                                str8 = str10;
                                Fragment fragment4 = u0Var10.f3954c;
                                arrayList3 = arrayList16;
                                arrayList17.remove(fragment4.mView);
                                r0Var.k(objF, fragment4.mView, arrayList17);
                                J.r.a(viewGroup, new RunnableC0127t(1, arrayList15));
                            }
                            if (u0Var10.f3952a != 2) {
                                arrayList14.addAll(arrayList15);
                                if (z6) {
                                    r0Var.n(objF, rect5);
                                }
                                view2 = view7;
                            } else {
                                view2 = view7;
                                r0Var.m(view2, objF);
                            }
                            linkedHashMap.put(u0Var10, Boolean.TRUE);
                            if (c0117i3.f3877d) {
                                objJ2 = r0Var.j(obj5, objF);
                                it11 = it12;
                                view7 = view2;
                                c0713b3 = c0713b2;
                                view6 = view;
                                u0Var8 = u0Var11;
                                obj2 = obj4;
                            } else {
                                objJ = r0Var.j(objJ, objF);
                                it11 = it12;
                                view7 = view2;
                                c0713b3 = c0713b2;
                                view6 = view;
                                u0Var8 = u0Var11;
                                obj2 = obj4;
                                objJ2 = obj5;
                            }
                        }
                        str8 = str10;
                        if (u0Var10.f3952a != 2) {
                        }
                        linkedHashMap.put(u0Var10, Boolean.TRUE);
                        if (c0117i3.f3877d) {
                        }
                    } else if (!z7) {
                        linkedHashMap.put(u0Var10, Boolean.FALSE);
                        c0117i3.a();
                    }
                }
                it11 = it12;
                c0713b3 = c0713b2;
            }
            C0713b c0713b6 = c0713b3;
            u0Var = u0Var8;
            Object objI = r0Var.i(objJ, objJ2, obj2);
            if (objI == null) {
                u0Var2 = u0Var6;
                str3 = str9;
            } else {
                ArrayList arrayList18 = new ArrayList();
                Iterator it13 = arrayList13.iterator();
                while (it13.hasNext()) {
                    Object next4 = it13.next();
                    if (!((C0117i) next4).b()) {
                        arrayList18.add(next4);
                    }
                }
                Iterator it14 = arrayList18.iterator();
                while (it14.hasNext()) {
                    C0117i c0117i4 = (C0117i) it14.next();
                    Object obj6 = c0117i4.f3876c;
                    u0 u0Var12 = c0117i4.f3870a;
                    u0 u0Var13 = u0Var;
                    boolean z8 = obj2 != null && (u0Var12 == u0Var6 || u0Var12 == u0Var13);
                    if (obj6 != null || z8) {
                        WeakHashMap weakHashMap = J.Q.f940a;
                        if (viewGroup.isLaidOut()) {
                            str4 = str9;
                            Fragment fragment5 = u0Var12.f3954c;
                            r0Var.o(objI, c0117i4.f3871b, new t0(c0117i4, u0Var12, 2));
                        } else {
                            str4 = str9;
                            if (Log.isLoggable(str4, 2)) {
                                Log.v(str4, "SpecialEffectsController: Container " + viewGroup + " has not been laid out. Completing operation " + u0Var12);
                            }
                            c0117i4.a();
                        }
                    } else {
                        str4 = str9;
                    }
                    str9 = str4;
                    u0Var = u0Var13;
                }
                u0 u0Var14 = u0Var;
                str3 = str9;
                WeakHashMap weakHashMap2 = J.Q.f940a;
                if (viewGroup.isLaidOut()) {
                    k0.a(arrayList14, 4);
                    ArrayList arrayList19 = new ArrayList();
                    int size3 = arrayList10.size();
                    for (int i12 = 0; i12 < size3; i12++) {
                        View view13 = (View) arrayList10.get(i12);
                        WeakHashMap weakHashMap3 = J.Q.f940a;
                        arrayList19.add(J.I.k(view13));
                        J.I.v(view13, null);
                    }
                    if (Log.isLoggable(str3, 2)) {
                        Log.v(str3, ">>>>> Beginning transition <<<<<");
                        Log.v(str3, ">>>>> SharedElementFirstOutViews <<<<<");
                        for (Iterator it15 = arrayList9.iterator(); it15.hasNext(); it15 = it15) {
                            Object next5 = it15.next();
                            d3.i.d("sharedElementFirstOutViews", next5);
                            View view14 = (View) next5;
                            Log.v(str3, "View: " + view14 + " Name: " + J.I.k(view14));
                        }
                        Log.v(str3, ">>>>> SharedElementLastInViews <<<<<");
                        for (Iterator it16 = arrayList10.iterator(); it16.hasNext(); it16 = it16) {
                            Object next6 = it16.next();
                            d3.i.d("sharedElementLastInViews", next6);
                            View view15 = (View) next6;
                            Log.v(str3, "View: " + view15 + " Name: " + J.I.k(view15));
                        }
                    }
                    r0Var.c(viewGroup, objI);
                    int size4 = arrayList10.size();
                    ArrayList arrayList20 = new ArrayList();
                    int i13 = 0;
                    while (i13 < size4) {
                        View view16 = (View) arrayList9.get(i13);
                        WeakHashMap weakHashMap4 = J.Q.f940a;
                        String strK = J.I.k(view16);
                        arrayList20.add(strK);
                        if (strK == null) {
                            u0Var4 = u0Var6;
                            u0Var3 = u0Var14;
                            c0713b = c0713b6;
                        } else {
                            u0Var3 = u0Var14;
                            J.I.v(view16, null);
                            C0713b c0713b7 = c0713b6;
                            String str11 = (String) c0713b7.getOrDefault(strK, null);
                            c0713b = c0713b7;
                            int i14 = 0;
                            while (true) {
                                u0Var4 = u0Var6;
                                if (i14 >= size4) {
                                    break;
                                }
                                if (str11.equals(arrayList19.get(i14))) {
                                    J.I.v((View) arrayList10.get(i14), strK);
                                    break;
                                } else {
                                    i14++;
                                    u0Var6 = u0Var4;
                                }
                            }
                        }
                        i13++;
                        c0713b6 = c0713b;
                        u0Var14 = u0Var3;
                        u0Var6 = u0Var4;
                    }
                    u0Var2 = u0Var6;
                    u0Var = u0Var14;
                    J.r.a(viewGroup, new q0(size4, arrayList10, arrayList19, arrayList9, arrayList20));
                    z5 = false;
                    k0.a(arrayList14, 0);
                    r0Var.q(obj2, arrayList9, arrayList10);
                } else {
                    u0Var2 = u0Var6;
                    u0Var = u0Var14;
                }
            }
            z5 = false;
        }
        boolean zContainsValue = linkedHashMap.containsValue(Boolean.TRUE);
        Context context = viewGroup.getContext();
        ArrayList arrayList21 = new ArrayList();
        Iterator it17 = arrayList2.iterator();
        boolean z9 = z5;
        while (it17.hasNext()) {
            C0115g c0115g = (C0115g) it17.next();
            if (c0115g.b()) {
                c0115g.a();
            } else {
                d3.i.d("context", context);
                H hC = c0115g.c(context);
                if (hC == null) {
                    c0115g.a();
                } else {
                    Animator animator = (Animator) hC.f3744b;
                    if (animator == null) {
                        arrayList21.add(c0115g);
                    } else {
                        u0 u0Var15 = c0115g.f3870a;
                        Fragment fragment6 = u0Var15.f3954c;
                        if (d3.i.a(linkedHashMap.get(u0Var15), Boolean.TRUE)) {
                            if (Log.isLoggable(str3, 2)) {
                                Log.v(str3, "Ignoring Animator set on " + fragment6 + " as this Fragment was involved in a Transition.");
                            }
                            c0115g.a();
                        } else {
                            boolean z10 = u0Var15.f3952a == 3 ? true : z5;
                            ArrayList arrayList22 = arrayList3;
                            if (z10) {
                                arrayList22.remove(u0Var15);
                            }
                            View view17 = fragment6.mView;
                            viewGroup.startViewTransition(view17);
                            ViewGroup viewGroup2 = viewGroup;
                            LinkedHashMap linkedHashMap6 = linkedHashMap;
                            animator.addListener(new C0118j(this, view17, z10, u0Var15, c0115g));
                            animator.setTarget(view17);
                            animator.start();
                            if (Log.isLoggable(str3, 2)) {
                                Log.v(str3, "Animator from operation " + u0Var15 + " has started.");
                            }
                            c0115g.f3871b.b(new C0126s(animator, u0Var15));
                            viewGroup = viewGroup2;
                            arrayList3 = arrayList22;
                            linkedHashMap = linkedHashMap6;
                            z9 = true;
                            z5 = false;
                        }
                    }
                }
            }
        }
        ViewGroup viewGroup3 = viewGroup;
        ArrayList arrayList23 = arrayList3;
        Iterator it18 = arrayList21.iterator();
        while (it18.hasNext()) {
            final C0115g c0115g2 = (C0115g) it18.next();
            final u0 u0Var16 = c0115g2.f3870a;
            Fragment fragment7 = u0Var16.f3954c;
            if (zContainsValue) {
                if (Log.isLoggable(str3, 2)) {
                    Log.v(str3, "Ignoring Animation set on " + fragment7 + " as Animations cannot run alongside Transitions.");
                }
                c0115g2.a();
            } else if (z9) {
                if (Log.isLoggable(str3, 2)) {
                    Log.v(str3, "Ignoring Animation set on " + fragment7 + " as Animations cannot run alongside Animators.");
                }
                c0115g2.a();
            } else {
                final View view18 = fragment7.mView;
                d3.i.d("context", context);
                H hC2 = c0115g2.c(context);
                if (hC2 == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                Animation animation = (Animation) hC2.f3743a;
                if (animation == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                if (u0Var16.f3952a != 1) {
                    view18.startAnimation(animation);
                    c0115g2.a();
                    c0120l = this;
                } else {
                    viewGroup3.startViewTransition(view18);
                    I i15 = new I(animation, viewGroup3, view18);
                    c0120l = this;
                    i15.setAnimationListener(new AnimationAnimationListenerC0119k(view18, c0115g2, c0120l, u0Var16));
                    view18.startAnimation(i15);
                    if (Log.isLoggable(str3, 2)) {
                        Log.v(str3, "Animation from operation " + u0Var16 + " has started.");
                    }
                }
                c0115g2.f3871b.b(new F.e() { // from class: androidx.fragment.app.e
                    @Override // F.e
                    public final void onCancel() {
                        C0120l c0120l2 = c0120l;
                        d3.i.e("this$0", c0120l2);
                        C0115g c0115g3 = c0115g2;
                        d3.i.e("$animationInfo", c0115g3);
                        u0 u0Var17 = u0Var16;
                        d3.i.e("$operation", u0Var17);
                        View view19 = view18;
                        view19.clearAnimation();
                        c0120l2.f3912a.endViewTransition(view19);
                        c0115g3.a();
                        if (Log.isLoggable("FragmentManager", 2)) {
                            Log.v("FragmentManager", "Animation from operation " + u0Var17 + " has been cancelled.");
                        }
                    }
                });
            }
        }
        Iterator it19 = arrayList23.iterator();
        while (it19.hasNext()) {
            u0 u0Var17 = (u0) it19.next();
            View view19 = u0Var17.f3954c.mView;
            int i16 = u0Var17.f3952a;
            d3.i.d("view", view19);
            B.f.a(i16, view19);
        }
        arrayList23.clear();
        if (Log.isLoggable(str3, 2)) {
            Log.v(str3, "Completed executing operations from " + u0Var2 + str2 + u0Var);
        }
    }

    public final void h() {
        if (this.f3916e) {
            return;
        }
        ViewGroup viewGroup = this.f3912a;
        WeakHashMap weakHashMap = J.Q.f940a;
        if (!viewGroup.isAttachedToWindow()) {
            k();
            this.f3915d = false;
            return;
        }
        synchronized (this.f3913b) {
            try {
                if (!this.f3913b.isEmpty()) {
                    ArrayList arrayListH1 = R2.m.h1(this.f3914c);
                    this.f3914c.clear();
                    Iterator it = arrayListH1.iterator();
                    while (it.hasNext()) {
                        u0 u0Var = (u0) it.next();
                        if (Log.isLoggable("FragmentManager", 2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + u0Var);
                        }
                        u0Var.a();
                        if (!u0Var.f3957g) {
                            this.f3914c.add(u0Var);
                        }
                    }
                    o();
                    ArrayList arrayListH12 = R2.m.h1(this.f3913b);
                    this.f3913b.clear();
                    this.f3914c.addAll(arrayListH12);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                    }
                    Iterator it2 = arrayListH12.iterator();
                    while (it2.hasNext()) {
                        ((u0) it2.next()).d();
                    }
                    g(arrayListH12, this.f3915d);
                    this.f3915d = false;
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final u0 j(Fragment fragment) {
        Object next;
        Iterator it = this.f3913b.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            u0 u0Var = (u0) next;
            if (d3.i.a(u0Var.f3954c, fragment) && !u0Var.f) {
                break;
            }
        }
        return (u0) next;
    }

    public final void k() {
        String str;
        String str2;
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        ViewGroup viewGroup = this.f3912a;
        WeakHashMap weakHashMap = J.Q.f940a;
        boolean zIsAttachedToWindow = viewGroup.isAttachedToWindow();
        synchronized (this.f3913b) {
            try {
                o();
                Iterator it = this.f3913b.iterator();
                while (it.hasNext()) {
                    ((u0) it.next()).d();
                }
                Iterator it2 = R2.m.h1(this.f3914c).iterator();
                while (it2.hasNext()) {
                    u0 u0Var = (u0) it2.next();
                    if (Log.isLoggable("FragmentManager", 2)) {
                        if (zIsAttachedToWindow) {
                            str2 = "";
                        } else {
                            str2 = "Container " + this.f3912a + " is not attached to window. ";
                        }
                        Log.v("FragmentManager", "SpecialEffectsController: " + str2 + "Cancelling running operation " + u0Var);
                    }
                    u0Var.a();
                }
                Iterator it3 = R2.m.h1(this.f3913b).iterator();
                while (it3.hasNext()) {
                    u0 u0Var2 = (u0) it3.next();
                    if (Log.isLoggable("FragmentManager", 2)) {
                        if (zIsAttachedToWindow) {
                            str = "";
                        } else {
                            str = "Container " + this.f3912a + " is not attached to window. ";
                        }
                        Log.v("FragmentManager", "SpecialEffectsController: " + str + "Cancelling pending operation " + u0Var2);
                    }
                    u0Var2.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void m() {
        Object objPrevious;
        synchronized (this.f3913b) {
            try {
                o();
                ArrayList arrayList = this.f3913b;
                ListIterator listIterator = arrayList.listIterator(arrayList.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        objPrevious = null;
                        break;
                    }
                    objPrevious = listIterator.previous();
                    u0 u0Var = (u0) objPrevious;
                    View view = u0Var.f3954c.mView;
                    d3.i.d("operation.fragment.mView", view);
                    int iB = W1.a.b(view);
                    if (u0Var.f3952a == 2 && iB != 2) {
                        break;
                    }
                }
                u0 u0Var2 = (u0) objPrevious;
                Fragment fragment = u0Var2 != null ? u0Var2.f3954c : null;
                this.f3916e = fragment != null ? fragment.isPostponed() : false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void o() {
        Iterator it = this.f3913b.iterator();
        while (it.hasNext()) {
            u0 u0Var = (u0) it.next();
            int i5 = 2;
            if (u0Var.f3953b == 2) {
                View viewRequireView = u0Var.f3954c.requireView();
                d3.i.d("fragment.requireView()", viewRequireView);
                int visibility = viewRequireView.getVisibility();
                if (visibility != 0) {
                    i5 = 4;
                    if (visibility != 4) {
                        if (visibility != 8) {
                            throw new IllegalArgumentException(B.f.t(visibility, "Unknown visibility "));
                        }
                        i5 = 3;
                    }
                }
                u0Var.c(i5, 1);
            }
        }
    }
}
