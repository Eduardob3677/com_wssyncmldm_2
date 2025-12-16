package z0;

import android.database.sqlite.SQLiteProgram;
import java.io.Closeable;

/* renamed from: z0.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0944f implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public final SQLiteProgram f9717c;

    public C0944f(SQLiteProgram sQLiteProgram) {
        this.f9717c = sQLiteProgram;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f9717c.close();
    }

    public final void g(int i5, byte[] bArr) {
        this.f9717c.bindBlob(i5, bArr);
    }

    public final void h(int i5, double d2) {
        this.f9717c.bindDouble(i5, d2);
    }

    public final void l(int i5, long j3) {
        this.f9717c.bindLong(i5, j3);
    }

    public final void m(int i5) {
        this.f9717c.bindNull(i5);
    }

    public final void n(int i5, String str) {
        this.f9717c.bindString(i5, str);
    }
}
