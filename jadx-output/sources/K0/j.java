package K0;

/* loaded from: classes.dex */
public final class j extends q {

    /* renamed from: a, reason: collision with root package name */
    public final p f1253a;

    /* renamed from: b, reason: collision with root package name */
    public final a f1254b;

    public j(p pVar, a aVar) {
        this.f1253a = pVar;
        this.f1254b = aVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        p pVar = this.f1253a;
        if (pVar != null ? pVar.equals(((j) qVar).f1253a) : ((j) qVar).f1253a == null) {
            a aVar = this.f1254b;
            if (aVar == null) {
                if (((j) qVar).f1254b == null) {
                    return true;
                }
            } else if (aVar.equals(((j) qVar).f1254b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        p pVar = this.f1253a;
        int iHashCode = ((pVar == null ? 0 : pVar.hashCode()) ^ 1000003) * 1000003;
        a aVar = this.f1254b;
        return iHashCode ^ (aVar != null ? aVar.hashCode() : 0);
    }

    public final String toString() {
        return "ClientInfo{clientType=" + this.f1253a + ", androidClientInfo=" + this.f1254b + "}";
    }
}
