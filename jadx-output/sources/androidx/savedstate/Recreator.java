package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.EnumC0149p;
import androidx.lifecycle.InterfaceC0153u;
import androidx.lifecycle.InterfaceC0155w;
import androidx.lifecycle.S;
import androidx.lifecycle.Y;
import androidx.lifecycle.c0;
import androidx.lifecycle.d0;
import com.samsung.android.knox.ex.KnoxContract;
import d3.i;
import h0.AbstractC0432c;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import x0.b;
import x0.d;
import x0.f;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/savedstate/Recreator;", "Landroidx/lifecycle/u;", "e/l", "savedstate_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes.dex */
public final class Recreator implements InterfaceC0153u {

    /* renamed from: a, reason: collision with root package name */
    public final f f4975a;

    public Recreator(f fVar) {
        i.e("owner", fVar);
        this.f4975a = fVar;
    }

    @Override // androidx.lifecycle.InterfaceC0153u
    public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) throws IllegalAccessException, NoSuchMethodException, InstantiationException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (enumC0149p != EnumC0149p.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        interfaceC0155w.getLifecycle().b(this);
        f fVar = this.f4975a;
        Bundle bundleA = fVar.getSavedStateRegistry().a("androidx.savedstate.Restarter");
        if (bundleA == null) {
            return;
        }
        ArrayList<String> stringArrayList = bundleA.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        for (String str : stringArrayList) {
            try {
                Class<? extends U> clsAsSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(b.class);
                i.d("{\n                Class.…class.java)\n            }", clsAsSubclass);
                try {
                    Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(null);
                    declaredConstructor.setAccessible(true);
                    try {
                        Object objNewInstance = declaredConstructor.newInstance(null);
                        i.d("{\n                constr…wInstance()\n            }", objNewInstance);
                        if (!(fVar instanceof d0)) {
                            throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner".toString());
                        }
                        c0 viewModelStore = ((d0) fVar).getViewModelStore();
                        d savedStateRegistry = fVar.getSavedStateRegistry();
                        viewModelStore.getClass();
                        LinkedHashMap linkedHashMap = viewModelStore.f4054a;
                        Iterator it = new HashSet(linkedHashMap.keySet()).iterator();
                        while (it.hasNext()) {
                            String str2 = (String) it.next();
                            i.e(KnoxContract.KEY, str2);
                            Y y3 = (Y) linkedHashMap.get(str2);
                            i.b(y3);
                            S.a(y3, savedStateRegistry, fVar.getLifecycle());
                        }
                        if (!new HashSet(linkedHashMap.keySet()).isEmpty()) {
                            savedStateRegistry.d();
                        }
                    } catch (Exception e5) {
                        throw new RuntimeException(AbstractC0432c.i("Failed to instantiate ", str), e5);
                    }
                } catch (NoSuchMethodException e6) {
                    throw new IllegalStateException("Class " + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e6);
                }
            } catch (ClassNotFoundException e7) {
                throw new RuntimeException(B.f.v("Class ", str, " wasn't found"), e7);
            }
        }
    }
}
