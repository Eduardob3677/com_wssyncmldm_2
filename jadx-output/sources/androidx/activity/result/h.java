package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.lifecycle.C0157y;
import androidx.lifecycle.EnumC0149p;
import androidx.lifecycle.EnumC0150q;
import androidx.lifecycle.InterfaceC0153u;
import androidx.lifecycle.InterfaceC0155w;
import androidx.lifecycle.r;
import b.AbstractC0194a;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import f3.AbstractC0425d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f3194a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f3195b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f3196c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f3197d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final transient HashMap f3198e = new HashMap();
    public final HashMap f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final Bundle f3199g = new Bundle();

    public final boolean a(int i5, int i6, Intent intent) {
        b bVar;
        String str = (String) this.f3194a.get(Integer.valueOf(i5));
        if (str == null) {
            return false;
        }
        f fVar = (f) this.f3198e.get(str);
        if (fVar == null || (bVar = fVar.f3190a) == null || !this.f3197d.contains(str)) {
            this.f.remove(str);
            this.f3199g.putParcelable(str, new a(intent, i6));
            return true;
        }
        bVar.a(fVar.f3191b.c(intent, i6));
        this.f3197d.remove(str);
        return true;
    }

    public abstract void b(int i5, AbstractC0194a abstractC0194a, Object obj);

    public final d c(final String str, InterfaceC0155w interfaceC0155w, final AbstractC0194a abstractC0194a, final b bVar) {
        r lifecycle = interfaceC0155w.getLifecycle();
        C0157y c0157y = (C0157y) lifecycle;
        if (c0157y.f4073c.compareTo(EnumC0150q.f) >= 0) {
            throw new IllegalStateException("LifecycleOwner " + interfaceC0155w + " is attempting to register while current state is " + c0157y.f4073c + ". LifecycleOwners must call register before they are STARTED.");
        }
        e(str);
        HashMap map = this.f3196c;
        g gVar = (g) map.get(str);
        if (gVar == null) {
            gVar = new g(lifecycle);
        }
        InterfaceC0153u interfaceC0153u = new InterfaceC0153u() { // from class: androidx.activity.result.ActivityResultRegistry$1
            @Override // androidx.lifecycle.InterfaceC0153u
            public final void a(InterfaceC0155w interfaceC0155w2, EnumC0149p enumC0149p) {
                boolean zEquals = EnumC0149p.ON_START.equals(enumC0149p);
                String str2 = str;
                h hVar = this.f3184d;
                if (!zEquals) {
                    if (EnumC0149p.ON_STOP.equals(enumC0149p)) {
                        hVar.f3198e.remove(str2);
                        return;
                    } else {
                        if (EnumC0149p.ON_DESTROY.equals(enumC0149p)) {
                            hVar.f(str2);
                            return;
                        }
                        return;
                    }
                }
                HashMap map2 = hVar.f3198e;
                b bVar2 = bVar;
                AbstractC0194a abstractC0194a2 = abstractC0194a;
                map2.put(str2, new f(abstractC0194a2, bVar2));
                HashMap map3 = hVar.f;
                if (map3.containsKey(str2)) {
                    Object obj = map3.get(str2);
                    map3.remove(str2);
                    bVar2.a(obj);
                }
                Bundle bundle = hVar.f3199g;
                a aVar = (a) bundle.getParcelable(str2);
                if (aVar != null) {
                    bundle.remove(str2);
                    bVar2.a(abstractC0194a2.c(aVar.f3186d, aVar.f3185c));
                }
            }
        };
        gVar.f3192a.a(interfaceC0153u);
        gVar.f3193b.add(interfaceC0153u);
        map.put(str, gVar);
        return new d();
    }

    public final e d(String str, AbstractC0194a abstractC0194a, b bVar) {
        e(str);
        this.f3198e.put(str, new f(abstractC0194a, bVar));
        HashMap map = this.f;
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            map.remove(str);
            bVar.a(obj);
        }
        Bundle bundle = this.f3199g;
        a aVar = (a) bundle.getParcelable(str);
        if (aVar != null) {
            bundle.remove(str);
            bVar.a(abstractC0194a.c(aVar.f3186d, aVar.f3185c));
        }
        return new e(this, str, abstractC0194a);
    }

    public final void e(String str) {
        HashMap map = this.f3195b;
        if (((Integer) map.get(str)) != null) {
            return;
        }
        AbstractC0425d.f6830c.getClass();
        int iA = AbstractC0425d.f6831d.a();
        while (true) {
            int i5 = iA + NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID;
            HashMap map2 = this.f3194a;
            if (!map2.containsKey(Integer.valueOf(i5))) {
                map2.put(Integer.valueOf(i5), str);
                map.put(str, Integer.valueOf(i5));
                return;
            } else {
                AbstractC0425d.f6830c.getClass();
                iA = AbstractC0425d.f6831d.a();
            }
        }
    }

    public final void f(String str) {
        Integer num;
        if (!this.f3197d.contains(str) && (num = (Integer) this.f3195b.remove(str)) != null) {
            this.f3194a.remove(num);
        }
        this.f3198e.remove(str);
        HashMap map = this.f;
        if (map.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + map.get(str));
            map.remove(str);
        }
        Bundle bundle = this.f3199g;
        if (bundle.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + bundle.getParcelable(str));
            bundle.remove(str);
        }
        HashMap map2 = this.f3196c;
        g gVar = (g) map2.get(str);
        if (gVar != null) {
            ArrayList arrayList = gVar.f3193b;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                gVar.f3192a.b((InterfaceC0153u) it.next());
            }
            arrayList.clear();
            map2.remove(str);
        }
    }
}
