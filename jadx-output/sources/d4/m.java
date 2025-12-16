package d4;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6551a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6552b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f6553c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f6554d;

    /* renamed from: e, reason: collision with root package name */
    public final String f6555e;
    public final Q3.b f;

    public m(P3.f fVar, P3.f fVar2, P3.f fVar3, P3.f fVar4, String str, Q3.b bVar) {
        d3.i.e("filePath", str);
        this.f6551a = fVar;
        this.f6552b = fVar2;
        this.f6553c = fVar3;
        this.f6554d = fVar4;
        this.f6555e = str;
        this.f = bVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return d3.i.a(this.f6551a, mVar.f6551a) && d3.i.a(this.f6552b, mVar.f6552b) && d3.i.a(this.f6553c, mVar.f6553c) && d3.i.a(this.f6554d, mVar.f6554d) && d3.i.a(this.f6555e, mVar.f6555e) && d3.i.a(this.f, mVar.f);
    }

    public final int hashCode() {
        Object obj = this.f6551a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f6552b;
        int iHashCode2 = (iHashCode + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Object obj3 = this.f6553c;
        int iHashCode3 = (iHashCode2 + (obj3 == null ? 0 : obj3.hashCode())) * 31;
        Object obj4 = this.f6554d;
        return this.f.hashCode() + ((this.f6555e.hashCode() + ((iHashCode3 + (obj4 != null ? obj4.hashCode() : 0)) * 31)) * 31);
    }

    public final String toString() {
        return "IncompatibleVersionErrorData(actualVersion=" + this.f6551a + ", compilerVersion=" + this.f6552b + ", languageVersion=" + this.f6553c + ", expectedVersion=" + this.f6554d + ", filePath=" + this.f6555e + ", classId=" + this.f + ')';
    }
}
