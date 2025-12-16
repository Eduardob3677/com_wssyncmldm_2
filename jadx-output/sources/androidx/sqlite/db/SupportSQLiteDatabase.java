package androidx.sqlite.db;

import android.content.ContentValues;
import android.database.Cursor;
import java.io.Closeable;
import y0.InterfaceC0926b;
import z0.C0945g;

/* loaded from: classes.dex */
public interface SupportSQLiteDatabase extends Closeable {
    void a();

    void b();

    Cursor c(InterfaceC0926b interfaceC0926b);

    void d(String str);

    void e();

    C0945g f(String str);

    Cursor i(String str);

    boolean isOpen();

    boolean j();

    long k(String str, ContentValues contentValues);

    Cursor query(String str, Object[] objArr);
}
