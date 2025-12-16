package w0;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f9581a;

    /* renamed from: b, reason: collision with root package name */
    public final String f9582b;

    /* renamed from: c, reason: collision with root package name */
    public final String f9583c;

    /* renamed from: d, reason: collision with root package name */
    public final List f9584d;

    /* renamed from: e, reason: collision with root package name */
    public final List f9585e;

    public b(String str, String str2, String str3, ArrayList arrayList, ArrayList arrayList2) {
        this.f9581a = str;
        this.f9582b = str2;
        this.f9583c = str3;
        this.f9584d = Collections.unmodifiableList(arrayList);
        this.f9585e = Collections.unmodifiableList(arrayList2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f9581a.equals(bVar.f9581a) && this.f9582b.equals(bVar.f9582b) && this.f9583c.equals(bVar.f9583c) && this.f9584d.equals(bVar.f9584d)) {
            return this.f9585e.equals(bVar.f9585e);
        }
        return false;
    }

    public final int hashCode() {
        return this.f9585e.hashCode() + ((this.f9584d.hashCode() + ((this.f9583c.hashCode() + ((this.f9582b.hashCode() + (this.f9581a.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ForeignKey{referenceTable='" + this.f9581a + "', onDelete='" + this.f9582b + "', onUpdate='" + this.f9583c + "', columnNames=" + this.f9584d + ", referenceColumnNames=" + this.f9585e + '}';
    }
}
