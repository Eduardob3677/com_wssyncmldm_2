package R0;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public final class h implements c, S0.c {

    /* renamed from: g, reason: collision with root package name */
    public static final I0.b f2286g = new I0.b("proto");

    /* renamed from: c, reason: collision with root package name */
    public final j f2287c;

    /* renamed from: d, reason: collision with root package name */
    public final T0.b f2288d;

    /* renamed from: e, reason: collision with root package name */
    public final T0.b f2289e;
    public final a f;

    public h(T0.b bVar, T0.b bVar2, a aVar, j jVar) {
        this.f2287c = jVar;
        this.f2288d = bVar;
        this.f2289e = bVar2;
        this.f = aVar;
    }

    public static Long h(SQLiteDatabase sQLiteDatabase, L0.b bVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(bVar.f1314a, String.valueOf(U0.a.a(bVar.f1316c))));
        byte[] bArr = bVar.f1315b;
        if (bArr != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(bArr, 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor cursorQuery = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            return !cursorQuery.moveToNext() ? null : Long.valueOf(cursorQuery.getLong(0));
        } finally {
            cursorQuery.close();
        }
    }

    public static String n(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((b) it.next()).f2276a);
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static Object o(Cursor cursor, f fVar) {
        try {
            return fVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f2287c.close();
    }

    public final SQLiteDatabase g() {
        j jVar = this.f2287c;
        Objects.requireNonNull(jVar);
        T0.b bVar = this.f2289e;
        long jA = bVar.a();
        while (true) {
            try {
                return jVar.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e5) {
                if (bVar.a() >= this.f.f2273c + jA) {
                    throw new S0.a("Timed out while trying to open db.", e5);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    public final Object l(f fVar) {
        SQLiteDatabase sQLiteDatabaseG = g();
        sQLiteDatabaseG.beginTransaction();
        try {
            Object objApply = fVar.apply(sQLiteDatabaseG);
            sQLiteDatabaseG.setTransactionSuccessful();
            return objApply;
        } finally {
            sQLiteDatabaseG.endTransaction();
        }
    }

    public final Object m(S0.b bVar) {
        SQLiteDatabase sQLiteDatabaseG = g();
        T0.b bVar2 = this.f2289e;
        long jA = bVar2.a();
        while (true) {
            try {
                sQLiteDatabaseG.beginTransaction();
                try {
                    Object objExecute = bVar.execute();
                    sQLiteDatabaseG.setTransactionSuccessful();
                    return objExecute;
                } finally {
                    sQLiteDatabaseG.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e5) {
                if (bVar2.a() >= this.f.f2273c + jA) {
                    throw new S0.a("Timed out while trying to acquire the lock.", e5);
                }
                SystemClock.sleep(50L);
            }
        }
    }
}
