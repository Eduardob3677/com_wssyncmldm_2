package androidx.fragment.app;

import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class c0 extends androidx.lifecycle.Y {

    /* renamed from: g, reason: collision with root package name */
    public static final e4.d f3834g = new e4.d(10);

    /* renamed from: d, reason: collision with root package name */
    public final boolean f3838d;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f3835a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f3836b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f3837c = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public boolean f3839e = false;
    public boolean f = false;

    public c0(boolean z4) {
        this.f3838d = z4;
    }

    public final void b(Fragment fragment) {
        if (this.f) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        HashMap map = this.f3835a;
        if (map.containsKey(fragment.mWho)) {
            return;
        }
        map.put(fragment.mWho, fragment);
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
        }
    }

    public final void c(Fragment fragment, boolean z4) {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + fragment);
        }
        e(fragment.mWho, z4);
    }

    public final void d(String str, boolean z4) {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "Clearing non-config state for saved state of Fragment " + str);
        }
        e(str, z4);
    }

    public final void e(String str, boolean z4) {
        HashMap map = this.f3836b;
        c0 c0Var = (c0) map.get(str);
        if (c0Var != null) {
            if (z4) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(c0Var.f3836b.keySet());
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    c0Var.d((String) it.next(), true);
                }
            }
            c0Var.onCleared();
            map.remove(str);
        }
        HashMap map2 = this.f3837c;
        androidx.lifecycle.c0 c0Var2 = (androidx.lifecycle.c0) map2.get(str);
        if (c0Var2 != null) {
            c0Var2.a();
            map2.remove(str);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c0.class != obj.getClass()) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return this.f3835a.equals(c0Var.f3835a) && this.f3836b.equals(c0Var.f3836b) && this.f3837c.equals(c0Var.f3837c);
    }

    public final void f(Fragment fragment) {
        if (this.f) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f3835a.remove(fragment.mWho) == null || !Log.isLoggable("FragmentManager", 2)) {
                return;
            }
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    public final int hashCode() {
        return this.f3837c.hashCode() + ((this.f3836b.hashCode() + (this.f3835a.hashCode() * 31)) * 31);
    }

    @Override // androidx.lifecycle.Y
    public final void onCleared() {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f3839e = true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.f3835a.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.f3836b.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.f3837c.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
