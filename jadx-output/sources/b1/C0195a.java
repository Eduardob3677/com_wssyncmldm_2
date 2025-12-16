package b1;

import A3.D;
import a1.InterfaceC0104a;
import c1.AbstractC0213D;
import com.google.android.gms.internal.p000firebaseauthapi.W3;
import java.util.Arrays;

/* renamed from: b1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0195a {

    /* renamed from: a, reason: collision with root package name */
    public final int f5055a;

    /* renamed from: b, reason: collision with root package name */
    public final D f5056b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0104a f5057c;

    public C0195a(D d2, W3 w32) {
        this.f5056b = d2;
        this.f5057c = w32;
        this.f5055a = Arrays.hashCode(new Object[]{d2, w32});
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0195a)) {
            return false;
        }
        C0195a c0195a = (C0195a) obj;
        c0195a.getClass();
        return AbstractC0213D.h(this.f5056b, c0195a.f5056b) && AbstractC0213D.h(this.f5057c, c0195a.f5057c);
    }

    public final int hashCode() {
        return this.f5055a;
    }
}
