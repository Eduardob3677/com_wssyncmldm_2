package Z;

import android.util.Log;
import androidx.fragment.app.Fragment;
import d3.i;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final c f2991a = c.f2990a;

    public static c a(Fragment fragment) {
        while (fragment != null) {
            if (fragment.isAdded()) {
                i.d("declaringFragment.parentFragmentManager", fragment.getParentFragmentManager());
            }
            fragment = fragment.getParentFragment();
        }
        return f2991a;
    }

    public static void b(h hVar) {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "StrictMode violation in ".concat(hVar.f2992c.getClass().getName()), hVar);
        }
    }

    public static final void c(Fragment fragment, String str) {
        i.e("fragment", fragment);
        i.e("previousFragmentId", str);
        b(new a(fragment, "Attempting to reuse fragment " + fragment + " with previous ID " + str));
        a(fragment).getClass();
        Object obj = b.f2983c;
        if (obj instanceof Void) {
        }
    }
}
