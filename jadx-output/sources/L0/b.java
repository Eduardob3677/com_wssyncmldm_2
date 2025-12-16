package L0;

import J.r0;
import android.util.Base64;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f1314a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f1315b;

    /* renamed from: c, reason: collision with root package name */
    public final I0.c f1316c;

    public b(String str, byte[] bArr, I0.c cVar) {
        this.f1314a = str;
        this.f1315b = bArr;
        this.f1316c = cVar;
    }

    public static r0 a() {
        r0 r0Var = new r0();
        r0Var.f1008e = I0.c.f870c;
        return r0Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f1314a.equals(bVar.f1314a) && Arrays.equals(this.f1315b, bVar.f1315b) && this.f1316c.equals(bVar.f1316c);
    }

    public final int hashCode() {
        return this.f1316c.hashCode() ^ ((((this.f1314a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f1315b)) * 1000003);
    }

    public final String toString() {
        byte[] bArr = this.f1315b;
        return "TransportContext(" + this.f1314a + ", " + this.f1316c + ", " + (bArr == null ? "" : Base64.encodeToString(bArr, 2)) + ")";
    }
}
