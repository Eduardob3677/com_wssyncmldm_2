package d4;

import L3.C0061j;
import r3.InterfaceC0786N;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final N3.f f6519a;

    /* renamed from: b, reason: collision with root package name */
    public final C0061j f6520b;

    /* renamed from: c, reason: collision with root package name */
    public final N3.a f6521c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC0786N f6522d;

    public d(N3.f fVar, C0061j c0061j, N3.a aVar, InterfaceC0786N interfaceC0786N) {
        d3.i.e("nameResolver", fVar);
        d3.i.e("classProto", c0061j);
        d3.i.e("metadataVersion", aVar);
        d3.i.e("sourceElement", interfaceC0786N);
        this.f6519a = fVar;
        this.f6520b = c0061j;
        this.f6521c = aVar;
        this.f6522d = interfaceC0786N;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return d3.i.a(this.f6519a, dVar.f6519a) && d3.i.a(this.f6520b, dVar.f6520b) && d3.i.a(this.f6521c, dVar.f6521c) && d3.i.a(this.f6522d, dVar.f6522d);
    }

    public final int hashCode() {
        return this.f6522d.hashCode() + ((this.f6521c.hashCode() + ((this.f6520b.hashCode() + (this.f6519a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ClassData(nameResolver=" + this.f6519a + ", classProto=" + this.f6520b + ", metadataVersion=" + this.f6521c + ", sourceElement=" + this.f6522d + ')';
    }
}
