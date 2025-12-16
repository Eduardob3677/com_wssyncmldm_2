package R3;

import java.io.ByteArrayInputStream;
import java.io.FilterInputStream;
import java.io.IOException;

/* renamed from: R3.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0079a extends FilterInputStream {

    /* renamed from: c, reason: collision with root package name */
    public int f2377c;

    public C0079a(ByteArrayInputStream byteArrayInputStream, int i5) {
        super(byteArrayInputStream);
        this.f2377c = i5;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        return Math.min(super.available(), this.f2377c);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (this.f2377c <= 0) {
            return -1;
        }
        int i5 = super.read();
        if (i5 >= 0) {
            this.f2377c--;
        }
        return i5;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j3) throws IOException {
        long jSkip = super.skip(Math.min(j3, this.f2377c));
        if (jSkip >= 0) {
            this.f2377c = (int) (this.f2377c - jSkip);
        }
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i5, int i6) throws IOException {
        int i7 = this.f2377c;
        if (i7 <= 0) {
            return -1;
        }
        int i8 = super.read(bArr, i5, Math.min(i6, i7));
        if (i8 >= 0) {
            this.f2377c -= i8;
        }
        return i8;
    }
}
