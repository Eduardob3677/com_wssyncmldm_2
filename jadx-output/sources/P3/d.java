package P3;

import d3.i;
import i3.x;

/* loaded from: classes.dex */
public final class d extends x {

    /* renamed from: b, reason: collision with root package name */
    public final String f2157b;

    /* renamed from: c, reason: collision with root package name */
    public final String f2158c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(String str, String str2) {
        super(11);
        i.e("name", str);
        i.e("desc", str2);
        this.f2157b = str;
        this.f2158c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return i.a(this.f2157b, dVar.f2157b) && i.a(this.f2158c, dVar.f2158c);
    }

    public final int hashCode() {
        return this.f2158c.hashCode() + (this.f2157b.hashCode() * 31);
    }

    @Override // i3.x
    public final String m() {
        return this.f2157b + ':' + this.f2158c;
    }
}
