package Z0;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class l extends k {

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f3018c;

    public l(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f3018c = bArr;
    }

    @Override // Z0.k
    public final byte[] q() {
        return this.f3018c;
    }
}
