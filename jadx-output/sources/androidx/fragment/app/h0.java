package androidx.fragment.app;

import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class h0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3872a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f3873b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f3874c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public c0 f3875d;

    public final void a(Fragment fragment) {
        if (this.f3872a.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f3872a) {
            this.f3872a.add(fragment);
        }
        fragment.mAdded = true;
    }

    public final Fragment b(String str) {
        g0 g0Var = (g0) this.f3873b.get(str);
        if (g0Var != null) {
            return g0Var.f3867c;
        }
        return null;
    }

    public final Fragment c(String str) {
        Fragment fragmentFindFragmentByWho;
        for (g0 g0Var : this.f3873b.values()) {
            if (g0Var != null && (fragmentFindFragmentByWho = g0Var.f3867c.findFragmentByWho(str)) != null) {
                return fragmentFindFragmentByWho;
            }
        }
        return null;
    }

    public final ArrayList d() {
        ArrayList arrayList = new ArrayList();
        for (g0 g0Var : this.f3873b.values()) {
            if (g0Var != null) {
                arrayList.add(g0Var);
            }
        }
        return arrayList;
    }

    public final ArrayList e() {
        ArrayList arrayList = new ArrayList();
        for (g0 g0Var : this.f3873b.values()) {
            if (g0Var != null) {
                arrayList.add(g0Var.f3867c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public final List f() {
        ArrayList arrayList;
        if (this.f3872a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f3872a) {
            arrayList = new ArrayList(this.f3872a);
        }
        return arrayList;
    }

    public final void g(g0 g0Var) {
        Fragment fragment = g0Var.f3867c;
        String str = fragment.mWho;
        HashMap map = this.f3873b;
        if (map.get(str) != null) {
            return;
        }
        map.put(fragment.mWho, g0Var);
        Log.d("FragmentManager", this + " put " + fragment + " to Active Fragments, mActive size: " + map.size());
        if (fragment.mRetainInstanceChangedWhileDetached) {
            if (fragment.mRetainInstance) {
                this.f3875d.b(fragment);
            } else {
                this.f3875d.f(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Added fragment to active set " + fragment);
        }
    }

    public final void h(g0 g0Var) {
        Fragment fragment = g0Var.f3867c;
        if (fragment.mRetainInstance) {
            this.f3875d.f(fragment);
        }
        HashMap map = this.f3873b;
        if (map.get(fragment.mWho) != g0Var) {
            return;
        }
        g0 g0Var2 = (g0) map.put(fragment.mWho, null);
        Log.d("FragmentManager", this + "put null to Active Fragments, mActive size: " + map.size() + ", fragment: " + fragment);
        if (g0Var2 != null && Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + fragment);
        }
    }

    public final Bundle i(Bundle bundle, String str) {
        HashMap map = this.f3874c;
        return bundle != null ? (Bundle) map.put(str, bundle) : (Bundle) map.remove(str);
    }
}
