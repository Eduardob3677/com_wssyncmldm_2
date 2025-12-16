package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class V implements b0 {

    /* renamed from: c, reason: collision with root package name */
    public final Application f4039c;

    /* renamed from: d, reason: collision with root package name */
    public final a0 f4040d;

    /* renamed from: e, reason: collision with root package name */
    public final Bundle f4041e;
    public final r f;

    /* renamed from: g, reason: collision with root package name */
    public final x0.d f4042g;

    public V(Application application, x0.f fVar, Bundle bundle) {
        a0 a0Var;
        d3.i.e("owner", fVar);
        this.f4042g = fVar.getSavedStateRegistry();
        this.f = fVar.getLifecycle();
        this.f4041e = bundle;
        this.f4039c = application;
        if (application != null) {
            if (a0.f4049g == null) {
                a0.f4049g = new a0(application);
            }
            a0Var = a0.f4049g;
            d3.i.b(a0Var);
        } else {
            a0Var = new a0(null);
        }
        this.f4040d = a0Var;
    }

    @Override // androidx.lifecycle.b0
    public final Y a(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return b(cls, canonicalName);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    public final Y b(Class cls, String str) throws NoSuchMethodException, IOException, SecurityException {
        r rVar = this.f;
        if (rVar == null) {
            throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
        }
        boolean zIsAssignableFrom = AbstractC0134a.class.isAssignableFrom(cls);
        Application application = this.f4039c;
        Constructor constructorA = (!zIsAssignableFrom || application == null) ? W.a(cls, W.f4044b) : W.a(cls, W.f4043a);
        if (constructorA == null) {
            if (application != null) {
                return this.f4040d.a(cls);
            }
            if (Z.f4048e == null) {
                Z.f4048e = new Z();
            }
            Z z4 = Z.f4048e;
            d3.i.b(z4);
            return z4.a(cls);
        }
        x0.d dVar = this.f4042g;
        d3.i.b(dVar);
        Bundle bundleA = dVar.a(str);
        Class[] clsArr = P.f;
        P pB = S.b(bundleA, this.f4041e);
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, pB);
        savedStateHandleController.b(rVar, dVar);
        EnumC0150q enumC0150q = ((C0157y) rVar).f4073c;
        if (enumC0150q == EnumC0150q.f4064d || enumC0150q.compareTo(EnumC0150q.f) >= 0) {
            dVar.d();
        } else {
            rVar.a(new LegacySavedStateHandleController$tryToAddRecreator$1(rVar, dVar));
        }
        Y yB = (!zIsAssignableFrom || application == null) ? W.b(cls, constructorA, pB) : W.b(cls, constructorA, application, pB);
        yB.setTagIfAbsent("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
        return yB;
    }

    @Override // androidx.lifecycle.b0
    public final Y e(Class cls, b0.c cVar) {
        Z z4 = Z.f4047d;
        LinkedHashMap linkedHashMap = cVar.f5052a;
        String str = (String) linkedHashMap.get(z4);
        if (str == null) {
            throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        }
        if (linkedHashMap.get(S.f4027a) == null || linkedHashMap.get(S.f4028b) == null) {
            if (this.f != null) {
                return b(cls, str);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        Application application = (Application) linkedHashMap.get(Z.f4046c);
        boolean zIsAssignableFrom = AbstractC0134a.class.isAssignableFrom(cls);
        Constructor constructorA = (!zIsAssignableFrom || application == null) ? W.a(cls, W.f4044b) : W.a(cls, W.f4043a);
        return constructorA == null ? this.f4040d.e(cls, cVar) : (!zIsAssignableFrom || application == null) ? W.b(cls, constructorA, S.c(cVar)) : W.b(cls, constructorA, application, S.c(cVar));
    }
}
