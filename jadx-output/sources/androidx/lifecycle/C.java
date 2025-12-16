package androidx.lifecycle;

import android.os.Looper;
import java.util.Map;
import l.C0640a;

/* loaded from: classes.dex */
public abstract class C {

    /* renamed from: k, reason: collision with root package name */
    public static final Object f3991k = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Object f3992a;

    /* renamed from: b, reason: collision with root package name */
    public final m.f f3993b;

    /* renamed from: c, reason: collision with root package name */
    public int f3994c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3995d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Object f3996e;
    public volatile Object f;

    /* renamed from: g, reason: collision with root package name */
    public int f3997g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f3998h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f3999i;

    /* renamed from: j, reason: collision with root package name */
    public final B1.h f4000j;

    public C(Object obj) {
        this.f3992a = new Object();
        this.f3993b = new m.f();
        this.f3994c = 0;
        this.f = f3991k;
        this.f4000j = new B1.h(10, this);
        this.f3996e = obj;
        this.f3997g = 0;
    }

    public static void a(String str) {
        C0640a.R().f.getClass();
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException(B.f.v("Cannot invoke ", str, " on a background thread"));
        }
    }

    public final void b(B b3) {
        if (b3.f3988b) {
            if (!b3.e()) {
                b3.b(false);
                return;
            }
            int i5 = b3.f3989c;
            int i6 = this.f3997g;
            if (i5 >= i6) {
                return;
            }
            b3.f3989c = i6;
            b3.f3987a.c(this.f3996e);
        }
    }

    public final void c(B b3) {
        if (this.f3998h) {
            this.f3999i = true;
            return;
        }
        this.f3998h = true;
        do {
            this.f3999i = false;
            if (b3 != null) {
                b(b3);
                b3 = null;
            } else {
                m.f fVar = this.f3993b;
                fVar.getClass();
                m.d dVar = new m.d(fVar);
                fVar.f8259e.put(dVar, Boolean.FALSE);
                while (dVar.hasNext()) {
                    b((B) ((Map.Entry) dVar.next()).getValue());
                    if (this.f3999i) {
                        break;
                    }
                }
            }
        } while (this.f3999i);
        this.f3998h = false;
    }

    public final Object d() {
        Object obj = this.f3996e;
        if (obj != f3991k) {
            return obj;
        }
        return null;
    }

    public final void e(InterfaceC0155w interfaceC0155w, G g5) {
        a("observe");
        if (((C0157y) interfaceC0155w.getLifecycle()).f4073c == EnumC0150q.f4063c) {
            return;
        }
        LiveData$LifecycleBoundObserver liveData$LifecycleBoundObserver = new LiveData$LifecycleBoundObserver(this, interfaceC0155w, g5);
        B b3 = (B) this.f3993b.m(g5, liveData$LifecycleBoundObserver);
        if (b3 != null && !b3.d(interfaceC0155w)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (b3 != null) {
            return;
        }
        interfaceC0155w.getLifecycle().a(liveData$LifecycleBoundObserver);
    }

    public final void f(G g5) {
        a("observeForever");
        A a3 = new A(this, g5);
        B b3 = (B) this.f3993b.m(g5, a3);
        if (b3 instanceof LiveData$LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (b3 != null) {
            return;
        }
        a3.b(true);
    }

    public void g() {
    }

    public void h() {
    }

    public void i(Object obj) {
        boolean z4;
        synchronized (this.f3992a) {
            z4 = this.f == f3991k;
            this.f = obj;
        }
        if (z4) {
            C0640a.R().T(this.f4000j);
        }
    }

    public final void j(G g5) {
        a("removeObserver");
        B b3 = (B) this.f3993b.n(g5);
        if (b3 == null) {
            return;
        }
        b3.c();
        b3.b(false);
    }

    public void k(Object obj) {
        a("setValue");
        this.f3997g++;
        this.f3996e = obj;
        c(null);
    }

    public C() {
        this.f3992a = new Object();
        this.f3993b = new m.f();
        this.f3994c = 0;
        Object obj = f3991k;
        this.f = obj;
        this.f4000j = new B1.h(10, this);
        this.f3996e = obj;
        this.f3997g = -1;
    }
}
