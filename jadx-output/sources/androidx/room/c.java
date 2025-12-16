package androidx.room;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.sqlite.db.SupportSQLiteDatabase;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import z0.C0943e;
import z0.C0945g;

/* loaded from: classes.dex */
public final class c implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g f4939c;

    public c(g gVar) {
        this.f4939c = gVar;
    }

    public final boolean a() {
        g gVar = this.f4939c;
        Cursor cursorQuery = gVar.f.query("SELECT * FROM room_table_modification_log WHERE version  > ? ORDER BY version ASC;", gVar.f4951d);
        boolean z4 = false;
        while (cursorQuery.moveToNext()) {
            try {
                long j3 = cursorQuery.getLong(0);
                gVar.f4950c[cursorQuery.getInt(1)] = j3;
                gVar.f4952e = j3;
                z4 = true;
            } finally {
                cursorQuery.close();
            }
        }
        return z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Lock closeLock = this.f4939c.f.getCloseLock();
        boolean zA = false;
        try {
            try {
                closeLock.lock();
            } catch (SQLiteException | IllegalStateException e5) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e5);
            }
            if (!this.f4939c.b()) {
                closeLock.unlock();
                return;
            }
            if (!this.f4939c.f4953g.compareAndSet(true, false)) {
                closeLock.unlock();
                return;
            }
            if (this.f4939c.f.inTransaction()) {
                closeLock.unlock();
                return;
            }
            ((C0945g) this.f4939c.f4955i).f9718d.executeUpdateDelete();
            g gVar = this.f4939c;
            gVar.f4951d[0] = Long.valueOf(gVar.f4952e);
            j jVar = this.f4939c.f;
            if (jVar.mWriteAheadLoggingEnabled) {
                SupportSQLiteDatabase supportSQLiteDatabaseH = ((C0943e) jVar.getOpenHelper()).f9716a.h();
                try {
                    supportSQLiteDatabaseH.b();
                    zA = a();
                    supportSQLiteDatabaseH.e();
                    supportSQLiteDatabaseH.a();
                } catch (Throwable th) {
                    supportSQLiteDatabaseH.a();
                    throw th;
                }
            } else {
                zA = a();
            }
            closeLock.unlock();
            if (zA) {
                synchronized (this.f4939c.f4957k) {
                    try {
                        Iterator it = this.f4939c.f4957k.iterator();
                        while (true) {
                            m.b bVar = (m.b) it;
                            if (bVar.hasNext()) {
                                ((e) ((Map.Entry) bVar.next()).getValue()).a(this.f4939c.f4950c);
                            }
                        }
                    } finally {
                    }
                }
            }
        } finally {
            closeLock.unlock();
        }
    }
}
