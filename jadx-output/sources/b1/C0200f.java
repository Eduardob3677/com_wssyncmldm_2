package b1;

import A3.D;
import c1.AbstractC0213D;
import com.samsung.android.knox.ex.KnoxContract;
import java.util.Arrays;

/* renamed from: b1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0200f {

    /* renamed from: a, reason: collision with root package name */
    public final C0195a f5078a;

    /* renamed from: b, reason: collision with root package name */
    public final Z0.c f5079b;

    public C0200f(C0195a c0195a, Z0.c cVar) {
        this.f5078a = c0195a;
        this.f5079b = cVar;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof C0200f)) {
            C0200f c0200f = (C0200f) obj;
            if (AbstractC0213D.h(this.f5078a, c0200f.f5078a) && AbstractC0213D.h(this.f5079b, c0200f.f5079b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5078a, this.f5079b});
    }

    public final String toString() {
        D d2 = new D(this);
        d2.C0(KnoxContract.KEY, this.f5078a);
        d2.C0("feature", this.f5079b);
        return d2.toString();
    }
}
