package L0;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final I0.b f1322a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f1323b;

    public f(I0.b bVar, byte[] bArr) {
        if (bVar == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.f1322a = bVar;
        this.f1323b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f1322a.equals(fVar.f1322a)) {
            return Arrays.equals(this.f1323b, fVar.f1323b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f1323b) ^ ((this.f1322a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.f1322a + ", bytes=[...]}";
    }
}
