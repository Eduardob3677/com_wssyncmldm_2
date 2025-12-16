package K0;

/* loaded from: classes.dex */
public final class n extends v {

    /* renamed from: a, reason: collision with root package name */
    public final u f1268a;

    /* renamed from: b, reason: collision with root package name */
    public final t f1269b;

    public n(u uVar, t tVar) {
        this.f1268a = uVar;
        this.f1269b = tVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        u uVar = this.f1268a;
        if (uVar != null ? uVar.equals(((n) vVar).f1268a) : ((n) vVar).f1268a == null) {
            t tVar = this.f1269b;
            if (tVar == null) {
                if (((n) vVar).f1269b == null) {
                    return true;
                }
            } else if (tVar.equals(((n) vVar).f1269b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        u uVar = this.f1268a;
        int iHashCode = ((uVar == null ? 0 : uVar.hashCode()) ^ 1000003) * 1000003;
        t tVar = this.f1269b;
        return iHashCode ^ (tVar != null ? tVar.hashCode() : 0);
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f1268a + ", mobileSubtype=" + this.f1269b + "}";
    }
}
