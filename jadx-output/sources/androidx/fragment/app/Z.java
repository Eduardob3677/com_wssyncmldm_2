package androidx.fragment.app;

import J.InterfaceC0032f;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.EnumC0150q;
import androidx.lifecycle.InterfaceC0155w;
import c3.InterfaceC0221a;
import com.samsung.android.knox.ex.peripheral.PeripheralConstants;
import com.wssyncmldm.R;
import h0.AbstractC0432c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import y.C0920A;
import z.InterfaceC0937e;
import z.InterfaceC0938f;

/* loaded from: classes.dex */
public abstract class Z {

    /* renamed from: A, reason: collision with root package name */
    public androidx.activity.result.e f3774A;

    /* renamed from: B, reason: collision with root package name */
    public androidx.activity.result.e f3775B;

    /* renamed from: C, reason: collision with root package name */
    public ArrayDeque f3776C;

    /* renamed from: D, reason: collision with root package name */
    public boolean f3777D;
    public boolean E;

    /* renamed from: F, reason: collision with root package name */
    public boolean f3778F;

    /* renamed from: G, reason: collision with root package name */
    public boolean f3779G;

    /* renamed from: H, reason: collision with root package name */
    public boolean f3780H;

    /* renamed from: I, reason: collision with root package name */
    public ArrayList f3781I;

    /* renamed from: J, reason: collision with root package name */
    public ArrayList f3782J;

    /* renamed from: K, reason: collision with root package name */
    public ArrayList f3783K;

    /* renamed from: L, reason: collision with root package name */
    public c0 f3784L;

    /* renamed from: M, reason: collision with root package name */
    public final RunnableC0121m f3785M;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3787b;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f3789d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f3790e;

    /* renamed from: g, reason: collision with root package name */
    public androidx.activity.v f3791g;

    /* renamed from: l, reason: collision with root package name */
    public final H f3796l;

    /* renamed from: m, reason: collision with root package name */
    public final CopyOnWriteArrayList f3797m;
    public final O n;

    /* renamed from: o, reason: collision with root package name */
    public final O f3798o;

    /* renamed from: p, reason: collision with root package name */
    public final O f3799p;

    /* renamed from: q, reason: collision with root package name */
    public final O f3800q;

    /* renamed from: r, reason: collision with root package name */
    public final S f3801r;

    /* renamed from: s, reason: collision with root package name */
    public int f3802s;

    /* renamed from: t, reason: collision with root package name */
    public L f3803t;

    /* renamed from: u, reason: collision with root package name */
    public J f3804u;

    /* renamed from: v, reason: collision with root package name */
    public Fragment f3805v;

    /* renamed from: w, reason: collision with root package name */
    public Fragment f3806w;

    /* renamed from: x, reason: collision with root package name */
    public final T f3807x;

    /* renamed from: y, reason: collision with root package name */
    public final Z0.h f3808y;

    /* renamed from: z, reason: collision with root package name */
    public androidx.activity.result.e f3809z;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3786a = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final h0 f3788c = new h0();
    public final N f = new N(this);

    /* renamed from: h, reason: collision with root package name */
    public final Q f3792h = new Q(this);

    /* renamed from: i, reason: collision with root package name */
    public final AtomicInteger f3793i = new AtomicInteger();

    /* renamed from: j, reason: collision with root package name */
    public final Map f3794j = Collections.synchronizedMap(new HashMap());

    /* renamed from: k, reason: collision with root package name */
    public final Map f3795k = Collections.synchronizedMap(new HashMap());

