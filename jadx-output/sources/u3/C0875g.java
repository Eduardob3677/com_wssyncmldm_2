package u3;

import c3.InterfaceC0221a;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* renamed from: u3.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0875g implements InterfaceC0221a {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f9426c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f9427d;

    public /* synthetic */ C0875g(int i5, Object obj) {
        this.f9426c = i5;
        this.f9427d = obj;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f9426c) {
            case 0:
                StringBuilder sb = new StringBuilder("Scope for type parameter ");
                C0876h c0876h = (C0876h) this.f9427d;
                sb.append(((Q3.f) c0876h.f9429d).b());
                return L2.b.g(sb.toString(), ((AbstractC0878j) c0876h.f9430e).getUpperBounds());
            case 1:
                r rVar = (r) this.f9427d;
                rVar.getClass();
                HashSet hashSet = new HashSet();
                for (Q3.f fVar : (Set) rVar.f9457e.f9460l.a()) {
                    if (fVar == null) {
                        r.h(5);
                        throw null;
                    }
                    hashSet.addAll((Collection) rVar.f9454b.e(fVar));
                    hashSet.addAll((Collection) rVar.f9455c.e(fVar));
                }
                return hashSet;
            default:
                return (List) this.f9427d;
        }
    }
}
