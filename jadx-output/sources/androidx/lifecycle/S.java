package androidx.lifecycle;

import J.r0;
import android.app.Activity;
import android.app.FragmentManager;
import android.os.Bundle;
import android.view.View;
import com.samsung.android.knox.ex.KnoxContract;
import com.wssyncmldm.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import s2.C0837c;

/* loaded from: classes.dex */
public abstract class S {

    /* renamed from: a, reason: collision with root package name */
    public static final Z f4027a = new Z();

    /* renamed from: b, reason: collision with root package name */
    public static final Z f4028b = new Z();

    /* renamed from: c, reason: collision with root package name */
    public static final Z f4029c = new Z();

    public static final void a(Y y3, x0.d dVar, r rVar) {
        d3.i.e("registry", dVar);
        d3.i.e("lifecycle", rVar);
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) y3.getTag("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController == null || savedStateHandleController.f4033c) {
            return;
        }
        savedStateHandleController.b(rVar, dVar);
        EnumC0150q enumC0150q = ((C0157y) rVar).f4073c;
        if (enumC0150q == EnumC0150q.f4064d || enumC0150q.compareTo(EnumC0150q.f) >= 0) {
            dVar.d();
        } else {
            rVar.a(new LegacySavedStateHandleController$tryToAddRecreator$1(rVar, dVar));
        }
    }

    public static P b(Bundle bundle, Bundle bundle2) {
        if (bundle == null) {
            if (bundle2 == null) {
                return new P();
            }
            HashMap map = new HashMap();
            for (String str : bundle2.keySet()) {
                d3.i.d(KnoxContract.KEY, str);
                map.put(str, bundle2.get(str));
            }
            return new P(map);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state".toString());
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = parcelableArrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            Object obj = parcelableArrayList.get(i5);
            d3.i.c("null cannot be cast to non-null type kotlin.String", obj);
            linkedHashMap.put((String) obj, parcelableArrayList2.get(i5));
        }
        return new P(linkedHashMap);
    }

    public static final P c(b0.c cVar) {
        Z z4 = f4027a;
        LinkedHashMap linkedHashMap = cVar.f5052a;
        x0.f fVar = (x0.f) linkedHashMap.get(z4);
        if (fVar == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
        }
        d0 d0Var = (d0) linkedHashMap.get(f4028b);
        if (d0Var == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
        }
        Bundle bundle = (Bundle) linkedHashMap.get(f4029c);
        String str = (String) linkedHashMap.get(Z.f4047d);
        if (str == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
        }
        x0.c cVarB = fVar.getSavedStateRegistry().b();
        T t2 = cVarB instanceof T ? (T) cVarB : null;
        if (t2 == null) {
            throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
        }
        LinkedHashMap linkedHashMap2 = f(d0Var).f4038a;
        P p4 = (P) linkedHashMap2.get(str);
        if (p4 != null) {
            return p4;
        }
        Class[] clsArr = P.f;
        t2.b();
        Bundle bundle2 = t2.f4036c;
        Bundle bundle3 = bundle2 != null ? bundle2.getBundle(str) : null;
        Bundle bundle4 = t2.f4036c;
        if (bundle4 != null) {
            bundle4.remove(str);
        }
        Bundle bundle5 = t2.f4036c;
        if (bundle5 != null && bundle5.isEmpty()) {
            t2.f4036c = null;
        }
        P pB = b(bundle3, bundle);
        linkedHashMap2.put(str, pB);
        return pB;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void d(Activity activity, EnumC0149p enumC0149p) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTIVITY_EVENT, enumC0149p);
        if (activity instanceof InterfaceC0155w) {
            r lifecycle = ((InterfaceC0155w) activity).getLifecycle();
            if (lifecycle instanceof C0157y) {
                ((C0157y) lifecycle).e(enumC0149p);
            }
        }
    }

    public static final void e(x0.f fVar) {
        d3.i.e("<this>", fVar);
        EnumC0150q enumC0150q = ((C0157y) fVar.getLifecycle()).f4073c;
        if (enumC0150q != EnumC0150q.f4064d && enumC0150q != EnumC0150q.f4065e) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (fVar.getSavedStateRegistry().b() == null) {
            T t2 = new T(fVar.getSavedStateRegistry(), (d0) fVar);
            fVar.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider", t2);
            fVar.getLifecycle().a(new SavedStateHandleAttacher(t2));
        }
    }

    public static final U f(d0 d0Var) {
        d3.i.e("<this>", d0Var);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new b0.d(L2.b.q(d3.q.f6516a.b(U.class))));
        b0.d[] dVarArr = (b0.d[]) arrayList.toArray(new b0.d[0]);
        b0.d[] dVarArr2 = (b0.d[]) Arrays.copyOf(dVarArr, dVarArr.length);
        d3.i.e("initializers", dVarArr2);
        C0837c c0837c = new C0837c();
        c0837c.f9022c = dVarArr2;
        return (U) new r0(d0Var.getViewModelStore(), (b0) c0837c, d0Var instanceof InterfaceC0145l ? ((InterfaceC0145l) d0Var).getDefaultViewModelCreationExtras() : b0.a.f5051b).e(U.class, "androidx.lifecycle.internal.SavedStateHandlesVM");
    }

    public static void g(Activity activity) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTION_ACTIVITY, activity);
        N.Companion.getClass();
        activity.registerActivityLifecycleCallbacks(new N());
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new O(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    public static final void h(View view, InterfaceC0155w interfaceC0155w) {
        d3.i.e("<this>", view);
        view.setTag(R.id.view_tree_lifecycle_owner, interfaceC0155w);
    }
}
