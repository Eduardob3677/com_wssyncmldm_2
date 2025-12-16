package z0;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.room.k;
import androidx.sqlite.db.SupportSQLiteDatabase;
import e.v;

/* renamed from: z0.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0942d extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public final C0940b[] f9713c;

    /* renamed from: d, reason: collision with root package name */
    public final D3.f f9714d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f9715e;

    public C0942d(Context context, String str, C0940b[] c0940bArr, D3.f fVar) {
        super(context, str, null, fVar.f504b, new C0941c(c0940bArr, fVar));
        this.f9714d = fVar;
        this.f9713c = c0940bArr;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public final synchronized void close() {
        super.close();
        this.f9713c[0] = null;
    }

    public final C0940b g(SQLiteDatabase sQLiteDatabase) {
        C0940b[] c0940bArr = this.f9713c;
        if (c0940bArr[0] == null) {
            c0940bArr[0] = new C0940b(sQLiteDatabase);
        }
        return c0940bArr[0];
    }

    public final synchronized SupportSQLiteDatabase h() {
        this.f9715e = false;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (!this.f9715e) {
            return g(writableDatabase);
        }
        close();
        return h();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        g(sQLiteDatabase);
        this.f9714d.getClass();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        C0940b c0940bG = g(sQLiteDatabase);
        D3.f fVar = this.f9714d;
        fVar.o(c0940bG);
        k kVar = (k) fVar.f506d;
        kVar.createAllTables(c0940bG);
        kVar.onCreate(c0940bG);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i5, int i6) {
        this.f9715e = true;
        this.f9714d.m(g(sQLiteDatabase), i5, i6);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
    @Override // android.database.sqlite.SQLiteOpenHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        boolean z4;
        String string;
        if (this.f9715e) {
            return;
        }
        C0940b c0940bG = g(sQLiteDatabase);
        D3.f fVar = this.f9714d;
        fVar.getClass();
        Cursor cursorI = c0940bG.i("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            if (cursorI.moveToFirst()) {
                z4 = cursorI.getInt(0) != 0;
            }
            cursorI.close();
            Object obj = null;
            if (z4) {
                Cursor cursorC = c0940bG.c(new v("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1", obj));
                try {
                    string = cursorC.moveToFirst() ? cursorC.getString(0) : null;
                } finally {
                    cursorC.close();
                }
            } else {
                string = null;
            }
            if (!((String) fVar.f507e).equals(string) && !((String) fVar.f).equals(string)) {
                throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
            }
            ((k) fVar.f506d).onOpen(c0940bG);
            fVar.f505c = null;
        } catch (Throwable th) {
            cursorI.close();
            throw th;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i5, int i6) {
        this.f9715e = true;
        this.f9714d.m(g(sQLiteDatabase), i5, i6);
    }
}
