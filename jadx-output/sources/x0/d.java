package x0;

import android.os.Bundle;
import androidx.lifecycle.C0146m;
import com.samsung.android.knox.ex.KnoxContract;
import d3.i;
import e.C0408l;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: b, reason: collision with root package name */
    public boolean f9623b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f9624c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f9625d;

    /* renamed from: e, reason: collision with root package name */
    public C0408l f9626e;

    /* renamed from: a, reason: collision with root package name */
    public final m.f f9622a = new m.f();
    public boolean f = true;

    public final Bundle a(String str) {
        if (!this.f9625d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component".toString());
        }
        Bundle bundle = this.f9624c;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        Bundle bundle3 = this.f9624c;
        if (bundle3 != null) {
            bundle3.remove(str);
        }
        Bundle bundle4 = this.f9624c;
        if (bundle4 == null || bundle4.isEmpty()) {
            this.f9624c = null;
        }
        return bundle2;
    }

    public final c b() {
        String str;
        c cVar;
        Iterator it = this.f9622a.iterator();
        do {
            m.b bVar = (m.b) it;
            if (!bVar.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) bVar.next();
            i.d("components", entry);
            str = (String) entry.getKey();
            cVar = (c) entry.getValue();
        } while (!i.a(str, "androidx.lifecycle.internal.SavedStateHandlesProvider"));
        return cVar;
    }

    public final void c(String str, c cVar) {
        i.e(KnoxContract.KEY, str);
        i.e("provider", cVar);
        if (((c) this.f9622a.m(str, cVar)) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered".toString());
        }
    }

    public final void d() throws NoSuchMethodException, SecurityException {
        if (!this.f) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState".toString());
        }
        C0408l c0408l = this.f9626e;
        if (c0408l == null) {
            c0408l = new C0408l(this);
        }
        this.f9626e = c0408l;
        try {
            C0146m.class.getDeclaredConstructor(null);
            C0408l c0408l2 = this.f9626e;
            if (c0408l2 != null) {
                ((LinkedHashSet) c0408l2.f6778b).add(C0146m.class.getName());
            }
        } catch (NoSuchMethodException e5) {
            throw new IllegalArgumentException("Class " + C0146m.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e5);
        }
    }
}
