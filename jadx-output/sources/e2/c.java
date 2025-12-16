package e2;

import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final String f6806a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f6807b;

    public c(String str, Map map) {
        this.f6806a = str;
        this.f6807b = map;
    }

    public static c a(String str) {
        return new c(str, Collections.emptyMap());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f6806a.equals(cVar.f6806a) && this.f6807b.equals(cVar.f6807b);
    }

    public final int hashCode() {
        return this.f6807b.hashCode() + (this.f6806a.hashCode() * 31);
    }

    public final String toString() {
        return "FieldDescriptor{name=" + this.f6806a + ", properties=" + this.f6807b.values() + "}";
    }
}
