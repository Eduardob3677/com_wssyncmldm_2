package V3;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final Q3.b f2795a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2796b;

    public f(Q3.b bVar, int i5) {
        this.f2795a = bVar;
        this.f2796b = i5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return d3.i.a(this.f2795a, fVar.f2795a) && this.f2796b == fVar.f2796b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f2796b) + (this.f2795a.hashCode() * 31);
    }

    public final String toString() {
        int i5;
        StringBuilder sb = new StringBuilder();
        int i6 = 0;
        while (true) {
            i5 = this.f2796b;
            if (i6 >= i5) {
                break;
            }
            sb.append("kotlin/Array<");
            i6++;
        }
        sb.append(this.f2795a);
        for (int i7 = 0; i7 < i5; i7++) {
            sb.append(">");
        }
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }
}