    /* JADX WARN: Type inference failed for: r0v12, types: [androidx.fragment.app.O] */
    /* JADX WARN: Type inference failed for: r0v13, types: [androidx.fragment.app.O] */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.fragment.app.O] */
    /* JADX WARN: Type inference failed for: r0v15, types: [androidx.fragment.app.O] */
    public Z() {
        Collections.synchronizedMap(new HashMap());
        this.f3796l = new H(this);
        this.f3797m = new CopyOnWriteArrayList();
        final int i5 = 0;
        this.n = new I.a(this) { // from class: androidx.fragment.app.O

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ Z f3757b;

            {
                this.f3757b = this;
            }

            @Override // I.a
            public final void accept(Object obj) {
                switch (i5) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        Z z4 = this.f3757b;
                        if (z4.H()) {
                            z4.h(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        Z z5 = this.f3757b;
                        if (z5.H() && num.intValue() == 80) {
                            z5.l(false);
                            break;
                        }
                        break;
                    case 2:
                        y.i iVar = (y.i) obj;
                        Z z6 = this.f3757b;
                        if (z6.H()) {
                            z6.m(iVar.f9680a, false);
                            break;
                        }
                        break;
                    default:
                        C0920A c0920a = (C0920A) obj;
                        Z z7 = this.f3757b;
                        if (z7.H()) {
                            z7.r(c0920a.f9677a, false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i6 = 1;
        this.f3798o = new I.a(this) { // from class: androidx.fragment.app.O

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ Z f3757b;

            {
                this.f3757b = this;
            }

            @Override // I.a
            public final void accept(Object obj) {
                switch (i6) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        Z z4 = this.f3757b;
                        if (z4.H()) {
                            z4.h(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        Z z5 = this.f3757b;
                        if (z5.H() && num.intValue() == 80) {
                            z5.l(false);
                            break;
                        }
                        break;
                    case 2:
                        y.i iVar = (y.i) obj;
                        Z z6 = this.f3757b;
                        if (z6.H()) {
                            z6.m(iVar.f9680a, false);
                            break;
                        }
                        break;
                    default:
                        C0920A c0920a = (C0920A) obj;
                        Z z7 = this.f3757b;
                        if (z7.H()) {
                            z7.r(c0920a.f9677a, false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i7 = 2;
        this.f3799p = new I.a(this) { // from class: androidx.fragment.app.O

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ Z f3757b;

            {
                this.f3757b = this;
            }

            @Override // I.a
            public final void accept(Object obj) {
                switch (i7) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        Z z4 = this.f3757b;
                        if (z4.H()) {
                            z4.h(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        Z z5 = this.f3757b;
                        if (z5.H() && num.intValue() == 80) {
                            z5.l(false);
                            break;
                        }
                        break;
                    case 2:
                        y.i iVar = (y.i) obj;
                        Z z6 = this.f3757b;
                        if (z6.H()) {
                            z6.m(iVar.f9680a, false);
                            break;
                        }
                        break;
                    default:
                        C0920A c0920a = (C0920A) obj;
                        Z z7 = this.f3757b;
                        if (z7.H()) {
                            z7.r(c0920a.f9677a, false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i8 = 3;
        this.f3800q = new I.a(this) { // from class: androidx.fragment.app.O

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ Z f3757b;

            {
                this.f3757b = this;
            }

            @Override // I.a
            public final void accept(Object obj) {
                switch (i8) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        Z z4 = this.f3757b;
                        if (z4.H()) {
                            z4.h(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        Z z5 = this.f3757b;
                        if (z5.H() && num.intValue() == 80) {
                            z5.l(false);
                            break;
                        }
                        break;
                    case 2:
                        y.i iVar = (y.i) obj;
                        Z z6 = this.f3757b;
                        if (z6.H()) {
                            z6.m(iVar.f9680a, false);
                            break;
                        }
                        break;
                    default:
                        C0920A c0920a = (C0920A) obj;
                        Z z7 = this.f3757b;
                        if (z7.H()) {
                            z7.r(c0920a.f9677a, false);
                            break;
                        }
                        break;
                }
            }
        };
        this.f3801r = new S(this);
        this.f3802s = -1;
        this.f3807x = new T(this);
        this.f3808y = new Z0.h(10);
        this.f3776C = new ArrayDeque();
        this.f3785M = new RunnableC0121m(2, this);
    }

    public static boolean G(Fragment fragment) {
        if (!fragment.mHasMenu || !fragment.mMenuVisible) {
            Iterator it = fragment.mChildFragmentManager.f3788c.e().iterator();
            boolean zG = false;
            while (it.hasNext()) {
                Fragment fragment2 = (Fragment) it.next();
                if (fragment2 != null) {
                    zG = G(fragment2);
                }
                if (zG) {
                }
            }
            return false;
        }
        return true;
    }

    public static boolean I(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        Z z4 = fragment.mFragmentManager;
        return fragment.equals(z4.f3806w) && I(z4.f3805v);
    }

    public static void X(Fragment fragment) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    public final Fragment A(int i5) {
        h0 h0Var = this.f3788c;
        ArrayList arrayList = h0Var.f3872a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) arrayList.get(size);
            if (fragment != null && fragment.mFragmentId == i5) {
                return fragment;
            }
        }
        for (g0 g0Var : h0Var.f3873b.values()) {
            if (g0Var != null) {
                Fragment fragment2 = g0Var.f3867c;
                if (fragment2.mFragmentId == i5) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public final Fragment B(String str) {
        h0 h0Var = this.f3788c;
        ArrayList arrayList = h0Var.f3872a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) arrayList.get(size);
            if (fragment != null && str.equals(fragment.mTag)) {
                return fragment;
            }
        }
        for (g0 g0Var : h0Var.f3873b.values()) {
            if (g0Var != null) {
                Fragment fragment2 = g0Var.f3867c;
                if (str.equals(fragment2.mTag)) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public final ViewGroup C(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId > 0 && this.f3804u.c()) {
            View viewB = this.f3804u.b(fragment.mContainerId);
            if (viewB instanceof ViewGroup) {
                return (ViewGroup) viewB;
            }
        }
        return null;
    }

    public final T D() {
        Fragment fragment = this.f3805v;
        return fragment != null ? fragment.mFragmentManager.D() : this.f3807x;
    }

    public final Z0.h E() {
        Fragment fragment = this.f3805v;
        return fragment != null ? fragment.mFragmentManager.E() : this.f3808y;
    }

    public final void F(Fragment fragment) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
        W(fragment);
    }

    public final boolean H() {
        Fragment fragment = this.f3805v;
        if (fragment == null) {
            return true;
        }
        return fragment.isAdded() && this.f3805v.getParentFragmentManager().H();
    }

    public final void J(int i5, boolean z4) {
        HashMap map;
        L l5;
        if (this.f3803t == null && i5 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z4 || i5 != this.f3802s) {
            this.f3802s = i5;
            h0 h0Var = this.f3788c;
            Iterator it = h0Var.f3872a.iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                map = h0Var.f3873b;
                if (!zHasNext) {
                    break;
                }
                g0 g0Var = (g0) map.get(((Fragment) it.next()).mWho);
                if (g0Var != null) {
                    g0Var.k();
                }
            }
            int size = map.size();
            for (g0 g0Var2 : map.values()) {
                if (g0Var2 != null) {
                    g0Var2.k();
                    Fragment fragment = g0Var2.f3867c;
                    if (fragment.mRemoving && !fragment.isInBackStack()) {
                        if (fragment.mBeingSaved && !h0Var.f3874c.containsKey(fragment.mWho)) {
                            h0Var.i(g0Var2.n(), fragment.mWho);
                        }
                        h0Var.h(g0Var2);
                    }
                }
                if (size != map.size()) {
                    Log.d("FragmentManager", h0Var + "[enhanced for loop] expected Active size is " + size + ", but " + map.size());
                }
            }
            Iterator it2 = h0Var.d().iterator();
            while (it2.hasNext()) {
                g0 g0Var3 = (g0) it2.next();
                Fragment fragment2 = g0Var3.f3867c;
                if (fragment2.mDeferStart) {
                    if (this.f3787b) {
                        this.f3780H = true;
                    } else {
                        fragment2.mDeferStart = false;
                        g0Var3.k();
                    }
                }
            }
            if (this.f3777D && (l5 = this.f3803t) != null && this.f3802s == 7) {
                ((F) l5).f3738g.invalidateMenu();
                this.f3777D = false;
            }
        }
    }

    public final void K() {
        if (this.f3803t == null) {
            return;
        }
        this.E = false;
        this.f3778F = false;
        this.f3784L.f = false;
        for (Fragment fragment : this.f3788c.f()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    public final boolean L() {
        return M(-1, 0);
    }

    public final boolean M(int i5, int i6) {
        x(false);
        w(true);
        Fragment fragment = this.f3806w;
        if (fragment != null && i5 < 0 && fragment.getChildFragmentManager().L()) {
            return true;
        }
        boolean zN = N(this.f3781I, this.f3782J, i5, i6);
        if (zN) {
            this.f3787b = true;
            try {
                P(this.f3781I, this.f3782J);
            } finally {
                d();
            }
        }
        Z();
        boolean z4 = this.f3780H;
        h0 h0Var = this.f3788c;
        if (z4) {
            this.f3780H = false;
            Iterator it = h0Var.d().iterator();
            while (it.hasNext()) {
                g0 g0Var = (g0) it.next();
                Fragment fragment2 = g0Var.f3867c;
                if (fragment2.mDeferStart) {
                    if (this.f3787b) {
                        this.f3780H = true;
                    } else {
                        fragment2.mDeferStart = false;
                        g0Var.k();
                    }
                }
            }
        }
        h0Var.f3873b.values().removeAll(Collections.singleton(null));
        return zN;
    }

    public final boolean N(ArrayList arrayList, ArrayList arrayList2, int i5, int i6) {
        boolean z4 = (i6 & 1) != 0;
        ArrayList arrayList3 = this.f3789d;
        int size = -1;
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            if (i5 < 0) {
                size = z4 ? 0 : this.f3789d.size() - 1;
            } else {
                int size2 = this.f3789d.size() - 1;
                while (size2 >= 0) {
                    C0109a c0109a = (C0109a) this.f3789d.get(size2);
                    if (i5 >= 0 && i5 == c0109a.f3812s) {
                        break;
                    }
                    size2--;
                }
                if (size2 >= 0) {
                    if (z4) {
                        while (size2 > 0) {
                            C0109a c0109a2 = (C0109a) this.f3789d.get(size2 - 1);
                            if (i5 < 0 || i5 != c0109a2.f3812s) {
                                break;
                            }
                            size2--;
                        }
                    } else if (size2 != this.f3789d.size() - 1) {
                        size2++;
                    }
                    size = size2;
                } else {
                    size = size2;
                }
            }
        }
        if (size < 0) {
            return false;
        }
        for (int size3 = this.f3789d.size() - 1; size3 >= size; size3--) {
            arrayList.add((C0109a) this.f3789d.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void O(Fragment fragment) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z4 = !fragment.isInBackStack();
        if (!fragment.mDetached || z4) {
            h0 h0Var = this.f3788c;
            synchronized (h0Var.f3872a) {
                h0Var.f3872a.remove(fragment);
            }
            fragment.mAdded = false;
            if (G(fragment)) {
                this.f3777D = true;
            }
            fragment.mRemoving = true;
            W(fragment);
        }
    }

    public final void P(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i5 = 0;
        int i6 = 0;
        while (i5 < size) {
            if (!((C0109a) arrayList.get(i5)).f3905p) {
                if (i6 != i5) {
                    z(arrayList, arrayList2, i6, i5);
                }
                i6 = i5 + 1;
                if (((Boolean) arrayList2.get(i5)).booleanValue()) {
                    while (i6 < size && ((Boolean) arrayList2.get(i6)).booleanValue() && !((C0109a) arrayList.get(i6)).f3905p) {
                        i6++;
                    }
                }
                z(arrayList, arrayList2, i5, i6);
                i5 = i6 - 1;
            }
            i5++;
        }
        if (i6 != size) {
            z(arrayList, arrayList2, i6, size);
        }
    }

    public final void Q(Bundle bundle) {
        int i5;
        H h5;
        int i6;
        g0 g0Var;
        Bundle bundle2;
        Bundle bundle3;
        for (String str : bundle.keySet()) {
            if (str.startsWith("result_") && (bundle3 = bundle.getBundle(str)) != null) {
                bundle3.setClassLoader(this.f3803t.f3751d.getClassLoader());
                this.f3795k.put(str.substring(7), bundle3);
            }
        }
        HashMap map = new HashMap();
        for (String str2 : bundle.keySet()) {
            if (str2.startsWith("fragment_") && (bundle2 = bundle.getBundle(str2)) != null) {
                bundle2.setClassLoader(this.f3803t.f3751d.getClassLoader());
                map.put(str2.substring(9), bundle2);
            }
        }
        h0 h0Var = this.f3788c;
        HashMap map2 = h0Var.f3874c;
        map2.clear();
        map2.putAll(map);
        b0 b0Var = (b0) bundle.getParcelable("state");
        if (b0Var == null) {
            return;
        }
        HashMap map3 = h0Var.f3873b;
        map3.clear();
        Log.d("FragmentManager", h0Var + " clear Active Fragments: " + map3 + ", mActive size: " + map3.size());
        Iterator it = b0Var.f3825c.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            i5 = 2;
            h5 = this.f3796l;
            if (!zHasNext) {
                break;
            }
            Bundle bundleI = h0Var.i(null, (String) it.next());
            if (bundleI != null) {
                Fragment fragment = (Fragment) this.f3784L.f3835a.get(((e0) bundleI.getParcelable("state")).f3847d);
                if (fragment != null) {
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + fragment);
                    }
                    g0Var = new g0(h5, h0Var, fragment, bundleI);
                } else {
                    g0Var = new g0(this.f3796l, this.f3788c, this.f3803t.f3751d.getClassLoader(), D(), bundleI);
                }
                Fragment fragment2 = g0Var.f3867c;
                fragment2.mSavedFragmentState = bundleI;
                fragment2.mFragmentManager = this;
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + fragment2.mWho + "): " + fragment2);
                }
                g0Var.l(this.f3803t.f3751d.getClassLoader());
                h0Var.g(g0Var);
                g0Var.f3869e = this.f3802s;
            }
        }
        c0 c0Var = this.f3784L;
        c0Var.getClass();
        Iterator it2 = new ArrayList(c0Var.f3835a.values()).iterator();
        while (it2.hasNext()) {
            Fragment fragment3 = (Fragment) it2.next();
            if (map3.get(fragment3.mWho) == null) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment3 + " that was not found in the set of active Fragments " + b0Var.f3825c);
                }
                this.f3784L.f(fragment3);
                fragment3.mFragmentManager = this;
                g0 g0Var2 = new g0(h5, h0Var, fragment3);
                g0Var2.f3869e = 1;
                g0Var2.k();
                fragment3.mRemoving = true;
                g0Var2.k();
            }
        }
        ArrayList<String> arrayList = b0Var.f3826d;
        h0Var.f3872a.clear();
        if (arrayList != null) {
            for (String str3 : arrayList) {
                Fragment fragmentB = h0Var.b(str3);
                if (fragmentB == null) {
                    throw new IllegalStateException(B.f.v("No instantiated fragment for (", str3, ")"));
                }
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str3 + "): " + fragmentB);
                }
                h0Var.a(fragmentB);
            }
        }
        if (b0Var.f3827e != null) {
            this.f3789d = new ArrayList(b0Var.f3827e.length);
            int i7 = 0;
            while (true) {
                C0110b[] c0110bArr = b0Var.f3827e;
                if (i7 >= c0110bArr.length) {
                    break;
                }
                C0110b c0110b = c0110bArr[i7];
                c0110b.getClass();
                C0109a c0109a = new C0109a(this);
                int i8 = 0;
                int i9 = 0;
                while (true) {
                    int[] iArr = c0110b.f3813c;
                    if (i8 >= iArr.length) {
                        break;
                    }
                    i0 i0Var = new i0();
                    int i10 = i8 + 1;
                    i0Var.f3879a = iArr[i8];
                    if (Log.isLoggable("FragmentManager", i5)) {
                        Log.v("FragmentManager", "Instantiate " + c0109a + " op #" + i9 + " base fragment #" + iArr[i10]);
                    }
                    i0Var.f3885h = EnumC0150q.values()[c0110b.f3815e[i9]];
                    i0Var.f3886i = EnumC0150q.values()[c0110b.f[i9]];
                    int i11 = i8 + 2;
                    i0Var.f3881c = iArr[i10] != 0;
                    int i12 = iArr[i11];
                    i0Var.f3882d = i12;
                    int i13 = iArr[i8 + 3];
                    i0Var.f3883e = i13;
                    int i14 = i8 + 5;
                    int i15 = iArr[i8 + 4];
                    i0Var.f = i15;
                    i8 += 6;
                    int i16 = iArr[i14];
                    i0Var.f3884g = i16;
                    c0109a.f3893b = i12;
                    c0109a.f3894c = i13;
                    c0109a.f3895d = i15;
                    c0109a.f3896e = i16;
                    c0109a.b(i0Var);
                    i9++;
                    i5 = 2;
                }
                c0109a.f = c0110b.f3816g;
                c0109a.f3899i = c0110b.f3817h;
                c0109a.f3897g = true;
                c0109a.f3900j = c0110b.f3819j;
                c0109a.f3901k = c0110b.f3820k;
                c0109a.f3902l = c0110b.f3821l;
                c0109a.f3903m = c0110b.f3822m;
                c0109a.n = c0110b.n;
                c0109a.f3904o = c0110b.f3823o;
                c0109a.f3905p = c0110b.f3824p;
                c0109a.f3812s = c0110b.f3818i;
                int i17 = 0;
                while (true) {
                    ArrayList arrayList2 = c0110b.f3814d;
                    if (i17 >= arrayList2.size()) {
                        break;
                    }
                    String str4 = (String) arrayList2.get(i17);
                    if (str4 != null) {
                        ((i0) c0109a.f3892a.get(i17)).f3880b = h0Var.b(str4);
                    }
                    i17++;
                }
                c0109a.d(1);
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i7 + " (index " + c0109a.f3812s + "): " + c0109a);
                    PrintWriter printWriter = new PrintWriter(new I.b(1));
                    c0109a.f("  ", printWriter, false);
                    printWriter.close();
                }
                this.f3789d.add(c0109a);
                i7++;
                i5 = 2;
            }
            i6 = 0;
        } else {
            i6 = 0;
            this.f3789d = null;
        }
        this.f3793i.set(b0Var.f);
        String str5 = b0Var.f3828g;
        if (str5 != null) {
            Fragment fragmentB2 = h0Var.b(str5);
            this.f3806w = fragmentB2;
            q(fragmentB2);
        }
        ArrayList arrayList3 = b0Var.f3829h;
        if (arrayList3 != null) {
            for (int i18 = i6; i18 < arrayList3.size(); i18++) {
                this.f3794j.put((String) arrayList3.get(i18), (C0111c) b0Var.f3830i.get(i18));
            }
        }
        this.f3776C = new ArrayDeque(b0Var.f3831j);
    }

    public final Bundle R() {
        int i5;
        ArrayList arrayList;
        C0110b[] c0110bArr;
        int size;
        Bundle bundle = new Bundle();
        Iterator it = e().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            C0120l c0120l = (C0120l) it.next();
            if (c0120l.f3916e) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
                }
                c0120l.f3916e = false;
                c0120l.h();
            }
        }
        Iterator it2 = e().iterator();
        while (it2.hasNext()) {
            ((C0120l) it2.next()).k();
        }
        x(true);
        this.E = true;
        this.f3784L.f = true;
        h0 h0Var = this.f3788c;
        h0Var.getClass();
        HashMap map = h0Var.f3873b;
        ArrayList arrayList2 = new ArrayList(map.size());
        for (g0 g0Var : map.values()) {
            if (g0Var != null) {
                Fragment fragment = g0Var.f3867c;
                h0Var.i(g0Var.n(), fragment.mWho);
                arrayList2.add(fragment.mWho);
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Saved state of " + fragment + ": " + fragment.mSavedFragmentState);
                }
            }
        }
        HashMap map2 = this.f3788c.f3874c;
        if (!map2.isEmpty()) {
            h0 h0Var2 = this.f3788c;
            synchronized (h0Var2.f3872a) {
                try {
                    if (h0Var2.f3872a.isEmpty()) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(h0Var2.f3872a.size());
                        Iterator it3 = h0Var2.f3872a.iterator();
                        while (it3.hasNext()) {
                            Fragment fragment2 = (Fragment) it3.next();
                            arrayList.add(fragment2.mWho);
                            if (Log.isLoggable("FragmentManager", 2)) {
                                Log.v("FragmentManager", "saveAllState: adding fragment (" + fragment2.mWho + "): " + fragment2);
                            }
                        }
                    }
                } finally {
                }
            }
            ArrayList arrayList3 = this.f3789d;
            if (arrayList3 == null || (size = arrayList3.size()) <= 0) {
                c0110bArr = null;
            } else {
                c0110bArr = new C0110b[size];
                for (i5 = 0; i5 < size; i5++) {
                    c0110bArr[i5] = new C0110b((C0109a) this.f3789d.get(i5));
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "saveAllState: adding back stack #" + i5 + ": " + this.f3789d.get(i5));
                    }
                }
            }
            b0 b0Var = new b0();
            b0Var.f3828g = null;
            ArrayList arrayList4 = new ArrayList();
            b0Var.f3829h = arrayList4;
            ArrayList arrayList5 = new ArrayList();
            b0Var.f3830i = arrayList5;
            b0Var.f3825c = arrayList2;
            b0Var.f3826d = arrayList;
            b0Var.f3827e = c0110bArr;
            b0Var.f = this.f3793i.get();
            Fragment fragment3 = this.f3806w;
            if (fragment3 != null) {
                b0Var.f3828g = fragment3.mWho;
            }
            arrayList4.addAll(this.f3794j.keySet());
            arrayList5.addAll(this.f3794j.values());
            b0Var.f3831j = new ArrayList(this.f3776C);
            bundle.putParcelable("state", b0Var);
            for (String str : this.f3795k.keySet()) {
                bundle.putBundle(AbstractC0432c.i("result_", str), (Bundle) this.f3795k.get(str));
            }
            for (String str2 : map2.keySet()) {
                bundle.putBundle(AbstractC0432c.i("fragment_", str2), (Bundle) map2.get(str2));
            }
        } else if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "saveAllState: no fragments!");
        }
        return bundle;
    }

    public final void S() {
        synchronized (this.f3786a) {
            try {
                if (this.f3786a.size() == 1) {
                    this.f3803t.f3752e.removeCallbacks(this.f3785M);
                    this.f3803t.f3752e.post(this.f3785M);
                    Z();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void T(Fragment fragment, boolean z4) {
        ViewGroup viewGroupC = C(fragment);
        if (viewGroupC == null || !(viewGroupC instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) viewGroupC).setDrawDisappearingViewsLast(!z4);
    }

    public final void U(Fragment fragment, EnumC0150q enumC0150q) {
        if (fragment.equals(this.f3788c.b(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = enumC0150q;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public final void V(Fragment fragment) {
        if (fragment != null) {
            if (!fragment.equals(this.f3788c.b(fragment.mWho)) || (fragment.mHost != null && fragment.mFragmentManager != this)) {
                throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
            }
        }
        Fragment fragment2 = this.f3806w;
        this.f3806w = fragment;
        q(fragment2);
        q(this.f3806w);
    }

    public final void W(Fragment fragment) {
        ViewGroup viewGroupC = C(fragment);
        if (viewGroupC != null) {
            if (fragment.getPopExitAnim() + fragment.getPopEnterAnim() + fragment.getExitAnim() + fragment.getEnterAnim() > 0) {
                if (viewGroupC.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    viewGroupC.setTag(R.id.visible_removing_fragment_view_tag, fragment);
                }
                ((Fragment) viewGroupC.getTag(R.id.visible_removing_fragment_view_tag)).setPopDirection(fragment.getPopDirection());
            }
        }
    }

    public final void Y(IllegalStateException illegalStateException) {
        Log.e("FragmentManager", illegalStateException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new I.b(1));
        L l5 = this.f3803t;
        if (l5 == null) {
            try {
                u("  ", null, printWriter, new String[0]);
                throw illegalStateException;
            } catch (Exception e5) {
                Log.e("FragmentManager", "Failed dumping state", e5);
                throw illegalStateException;
            }
        }
        try {
            ((F) l5).f3738g.dump("  ", null, printWriter, new String[0]);
            throw illegalStateException;
        } catch (Exception e6) {
            Log.e("FragmentManager", "Failed dumping state", e6);
            throw illegalStateException;
        }
    }

    public final void Z() {
        synchronized (this.f3786a) {
            try {
                if (!this.f3786a.isEmpty()) {
                    Q q2 = this.f3792h;
                    q2.f3760a = true;
                    InterfaceC0221a interfaceC0221a = q2.f3762c;
                    if (interfaceC0221a != null) {
                        interfaceC0221a.a();
                    }
                    return;
                }
                Q q5 = this.f3792h;
                ArrayList arrayList = this.f3789d;
                q5.f3760a = (arrayList != null ? arrayList.size() : 0) > 0 && I(this.f3805v);
                InterfaceC0221a interfaceC0221a2 = q5.f3762c;
                if (interfaceC0221a2 != null) {
                    interfaceC0221a2.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final g0 a(Fragment fragment) {
        String str = fragment.mPreviousWho;
        if (str != null) {
            Z.d.c(fragment, str);
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        g0 g0VarF = f(fragment);
        fragment.mFragmentManager = this;
        h0 h0Var = this.f3788c;
        h0Var.g(g0VarF);
        if (!fragment.mDetached) {
            h0Var.a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (G(fragment)) {
                this.f3777D = true;
            }
        }
        return g0VarF;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(L l5, J j3, Fragment fragment) {
        if (this.f3803t != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f3803t = l5;
        this.f3804u = j3;
        this.f3805v = fragment;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f3797m;
        if (fragment != null) {
            copyOnWriteArrayList.add(new U(fragment));
        } else if (l5 instanceof d0) {
            copyOnWriteArrayList.add((d0) l5);
        }
        if (this.f3805v != null) {
            Z();
        }
        if (l5 instanceof androidx.activity.w) {
            androidx.activity.w wVar = (androidx.activity.w) l5;
            androidx.activity.v onBackPressedDispatcher = wVar.getOnBackPressedDispatcher();
            this.f3791g = onBackPressedDispatcher;
            InterfaceC0155w interfaceC0155w = wVar;
            if (fragment != null) {
                interfaceC0155w = fragment;
            }
            onBackPressedDispatcher.a(interfaceC0155w, this.f3792h);
        }
        if (fragment != null) {
            c0 c0Var = fragment.mFragmentManager.f3784L;
            HashMap map = c0Var.f3836b;
            c0 c0Var2 = (c0) map.get(fragment.mWho);
            if (c0Var2 == null) {
                c0Var2 = new c0(c0Var.f3838d);
                map.put(fragment.mWho, c0Var2);
            }
            this.f3784L = c0Var2;
        } else if (l5 instanceof androidx.lifecycle.d0) {
            this.f3784L = (c0) new J.r0(((androidx.lifecycle.d0) l5).getViewModelStore(), (androidx.lifecycle.b0) c0.f3834g).d(c0.class);
        } else {
            this.f3784L = new c0(false);
        }
        c0 c0Var3 = this.f3784L;
        c0Var3.f = this.E || this.f3778F;
        this.f3788c.f3875d = c0Var3;
        Object obj = this.f3803t;
        if ((obj instanceof x0.f) && fragment == null) {
            x0.d savedStateRegistry = ((x0.f) obj).getSavedStateRegistry();
            savedStateRegistry.c("android:support:fragments", new C(1, this));
            Bundle bundleA = savedStateRegistry.a("android:support:fragments");
            if (bundleA != null) {
                Q(bundleA);
            }
        }
        Object obj2 = this.f3803t;
        if (obj2 instanceof androidx.activity.result.i) {
            androidx.activity.result.h activityResultRegistry = ((androidx.activity.result.i) obj2).getActivityResultRegistry();
            String strI = AbstractC0432c.i("FragmentManager:", fragment != null ? B.f.w(new StringBuilder(), fragment.mWho, ":") : "");
            this.f3809z = activityResultRegistry.d(AbstractC0432c.h(strI, "StartActivityForResult"), new V(2), new P(this, 1));
            this.f3774A = activityResultRegistry.d(AbstractC0432c.h(strI, "StartIntentSenderForResult"), new V(0), new P(this, 2));
            this.f3775B = activityResultRegistry.d(AbstractC0432c.h(strI, "RequestPermissions"), new V(1), new P(this, 0));
        }
        Object obj3 = this.f3803t;
        if (obj3 instanceof InterfaceC0937e) {
            ((InterfaceC0937e) obj3).addOnConfigurationChangedListener(this.n);
        }
        Object obj4 = this.f3803t;
        if (obj4 instanceof InterfaceC0938f) {
            ((InterfaceC0938f) obj4).addOnTrimMemoryListener(this.f3798o);
        }
        Object obj5 = this.f3803t;
        if (obj5 instanceof y.y) {
            ((y.y) obj5).addOnMultiWindowModeChangedListener(this.f3799p);
        }
        Object obj6 = this.f3803t;
        if (obj6 instanceof y.z) {
            ((y.z) obj6).addOnPictureInPictureModeChangedListener(this.f3800q);
        }
        Object obj7 = this.f3803t;
        if ((obj7 instanceof InterfaceC0032f) && fragment == null) {
            ((InterfaceC0032f) obj7).addMenuProvider(this.f3801r);
        }
    }

    public final void c(Fragment fragment) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.f3788c.a(fragment);
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            if (G(fragment)) {
                this.f3777D = true;
            }
        }
    }

    public final void d() {
        this.f3787b = false;
        this.f3782J.clear();
        this.f3781I.clear();
    }

    public final HashSet e() {
        C0120l c0120l;
        HashSet hashSet = new HashSet();
        Iterator it = this.f3788c.d().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((g0) it.next()).f3867c.mContainer;
            if (viewGroup != null) {
                d3.i.e("factory", E());
                Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
                if (tag instanceof C0120l) {
                    c0120l = (C0120l) tag;
                } else {
                    c0120l = new C0120l(viewGroup);
                    viewGroup.setTag(R.id.special_effects_controller_view_tag, c0120l);
                }
                hashSet.add(c0120l);
            }
        }
        return hashSet;
    }

    public final g0 f(Fragment fragment) {
        String str = fragment.mWho;
        h0 h0Var = this.f3788c;
        g0 g0Var = (g0) h0Var.f3873b.get(str);
        if (g0Var != null) {
            return g0Var;
        }
        g0 g0Var2 = new g0(this.f3796l, h0Var, fragment);
        g0Var2.l(this.f3803t.f3751d.getClassLoader());
        g0Var2.f3869e = this.f3802s;
        return g0Var2;
    }

    public final void g(Fragment fragment) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            h0 h0Var = this.f3788c;
            synchronized (h0Var.f3872a) {
                h0Var.f3872a.remove(fragment);
            }
            fragment.mAdded = false;
            if (G(fragment)) {
                this.f3777D = true;
            }
            W(fragment);
        }
    }

    public final void h(boolean z4, Configuration configuration) {
        if (z4 && (this.f3803t instanceof InterfaceC0937e)) {
            Y(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f3788c.f()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
                if (z4) {
                    fragment.mChildFragmentManager.h(true, configuration);
                }
            }
        }
    }

    public final boolean i(MenuItem menuItem) {
        if (this.f3802s < 1) {
            return false;
        }
        for (Fragment fragment : this.f3788c.f()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final boolean j(Menu menu, MenuInflater menuInflater) {
        if (this.f3802s < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z4 = false;
        for (Fragment fragment : this.f3788c.f()) {
            if (fragment != null && fragment.isMenuVisible() && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(fragment);
                z4 = true;
            }
        }
        if (this.f3790e != null) {
            for (int i5 = 0; i5 < this.f3790e.size(); i5++) {
                Fragment fragment2 = (Fragment) this.f3790e.get(i5);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f3790e = arrayList;
        return z4;
    }

    public final void k() {
        boolean zIsChangingConfigurations = true;
        this.f3779G = true;
        x(true);
        Iterator it = e().iterator();
        while (it.hasNext()) {
            ((C0120l) it.next()).k();
        }
        L l5 = this.f3803t;
        boolean z4 = l5 instanceof androidx.lifecycle.d0;
        h0 h0Var = this.f3788c;
        if (z4) {
            zIsChangingConfigurations = h0Var.f3875d.f3839e;
        } else {
            Context context = l5.f3751d;
            if (context instanceof Activity) {
                zIsChangingConfigurations = true ^ ((Activity) context).isChangingConfigurations();
            }
        }
        if (zIsChangingConfigurations) {
            Iterator it2 = this.f3794j.values().iterator();
            while (it2.hasNext()) {
                Iterator it3 = ((C0111c) it2.next()).f3832c.iterator();
                while (it3.hasNext()) {
                    h0Var.f3875d.d((String) it3.next(), false);
                }
            }
        }
        t(-1);
        Object obj = this.f3803t;
        if (obj instanceof InterfaceC0938f) {
            ((InterfaceC0938f) obj).removeOnTrimMemoryListener(this.f3798o);
        }
        Object obj2 = this.f3803t;
        if (obj2 instanceof InterfaceC0937e) {
            ((InterfaceC0937e) obj2).removeOnConfigurationChangedListener(this.n);
        }
        Object obj3 = this.f3803t;
        if (obj3 instanceof y.y) {
            ((y.y) obj3).removeOnMultiWindowModeChangedListener(this.f3799p);
        }
        Object obj4 = this.f3803t;
        if (obj4 instanceof y.z) {
            ((y.z) obj4).removeOnPictureInPictureModeChangedListener(this.f3800q);
        }
        Object obj5 = this.f3803t;
        if ((obj5 instanceof InterfaceC0032f) && this.f3805v == null) {
            ((InterfaceC0032f) obj5).removeMenuProvider(this.f3801r);
        }
        this.f3803t = null;
        this.f3804u = null;
        this.f3805v = null;
        if (this.f3791g != null) {
            Iterator it4 = this.f3792h.f3761b.iterator();
            while (it4.hasNext()) {
                ((androidx.activity.c) it4.next()).cancel();
            }
            this.f3791g = null;
        }
        androidx.activity.result.e eVar = this.f3809z;
        if (eVar != null) {
            eVar.b();
            this.f3774A.b();
            this.f3775B.b();
        }
    }

    public final void l(boolean z4) {
        if (z4 && (this.f3803t instanceof InterfaceC0938f)) {
            Y(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f3788c.f()) {
            if (fragment != null) {
                fragment.performLowMemory();
                if (z4) {
                    fragment.mChildFragmentManager.l(true);
                }
            }
        }
    }

    public final void m(boolean z4, boolean z5) {
        if (z5 && (this.f3803t instanceof y.y)) {
            Y(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f3788c.f()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z4);
                if (z5) {
                    fragment.mChildFragmentManager.m(z4, true);
                }
            }
        }
    }

    public final void n() {
        Iterator it = this.f3788c.e().iterator();
        while (it.hasNext()) {
            Fragment fragment = (Fragment) it.next();
            if (fragment != null) {
                fragment.onHiddenChanged(fragment.isHidden());
                fragment.mChildFragmentManager.n();
            }
        }
    }

    public final boolean o(MenuItem menuItem) {
        if (this.f3802s < 1) {
            return false;
        }
        for (Fragment fragment : this.f3788c.f()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final void p(Menu menu) {
        if (this.f3802s < 1) {
            return;
        }
        for (Fragment fragment : this.f3788c.f()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    public final void q(Fragment fragment) {
        if (fragment != null) {
            if (fragment.equals(this.f3788c.b(fragment.mWho))) {
                fragment.performPrimaryNavigationFragmentChanged();
            }
        }
    }

    public final void r(boolean z4, boolean z5) {
        if (z5 && (this.f3803t instanceof y.z)) {
            Y(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f3788c.f()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z4);
                if (z5) {
                    fragment.mChildFragmentManager.r(z4, true);
                }
            }
        }
    }

    public final boolean s(Menu menu) {
        boolean z4 = false;
        if (this.f3802s < 1) {
            return false;
        }
        for (Fragment fragment : this.f3788c.f()) {
            if (fragment != null && fragment.isMenuVisible() && fragment.performPrepareOptionsMenu(menu)) {
                z4 = true;
            }
        }
        return z4;
    }

    public final void t(int i5) {
        try {
            this.f3787b = true;
            for (g0 g0Var : this.f3788c.f3873b.values()) {
                if (g0Var != null) {
                    g0Var.f3869e = i5;
                }
            }
            J(i5, false);
            Iterator it = e().iterator();
            while (it.hasNext()) {
                ((C0120l) it.next()).k();
            }
            this.f3787b = false;
            x(true);
        } catch (Throwable th) {
            this.f3787b = false;
            throw th;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f3805v;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f3805v)));
            sb.append("}");
        } else {
            L l5 = this.f3803t;
            if (l5 != null) {
                sb.append(l5.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f3803t)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void u(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String strH = AbstractC0432c.h(str, "    ");
        h0 h0Var = this.f3788c;
        h0Var.getClass();
        String str2 = str + "    ";
        HashMap map = h0Var.f3873b;
        if (!map.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (g0 g0Var : map.values()) {
                printWriter.print(str);
                if (g0Var != null) {
                    Fragment fragment = g0Var.f3867c;
                    printWriter.println(fragment);
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        ArrayList arrayList = h0Var.f3872a;
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i5 = 0; i5 < size3; i5++) {
                Fragment fragment2 = (Fragment) arrayList.get(i5);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList arrayList2 = this.f3790e;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i6 = 0; i6 < size2; i6++) {
                Fragment fragment3 = (Fragment) this.f3790e.get(i6);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i6);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        ArrayList arrayList3 = this.f3789d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i7 = 0; i7 < size; i7++) {
                C0109a c0109a = (C0109a) this.f3789d.get(i7);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i7);
                printWriter.print(": ");
                printWriter.println(c0109a.toString());
                c0109a.f(strH, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f3793i.get());
        synchronized (this.f3786a) {
            try {
                int size4 = this.f3786a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i8 = 0; i8 < size4; i8++) {
                        Object obj = (X) this.f3786a.get(i8);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i8);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f3803t);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f3804u);
        if (this.f3805v != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f3805v);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f3802s);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.E);
        printWriter.print(" mStopped=");
        printWriter.print(this.f3778F);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f3779G);
        if (this.f3777D) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f3777D);
        }
    }

    public final void v(X x4, boolean z4) {
        if (!z4) {
            if (this.f3803t == null) {
                if (!this.f3779G) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (this.E || this.f3778F) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f3786a) {
            try {
                if (this.f3803t == null) {
                    if (!z4) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.f3786a.add(x4);
                    S();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void w(boolean z4) {
        if (this.f3787b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f3803t == null) {
            if (!this.f3779G) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f3803t.f3752e.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z4 && (this.E || this.f3778F)) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.f3781I == null) {
            this.f3781I = new ArrayList();
            this.f3782J = new ArrayList();
        }
    }

    public final boolean x(boolean z4) {
        boolean zA;
        w(z4);
        boolean z5 = false;
        while (true) {
            ArrayList arrayList = this.f3781I;
            ArrayList arrayList2 = this.f3782J;
            synchronized (this.f3786a) {
                if (this.f3786a.isEmpty()) {
                    zA = false;
                } else {
                    try {
                        int size = this.f3786a.size();
                        zA = false;
                        for (int i5 = 0; i5 < size; i5++) {
                            zA |= ((X) this.f3786a.get(i5)).a(arrayList, arrayList2);
                        }
                    } finally {
                    }
                }
            }
            if (!zA) {
                break;
            }
            this.f3787b = true;
            try {
                P(this.f3781I, this.f3782J);
                d();
                z5 = true;
            } catch (Throwable th) {
                d();
                throw th;
            }
        }
        Z();
        if (this.f3780H) {
            this.f3780H = false;
            Iterator it = this.f3788c.d().iterator();
            while (it.hasNext()) {
                g0 g0Var = (g0) it.next();
                Fragment fragment = g0Var.f3867c;
                if (fragment.mDeferStart) {
                    if (this.f3787b) {
                        this.f3780H = true;
                    } else {
                        fragment.mDeferStart = false;
                        g0Var.k();
                    }
                }
            }
        }
        this.f3788c.f3873b.values().removeAll(Collections.singleton(null));
        return z5;
    }

    public final void y(X x4, boolean z4) {
        if (z4 && (this.f3803t == null || this.f3779G)) {
            return;
        }
        w(z4);
        if (x4.a(this.f3781I, this.f3782J)) {
            this.f3787b = true;
            try {
                P(this.f3781I, this.f3782J);
            } finally {
                d();
            }
        }
        Z();
        boolean z5 = this.f3780H;
        h0 h0Var = this.f3788c;
        if (z5) {
            this.f3780H = false;
            Iterator it = h0Var.d().iterator();
            while (it.hasNext()) {
                g0 g0Var = (g0) it.next();
                Fragment fragment = g0Var.f3867c;
                if (fragment.mDeferStart) {
                    if (this.f3787b) {
                        this.f3780H = true;
                    } else {
                        fragment.mDeferStart = false;
                        g0Var.k();
                    }
                }
            }
        }
        h0Var.f3873b.values().removeAll(Collections.singleton(null));
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0224 A[PHI: r13
      0x0224: PHI (r13v9 int) = (r13v8 int), (r13v10 int) binds: [B:103:0x0214, B:108:0x0220] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0164  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void z(ArrayList arrayList, ArrayList arrayList2, int i5, int i6) {
        ViewGroup viewGroup;
        h0 h0Var;
        h0 h0Var2;
        h0 h0Var3;
        int i7;
        int i8;
        int i9;
        ArrayList arrayList3 = arrayList;
        ArrayList arrayList4 = arrayList2;
        boolean z4 = ((C0109a) arrayList3.get(i5)).f3905p;
        ArrayList arrayList5 = this.f3783K;
        if (arrayList5 == null) {
            this.f3783K = new ArrayList();
        } else {
            arrayList5.clear();
        }
        ArrayList arrayList6 = this.f3783K;
        h0 h0Var4 = this.f3788c;
        arrayList6.addAll(h0Var4.f());
        Fragment fragment = this.f3806w;
        int i10 = i5;
        boolean z5 = false;
        while (true) {
            int i11 = 1;
            if (i10 >= i6) {
                h0 h0Var5 = h0Var4;
                this.f3783K.clear();
                if (!z4 && this.f3802s >= 1) {
                    for (int i12 = i5; i12 < i6; i12++) {
                        Iterator it = ((C0109a) arrayList.get(i12)).f3892a.iterator();
                        while (it.hasNext()) {
                            Fragment fragment2 = ((i0) it.next()).f3880b;
                            if (fragment2 == null || fragment2.mFragmentManager == null) {
                                h0Var = h0Var5;
                            } else {
                                h0Var = h0Var5;
                                h0Var.g(f(fragment2));
                            }
                            h0Var5 = h0Var;
                        }
                    }
                }
                for (int i13 = i5; i13 < i6; i13++) {
                    C0109a c0109a = (C0109a) arrayList.get(i13);
                    if (((Boolean) arrayList2.get(i13)).booleanValue()) {
                        c0109a.d(-1);
                        ArrayList arrayList7 = c0109a.f3892a;
                        boolean z6 = true;
                        for (int size = arrayList7.size() - 1; size >= 0; size--) {
                            i0 i0Var = (i0) arrayList7.get(size);
                            Fragment fragment3 = i0Var.f3880b;
                            if (fragment3 != null) {
                                fragment3.mBeingSaved = false;
                                fragment3.setPopDirection(z6);
                                int i14 = c0109a.f;
                                int i15 = 8194;
                                int i16 = PeripheralConstants.ErrorCode.ERROR_PERIPHERAL_NOT_FOUND;
                                if (i14 != 4097) {
                                    if (i14 != 8194) {
                                        i15 = PeripheralConstants.ErrorCode.ERROR_PERIPHERAL_WRONG_STATE;
                                        i16 = 8197;
                                        if (i14 != 8197) {
                                            i15 = i14 != 4099 ? i14 != 4100 ? 0 : i16 : 4099;
                                        }
                                    }
                                }
                                fragment3.setNextTransition(i15);
                                fragment3.setSharedElementNames(c0109a.f3904o, c0109a.n);
                            }
                            int i17 = i0Var.f3879a;
                            Z z7 = c0109a.f3810q;
                            switch (i17) {
                                case 1:
                                    fragment3.setAnimations(i0Var.f3882d, i0Var.f3883e, i0Var.f, i0Var.f3884g);
                                    z6 = true;
                                    z7.T(fragment3, true);
                                    z7.O(fragment3);
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + i0Var.f3879a);
                                case 3:
                                    fragment3.setAnimations(i0Var.f3882d, i0Var.f3883e, i0Var.f, i0Var.f3884g);
                                    z7.a(fragment3);
                                    z6 = true;
                                case 4:
                                    fragment3.setAnimations(i0Var.f3882d, i0Var.f3883e, i0Var.f, i0Var.f3884g);
                                    z7.getClass();
                                    X(fragment3);
                                    z6 = true;
                                case 5:
                                    fragment3.setAnimations(i0Var.f3882d, i0Var.f3883e, i0Var.f, i0Var.f3884g);
                                    z7.T(fragment3, true);
                                    z7.F(fragment3);
                                    z6 = true;
                                case 6:
                                    fragment3.setAnimations(i0Var.f3882d, i0Var.f3883e, i0Var.f, i0Var.f3884g);
                                    z7.c(fragment3);
                                    z6 = true;
                                case 7:
                                    fragment3.setAnimations(i0Var.f3882d, i0Var.f3883e, i0Var.f, i0Var.f3884g);
                                    z7.T(fragment3, true);
                                    z7.g(fragment3);
                                    z6 = true;
                                case 8:
                                    z7.V(null);
                                    z6 = true;
                                case 9:
                                    z7.V(fragment3);
                                    z6 = true;
                                case 10:
                                    z7.U(fragment3, i0Var.f3885h);
                                    z6 = true;
                            }
                        }
                    } else {
                        c0109a.d(1);
                        ArrayList arrayList8 = c0109a.f3892a;
                        int size2 = arrayList8.size();
                        for (int i18 = 0; i18 < size2; i18++) {
                            i0 i0Var2 = (i0) arrayList8.get(i18);
                            Fragment fragment4 = i0Var2.f3880b;
                            if (fragment4 != null) {
                                fragment4.mBeingSaved = false;
                                fragment4.setPopDirection(false);
                                fragment4.setNextTransition(c0109a.f);
                                fragment4.setSharedElementNames(c0109a.n, c0109a.f3904o);
                            }
                            int i19 = i0Var2.f3879a;
                            Z z8 = c0109a.f3810q;
                            switch (i19) {
                                case 1:
                                    fragment4.setAnimations(i0Var2.f3882d, i0Var2.f3883e, i0Var2.f, i0Var2.f3884g);
                                    z8.T(fragment4, false);
                                    z8.a(fragment4);
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + i0Var2.f3879a);
                                case 3:
                                    fragment4.setAnimations(i0Var2.f3882d, i0Var2.f3883e, i0Var2.f, i0Var2.f3884g);
                                    z8.O(fragment4);
                                case 4:
                                    fragment4.setAnimations(i0Var2.f3882d, i0Var2.f3883e, i0Var2.f, i0Var2.f3884g);
                                    z8.F(fragment4);
                                case 5:
                                    fragment4.setAnimations(i0Var2.f3882d, i0Var2.f3883e, i0Var2.f, i0Var2.f3884g);
                                    z8.T(fragment4, false);
                                    X(fragment4);
                                case 6:
                                    fragment4.setAnimations(i0Var2.f3882d, i0Var2.f3883e, i0Var2.f, i0Var2.f3884g);
                                    z8.g(fragment4);
                                case 7:
                                    fragment4.setAnimations(i0Var2.f3882d, i0Var2.f3883e, i0Var2.f, i0Var2.f3884g);
                                    z8.T(fragment4, false);
                                    z8.c(fragment4);
                                case 8:
                                    z8.V(fragment4);
                                case 9:
                                    z8.V(null);
                                case 10:
                                    z8.U(fragment4, i0Var2.f3886i);
                            }
                        }
                    }
                }
                boolean zBooleanValue = ((Boolean) arrayList2.get(i6 - 1)).booleanValue();
                for (int i20 = i5; i20 < i6; i20++) {
                    C0109a c0109a2 = (C0109a) arrayList.get(i20);
                    if (zBooleanValue) {
                        for (int size3 = c0109a2.f3892a.size() - 1; size3 >= 0; size3--) {
                            Fragment fragment5 = ((i0) c0109a2.f3892a.get(size3)).f3880b;
                            if (fragment5 != null) {
                                f(fragment5).k();
                            }
                        }
                    } else {
                        Iterator it2 = c0109a2.f3892a.iterator();
                        while (it2.hasNext()) {
                            Fragment fragment6 = ((i0) it2.next()).f3880b;
                            if (fragment6 != null) {
                                f(fragment6).k();
                            }
                        }
                    }
                }
                J(this.f3802s, true);
                HashSet hashSet = new HashSet();
                for (int i21 = i5; i21 < i6; i21++) {
                    Iterator it3 = ((C0109a) arrayList.get(i21)).f3892a.iterator();
                    while (it3.hasNext()) {
                        Fragment fragment7 = ((i0) it3.next()).f3880b;
                        if (fragment7 != null && (viewGroup = fragment7.mContainer) != null) {
                            hashSet.add(C0120l.l(viewGroup, this));
                        }
                    }
                }
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    C0120l c0120l = (C0120l) it4.next();
                    c0120l.f3915d = zBooleanValue;
                    c0120l.m();
                    c0120l.h();
                }
                for (int i22 = i5; i22 < i6; i22++) {
                    C0109a c0109a3 = (C0109a) arrayList.get(i22);
                    if (((Boolean) arrayList2.get(i22)).booleanValue() && c0109a3.f3812s >= 0) {
                        c0109a3.f3812s = -1;
                    }
                    c0109a3.getClass();
                }
                return;
            }
            C0109a c0109a4 = (C0109a) arrayList3.get(i10);
            if (((Boolean) arrayList4.get(i10)).booleanValue()) {
                h0Var2 = h0Var4;
                int i23 = 1;
                ArrayList arrayList9 = this.f3783K;
                ArrayList arrayList10 = c0109a4.f3892a;
                int size4 = arrayList10.size() - 1;
                while (size4 >= 0) {
                    i0 i0Var3 = (i0) arrayList10.get(size4);
                    int i24 = i0Var3.f3879a;
                    if (i24 != i23) {
                        if (i24 != 3) {
                            switch (i24) {
                                case 6:
                                    arrayList9.add(i0Var3.f3880b);
                                    break;
                                case 8:
                                    fragment = null;
                                    break;
                                case 9:
                                    fragment = i0Var3.f3880b;
                                    break;
                                case 10:
                                    i0Var3.f3886i = i0Var3.f3885h;
                                    break;
                            }
                        }
                        size4--;
                        i23 = 1;
                    }
                    arrayList9.remove(i0Var3.f3880b);
                    size4--;
                    i23 = 1;
                }
            } else {
                ArrayList arrayList11 = this.f3783K;
                int i25 = 0;
                while (true) {
                    ArrayList arrayList12 = c0109a4.f3892a;
                    if (i25 < arrayList12.size()) {
                        i0 i0Var4 = (i0) arrayList12.get(i25);
                        int i26 = i0Var4.f3879a;
                        if (i26 != i11) {
                            if (i26 != 2) {
                                if (i26 == 3 || i26 == 6) {
                                    arrayList11.remove(i0Var4.f3880b);
                                    Fragment fragment8 = i0Var4.f3880b;
                                    if (fragment8 == fragment) {
                                        arrayList12.add(i25, new i0(fragment8, 9));
                                        i25++;
                                        h0Var3 = h0Var4;
                                        i7 = 1;
                                        fragment = null;
                                    }
                                } else if (i26 == 7) {
                                    h0Var3 = h0Var4;
                                    i7 = 1;
                                } else if (i26 == 8) {
                                    arrayList12.add(i25, new i0(9, fragment, 0));
                                    i0Var4.f3881c = true;
                                    i25++;
                                    fragment = i0Var4.f3880b;
                                }
                                h0Var3 = h0Var4;
                                i7 = 1;
                            } else {
                                Fragment fragment9 = i0Var4.f3880b;
                                int i27 = fragment9.mContainerId;
                                int size5 = arrayList11.size() - 1;
                                boolean z9 = false;
                                while (size5 >= 0) {
                                    h0 h0Var6 = h0Var4;
                                    Fragment fragment10 = (Fragment) arrayList11.get(size5);
                                    if (fragment10.mContainerId != i27) {
                                        i8 = i27;
                                    } else if (fragment10 == fragment9) {
                                        i8 = i27;
                                        z9 = true;
                                    } else {
                                        if (fragment10 == fragment) {
                                            i8 = i27;
                                            arrayList12.add(i25, new i0(9, fragment10, 0));
                                            i25++;
                                            i9 = 0;
                                            fragment = null;
                                        } else {
                                            i8 = i27;
                                            i9 = 0;
                                        }
                                        i0 i0Var5 = new i0(3, fragment10, i9);
                                        i0Var5.f3882d = i0Var4.f3882d;
                                        i0Var5.f = i0Var4.f;
                                        i0Var5.f3883e = i0Var4.f3883e;
                                        i0Var5.f3884g = i0Var4.f3884g;
                                        arrayList12.add(i25, i0Var5);
                                        arrayList11.remove(fragment10);
                                        i25++;
                                        fragment = fragment;
                                    }
                                    size5--;
                                    i27 = i8;
                                    h0Var4 = h0Var6;
                                }
                                h0Var3 = h0Var4;
                                i7 = 1;
                                if (z9) {
                                    arrayList12.remove(i25);
                                    i25--;
                                } else {
                                    i0Var4.f3879a = 1;
                                    i0Var4.f3881c = true;
                                    arrayList11.add(fragment9);
                                }
                            }
                            i25 += i7;
                            i11 = i7;
                            h0Var4 = h0Var3;
                        } else {
                            h0Var3 = h0Var4;
                            i7 = i11;
                        }
                        arrayList11.add(i0Var4.f3880b);
                        i25 += i7;
                        i11 = i7;
                        h0Var4 = h0Var3;
                    } else {
                        h0Var2 = h0Var4;
                    }
                }
            }
            z5 = z5 || c0109a4.f3897g;
            i10++;
            arrayList3 = arrayList;
            arrayList4 = arrayList2;
            h0Var4 = h0Var2;
        }
    }
}
