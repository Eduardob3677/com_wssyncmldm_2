package androidx.lifecycle;

import android.os.Looper;
import com.samsung.android.knox.ex.KnoxContract;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import l.C0640a;
import m.C0702a;

/* renamed from: androidx.lifecycle.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0157y extends r {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4071a;

    /* renamed from: b, reason: collision with root package name */
    public C0702a f4072b;

    /* renamed from: c, reason: collision with root package name */
    public EnumC0150q f4073c;

    /* renamed from: d, reason: collision with root package name */
    public final WeakReference f4074d;

    /* renamed from: e, reason: collision with root package name */
    public int f4075e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4076g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f4077h;

    public C0157y(InterfaceC0155w interfaceC0155w) {
        d3.i.e("provider", interfaceC0155w);
        new AtomicReference();
        this.f4071a = true;
        this.f4072b = new C0702a();
        this.f4073c = EnumC0150q.f4064d;
        this.f4077h = new ArrayList();
        this.f4074d = new WeakReference(interfaceC0155w);
    }

    @Override // androidx.lifecycle.r
    public final void a(InterfaceC0154v interfaceC0154v) {
        InterfaceC0153u reflectiveGenericLifecycleObserver;
        InterfaceC0155w interfaceC0155w;
        ArrayList arrayList = this.f4077h;
        d3.i.e("observer", interfaceC0154v);
        d("addObserver");
        EnumC0150q enumC0150q = this.f4073c;
        EnumC0150q enumC0150q2 = EnumC0150q.f4063c;
        if (enumC0150q != enumC0150q2) {
            enumC0150q2 = EnumC0150q.f4064d;
        }
        C0156x c0156x = new C0156x();
        HashMap map = AbstractC0158z.f4078a;
        boolean z4 = interfaceC0154v instanceof InterfaceC0153u;
        boolean z5 = interfaceC0154v instanceof InterfaceC0141h;
        if (z4 && z5) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((InterfaceC0141h) interfaceC0154v, (InterfaceC0153u) interfaceC0154v);
        } else if (z5) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((InterfaceC0141h) interfaceC0154v, null);
        } else if (z4) {
            reflectiveGenericLifecycleObserver = (InterfaceC0153u) interfaceC0154v;
        } else {
            Class<?> cls = interfaceC0154v.getClass();
            if (AbstractC0158z.b(cls) == 2) {
                Object obj = AbstractC0158z.f4079b.get(cls);
                d3.i.b(obj);
                List list = (List) obj;
                if (list.size() == 1) {
                    AbstractC0158z.a((Constructor) list.get(0), interfaceC0154v);
                    throw null;
                }
                int size = list.size();
                InterfaceC0144k[] interfaceC0144kArr = new InterfaceC0144k[size];
                if (size > 0) {
                    AbstractC0158z.a((Constructor) list.get(0), interfaceC0154v);
                    throw null;
                }
                reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(interfaceC0144kArr);
            } else {
                reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(interfaceC0154v);
            }
        }
        c0156x.f4070b = reflectiveGenericLifecycleObserver;
        c0156x.f4069a = enumC0150q2;
        if (((C0156x) this.f4072b.m(interfaceC0154v, c0156x)) == null && (interfaceC0155w = (InterfaceC0155w) this.f4074d.get()) != null) {
            boolean z6 = this.f4075e != 0 || this.f;
            EnumC0150q enumC0150qC = c(interfaceC0154v);
            this.f4075e++;
            while (c0156x.f4069a.compareTo(enumC0150qC) < 0 && this.f4072b.f8247g.containsKey(interfaceC0154v)) {
                arrayList.add(c0156x.f4069a);
                C0147n c0147n = EnumC0149p.Companion;
                EnumC0150q enumC0150q3 = c0156x.f4069a;
                c0147n.getClass();
                EnumC0149p enumC0149pB = C0147n.b(enumC0150q3);
                if (enumC0149pB == null) {
                    throw new IllegalStateException("no event up from " + c0156x.f4069a);
                }
                c0156x.a(interfaceC0155w, enumC0149pB);
                arrayList.remove(arrayList.size() - 1);
                enumC0150qC = c(interfaceC0154v);
            }
            if (!z6) {
                h();
            }
            this.f4075e--;
        }
    }

    @Override // androidx.lifecycle.r
    public final void b(InterfaceC0154v interfaceC0154v) {
        d3.i.e("observer", interfaceC0154v);
        d("removeObserver");
        this.f4072b.n(interfaceC0154v);
    }

    public final EnumC0150q c(InterfaceC0154v interfaceC0154v) {
        C0156x c0156x;
        HashMap map = this.f4072b.f8247g;
        m.c cVar = map.containsKey(interfaceC0154v) ? ((m.c) map.get(interfaceC0154v)).f : null;
        EnumC0150q enumC0150q = (cVar == null || (c0156x = (C0156x) cVar.f8252d) == null) ? null : c0156x.f4069a;
        ArrayList arrayList = this.f4077h;
        EnumC0150q enumC0150q2 = arrayList.isEmpty() ^ true ? (EnumC0150q) arrayList.get(arrayList.size() - 1) : null;
        EnumC0150q enumC0150q3 = this.f4073c;
        d3.i.e("state1", enumC0150q3);
        if (enumC0150q == null || enumC0150q.compareTo(enumC0150q3) >= 0) {
            enumC0150q = enumC0150q3;
        }
        return (enumC0150q2 == null || enumC0150q2.compareTo(enumC0150q) >= 0) ? enumC0150q : enumC0150q2;
    }

    public final void d(String str) {
        if (this.f4071a) {
            C0640a.R().f.getClass();
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                throw new IllegalStateException(B.f.v("Method ", str, " must be called on the main thread").toString());
            }
        }
    }

    public final void e(EnumC0149p enumC0149p) {
        d3.i.e(KnoxContract.Config.Settings.PARAM_HWKEY_ACTIVITY_EVENT, enumC0149p);
        d("handleLifecycleEvent");
        f(enumC0149p.a());
    }

    public final void f(EnumC0150q enumC0150q) {
        EnumC0150q enumC0150q2 = this.f4073c;
        if (enumC0150q2 == enumC0150q) {
            return;
        }
        EnumC0150q enumC0150q3 = EnumC0150q.f4064d;
        EnumC0150q enumC0150q4 = EnumC0150q.f4063c;
        if (enumC0150q2 == enumC0150q3 && enumC0150q == enumC0150q4) {
            throw new IllegalStateException(("no event down from " + this.f4073c + " in component " + this.f4074d.get()).toString());
        }
        this.f4073c = enumC0150q;
        if (this.f || this.f4075e != 0) {
            this.f4076g = true;
            return;
        }
        this.f = true;
        h();
        this.f = false;
        if (this.f4073c == enumC0150q4) {
            this.f4072b = new C0702a();
        }
    }

    public final void g() {
        EnumC0150q enumC0150q = EnumC0150q.f4065e;
        d("setCurrentState");
        f(enumC0150q);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
    
        r7.f4076g = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0032, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h() {
        InterfaceC0155w interfaceC0155w = (InterfaceC0155w) this.f4074d.get();
        if (interfaceC0155w == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
        }
        while (true) {
            C0702a c0702a = this.f4072b;
            if (c0702a.f != 0) {
                m.c cVar = c0702a.f8257c;
                d3.i.b(cVar);
                EnumC0150q enumC0150q = ((C0156x) cVar.f8252d).f4069a;
                m.c cVar2 = this.f4072b.f8258d;
                d3.i.b(cVar2);
                EnumC0150q enumC0150q2 = ((C0156x) cVar2.f8252d).f4069a;
                if (enumC0150q == enumC0150q2 && this.f4073c == enumC0150q2) {
                    break;
                }
                this.f4076g = false;
                EnumC0150q enumC0150q3 = this.f4073c;
                m.c cVar3 = this.f4072b.f8257c;
                d3.i.b(cVar3);
                if (enumC0150q3.compareTo(((C0156x) cVar3.f8252d).f4069a) < 0) {
                    C0702a c0702a2 = this.f4072b;
                    m.b bVar = new m.b(c0702a2.f8258d, c0702a2.f8257c, 1);
                    c0702a2.f8259e.put(bVar, Boolean.FALSE);
                    while (bVar.hasNext() && !this.f4076g) {
                        Map.Entry entry = (Map.Entry) bVar.next();
                        d3.i.d("next()", entry);
                        InterfaceC0154v interfaceC0154v = (InterfaceC0154v) entry.getKey();
                        C0156x c0156x = (C0156x) entry.getValue();
                        while (c0156x.f4069a.compareTo(this.f4073c) > 0 && !this.f4076g && this.f4072b.f8247g.containsKey(interfaceC0154v)) {
                            C0147n c0147n = EnumC0149p.Companion;
                            EnumC0150q enumC0150q4 = c0156x.f4069a;
                            c0147n.getClass();
                            EnumC0149p enumC0149pA = C0147n.a(enumC0150q4);
                            if (enumC0149pA == null) {
                                throw new IllegalStateException("no event down from " + c0156x.f4069a);
                            }
                            this.f4077h.add(enumC0149pA.a());
                            c0156x.a(interfaceC0155w, enumC0149pA);
                            this.f4077h.remove(r4.size() - 1);
                        }
                    }
                }
                m.c cVar4 = this.f4072b.f8258d;
                if (!this.f4076g && cVar4 != null && this.f4073c.compareTo(((C0156x) cVar4.f8252d).f4069a) > 0) {
                    C0702a c0702a3 = this.f4072b;
                    c0702a3.getClass();
                    m.d dVar = new m.d(c0702a3);
                    c0702a3.f8259e.put(dVar, Boolean.FALSE);
                    while (dVar.hasNext() && !this.f4076g) {
                        Map.Entry entry2 = (Map.Entry) dVar.next();
                        InterfaceC0154v interfaceC0154v2 = (InterfaceC0154v) entry2.getKey();
                        C0156x c0156x2 = (C0156x) entry2.getValue();
                        while (c0156x2.f4069a.compareTo(this.f4073c) < 0 && !this.f4076g && this.f4072b.f8247g.containsKey(interfaceC0154v2)) {
                            this.f4077h.add(c0156x2.f4069a);
                            C0147n c0147n2 = EnumC0149p.Companion;
                            EnumC0150q enumC0150q5 = c0156x2.f4069a;
                            c0147n2.getClass();
                            EnumC0149p enumC0149pB = C0147n.b(enumC0150q5);
                            if (enumC0149pB == null) {
                                throw new IllegalStateException("no event up from " + c0156x2.f4069a);
                            }
                            c0156x2.a(interfaceC0155w, enumC0149pB);
                            this.f4077h.remove(r4.size() - 1);
                        }
                    }
                }
            } else {
                break;
            }
        }
    }
}
