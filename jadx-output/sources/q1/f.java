package q1;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class f extends FilterInputStream {

    /* renamed from: c, reason: collision with root package name */
    public long f8618c;

    /* renamed from: d, reason: collision with root package name */
    public long f8619d;

    public f(InputStream inputStream) {
        super(inputStream);
        this.f8619d = -1L;
        inputStream.getClass();
        this.f8618c = 1048577L;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        return (int) Math.min(((FilterInputStream) this).in.available(), this.f8618c);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i5) {
        ((FilterInputStream) this).in.mark(i5);
        this.f8619d = this.f8618c;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (this.f8618c == 0) {
            return -1;
        }
        int i5 = ((FilterInputStream) this).in.read();
        if (i5 != -1) {
            this.f8618c--;
        }
        return i5;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.f8619d == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.f8618c = this.f8619d;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j3) throws IOException {
        long jSkip = ((FilterInputStream) this).in.skip(Math.min(j3, this.f8618c));
        this.f8618c -= jSkip;
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i5, int i6) throws IOException {
        long j3 = this.f8618c;
        if (j3 == 0) {
            return -1;
        }
        int i7 = ((FilterInputStream) this).in.read(bArr, i5, (int) Math.min(i6, j3));
        if (i7 != -1) {
            this.f8618c -= i7;
        }
        return i7;
    }
}
