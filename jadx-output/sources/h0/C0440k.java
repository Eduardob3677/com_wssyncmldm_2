package h0;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;

/* renamed from: h0.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0440k {

    /* renamed from: a, reason: collision with root package name */
    public final int f6979a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6980b;

    /* renamed from: c, reason: collision with root package name */
    public final long f6981c;

    /* renamed from: d, reason: collision with root package name */
    public final long f6982d;

    public C0440k(int i5, int i6, long j3, long j5) {
        this.f6979a = i5;
        this.f6980b = i6;
        this.f6981c = j3;
        this.f6982d = j5;
    }

    public static C0440k a(File file) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
        try {
            C0440k c0440k = new C0440k(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
            dataInputStream.close();
            return c0440k;
        } catch (Throwable th) {
            try {
                dataInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void b(File file) throws IOException {
        file.delete();
        DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        try {
            dataOutputStream.writeInt(this.f6979a);
            dataOutputStream.writeInt(this.f6980b);
            dataOutputStream.writeLong(this.f6981c);
            dataOutputStream.writeLong(this.f6982d);
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C0440k)) {
            return false;
        }
        C0440k c0440k = (C0440k) obj;
        return this.f6980b == c0440k.f6980b && this.f6981c == c0440k.f6981c && this.f6979a == c0440k.f6979a && this.f6982d == c0440k.f6982d;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f6980b), Long.valueOf(this.f6981c), Integer.valueOf(this.f6979a), Long.valueOf(this.f6982d));
    }
}
