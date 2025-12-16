package P3;

import d3.i;
import i3.x;

/* loaded from: classes.dex */
public final class e extends x {

    /* renamed from: b, reason: collision with root package name */
    public final String f2159b;

    /* renamed from: c, reason: collision with root package name */
    public final String f2160c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(String str, String str2) {
        super(11);
        i.e("name", str);
        i.e("desc", str2);
        this.f2159b = str;
        this.f2160c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return i.a(this.f2159b, eVar.f2159b) && i.a(this.f2160c, eVar.f2160c);
    }

    public final int hashCode() {
        return this.f2160c.hashCode() + (this.f2159b.hashCode() * 31);
    }

    @Override // i3.x
    public final String m() {
        return this.f2159b + this.f2160c;
    }
}
