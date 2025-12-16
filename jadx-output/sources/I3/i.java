package I3;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final h f899a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f900b;

    public i(h hVar) {
        this.f899a = hVar;
        this.f900b = false;
    }

    public static i a(i iVar, h hVar, boolean z4, int i5) {
        if ((i5 & 1) != 0) {
            hVar = iVar.f899a;
        }
        if ((i5 & 2) != 0) {
            z4 = iVar.f900b;
        }
        iVar.getClass();
        d3.i.e("qualifier", hVar);
        return new i(hVar, z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f899a == iVar.f899a && this.f900b == iVar.f900b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int iHashCode = this.f899a.hashCode() * 31;
        boolean z4 = this.f900b;
        int i5 = z4;
        if (z4 != 0) {
            i5 = 1;
        }
        return iHashCode + i5;
    }

    public final String toString() {
        return "NullabilityQualifierWithMigrationStatus(qualifier=" + this.f899a + ", isForWarningOnly=" + this.f900b + ')';
    }

    public i(h hVar, boolean z4) {
        this.f899a = hVar;
        this.f900b = z4;
    }
}
