package p2;

import A3.D;
import c1.AbstractC0213D;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public String f8578a;

    public final boolean equals(Object obj) {
        if (obj instanceof b) {
            return AbstractC0213D.h(this.f8578a, ((b) obj).f8578a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f8578a});
    }

    public final String toString() {
        D d2 = new D(this);
        d2.C0("token", this.f8578a);
        return d2.toString();
    }
}
