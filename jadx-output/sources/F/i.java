package F;

import java.util.Locale;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: b, reason: collision with root package name */
    public static final i f658b = new i(new j(h.a(new Locale[0])));

    /* renamed from: a, reason: collision with root package name */
    public final j f659a;

    public i(j jVar) {
        this.f659a = jVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof i) {
            if (this.f659a.equals(((i) obj).f659a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f659a.hashCode();
    }

    public final String toString() {
        return this.f659a.toString();
    }
}
