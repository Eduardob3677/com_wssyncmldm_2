package r3;

import java.util.List;

/* renamed from: r3.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0823z {

    /* renamed from: a, reason: collision with root package name */
    public final Q3.b f8833a;

    /* renamed from: b, reason: collision with root package name */
    public final List f8834b;

    public C0823z(Q3.b bVar, List list) {
        d3.i.e("classId", bVar);
        this.f8833a = bVar;
        this.f8834b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0823z)) {
            return false;
        }
        C0823z c0823z = (C0823z) obj;
        return d3.i.a(this.f8833a, c0823z.f8833a) && d3.i.a(this.f8834b, c0823z.f8834b);
    }

    public final int hashCode() {
        return this.f8834b.hashCode() + (this.f8833a.hashCode() * 31);
    }

    public final String toString() {
        return "ClassRequest(classId=" + this.f8833a + ", typeParametersCount=" + this.f8834b + ')';
    }
}
