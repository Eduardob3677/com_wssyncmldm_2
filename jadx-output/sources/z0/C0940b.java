package z0;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import e.v;
import y0.InterfaceC0926b;

/* renamed from: z0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0940b implements SupportSQLiteDatabase {

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f9709d = new String[0];

    /* renamed from: c, reason: collision with root package name */
    public final SQLiteDatabase f9710c;

    public C0940b(SQLiteDatabase sQLiteDatabase) {
        this.f9710c = sQLiteDatabase;
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void a() {
        this.f9710c.endTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void b() {
        this.f9710c.beginTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final Cursor c(InterfaceC0926b interfaceC0926b) {
        return this.f9710c.rawQueryWithFactory(new C0939a(interfaceC0926b), interfaceC0926b.h(), f9709d, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f9710c.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void d(String str) throws SQLException {
        this.f9710c.execSQL(str);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void e() {
        this.f9710c.setTransactionSuccessful();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final C0945g f(String str) {
        return new C0945g(this.f9710c.compileStatement(str));
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final Cursor i(String str) {
        return c(new v(str, null));
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final boolean isOpen() {
        return this.f9710c.isOpen();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final boolean j() {
        return this.f9710c.inTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final long k(String str, ContentValues contentValues) {
        return this.f9710c.insertWithOnConflict(str, null, contentValues, 5);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final Cursor query(String str, Object[] objArr) {
        return c(new v(str, objArr));
    }
}
