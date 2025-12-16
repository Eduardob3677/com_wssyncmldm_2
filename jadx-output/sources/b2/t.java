package b2;

import com.idm.providers.mo.IDMMoInterface;
import h2.InterfaceC0444a;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import k2.InterfaceC0638a;

/* loaded from: classes.dex */
public final class t extends Z0.j {

    /* renamed from: b, reason: collision with root package name */
    public final Set f5149b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f5150c;

    /* renamed from: d, reason: collision with root package name */
    public final Set f5151d;

    /* renamed from: e, reason: collision with root package name */
    public final Set f5152e;
    public final d f;

    public t(c cVar, i iVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (l lVar : cVar.f5117b) {
            int i5 = lVar.f5136c;
            boolean z4 = i5 == 0;
            int i6 = lVar.f5135b;
            Class cls = lVar.f5134a;
            if (z4) {
                if (i6 == 2) {
                    hashSet4.add(cls);
                } else {
                    hashSet.add(cls);
                }
            } else if (i5 == 2) {
                hashSet3.add(cls);
            } else if (i6 == 2) {
                hashSet5.add(cls);
            } else {
                hashSet2.add(cls);
            }
        }
        if (!cVar.f.isEmpty()) {
            hashSet.add(InterfaceC0444a.class);
        }
        this.f5149b = Collections.unmodifiableSet(hashSet);
        this.f5150c = Collections.unmodifiableSet(hashSet2);
        Collections.unmodifiableSet(hashSet3);
        this.f5151d = Collections.unmodifiableSet(hashSet4);
        this.f5152e = Collections.unmodifiableSet(hashSet5);
        this.f = iVar;
    }

    @Override // Z0.j, b2.d
    public final Object a(Class cls) {
        if (!this.f5149b.contains(cls)) {
            throw new A0.c("Attempting to request an undeclared dependency " + cls + IDMMoInterface.IDM_MO_ROOT_PATH);
        }
        Object objA = this.f.a(cls);
        if (!cls.equals(InterfaceC0444a.class)) {
            return objA;
        }
        return new s();
    }

    @Override // b2.d
    public final InterfaceC0638a b(Class cls) {
        if (this.f5150c.contains(cls)) {
            return this.f.b(cls);
        }
        throw new A0.c("Attempting to request an undeclared dependency Provider<" + cls + ">.");
    }

    @Override // Z0.j, b2.d
    public final Set e(Class cls) {
        if (this.f5151d.contains(cls)) {
            return this.f.e(cls);
        }
        throw new A0.c("Attempting to request an undeclared dependency Set<" + cls + ">.");
    }

    @Override // b2.d
    public final InterfaceC0638a f(Class cls) {
        if (this.f5152e.contains(cls)) {
            return this.f.f(cls);
        }
        throw new A0.c("Attempting to request an undeclared dependency Provider<Set<" + cls + ">>.");
    }
}
