package com.idm.fotaagent.database.room.debug.repository;

import D3.f;
import J.r0;
import android.content.Context;
import androidx.room.a;
import androidx.room.g;
import androidx.room.j;
import androidx.room.k;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.idm.fotaagent.database.room.debug.dao.PostponeReasonDao;
import com.idm.fotaagent.database.room.debug.dao.PostponeReasonDao_Impl;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import w0.d;
import w0.e;
import y0.InterfaceC0925a;
import z0.C0943e;

/* loaded from: classes.dex */
public final class FotaDebugRoomDatabase_Impl extends FotaDebugRoomDatabase {
    private volatile PostponeReasonDao _postponeReasonDao;

    @Override // androidx.room.j
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase supportSQLiteDatabaseH = ((C0943e) super.getOpenHelper()).f9716a.h();
        try {
            super.beginTransaction();
            supportSQLiteDatabaseH.d("DELETE FROM `postpone_reason`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            supportSQLiteDatabaseH.i("PRAGMA wal_checkpoint(FULL)").close();
            if (!supportSQLiteDatabaseH.j()) {
                supportSQLiteDatabaseH.d("VACUUM");
            }
        }
    }

    @Override // androidx.room.j
    public g createInvalidationTracker() {
        return new g(this, "postpone_reason");
    }

    @Override // androidx.room.j
    public InterfaceC0925a createOpenHelper(a aVar) {
        f fVar = new f(aVar, new k(1) { // from class: com.idm.fotaagent.database.room.debug.repository.FotaDebugRoomDatabase_Impl.1
            @Override // androidx.room.k
            public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.d("CREATE TABLE IF NOT EXISTS `postpone_reason` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `postpone_reason` TEXT NOT NULL)");
                supportSQLiteDatabase.d("CREATE  INDEX `index_postpone_reason_postpone_reason` ON `postpone_reason` (`postpone_reason`)");
                supportSQLiteDatabase.d("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                supportSQLiteDatabase.d("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"0b559636cdff94a9e0af2b8c72ffd905\")");
            }

            public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.d("DROP TABLE IF EXISTS `postpone_reason`");
            }

            @Override // androidx.room.k
            public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
                if (((j) FotaDebugRoomDatabase_Impl.this).mCallbacks == null || ((j) FotaDebugRoomDatabase_Impl.this).mCallbacks.size() <= 0) {
                    return;
                }
                B.f.F(((j) FotaDebugRoomDatabase_Impl.this).mCallbacks.get(0));
                throw null;
            }

            @Override // androidx.room.k
            public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
                ((j) FotaDebugRoomDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
                FotaDebugRoomDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
                if (((j) FotaDebugRoomDatabase_Impl.this).mCallbacks == null || ((j) FotaDebugRoomDatabase_Impl.this).mCallbacks.size() <= 0) {
                    return;
                }
                B.f.F(((j) FotaDebugRoomDatabase_Impl.this).mCallbacks.get(0));
                throw null;
            }

            @Override // androidx.room.k
            public void validateMigration(SupportSQLiteDatabase supportSQLiteDatabase) {
                HashMap map = new HashMap(2);
                map.put("_id", new w0.a(1, "_id", "INTEGER", true));
                map.put("postpone_reason", new w0.a(0, "postpone_reason", "TEXT", true));
                HashSet hashSet = new HashSet(0);
                HashSet hashSet2 = new HashSet(1);
                hashSet2.add(new d("index_postpone_reason_postpone_reason", Arrays.asList("postpone_reason"), false));
                e eVar = new e("postpone_reason", map, hashSet, hashSet2);
                e eVarA = e.a(supportSQLiteDatabase, "postpone_reason");
                if (eVar.equals(eVarA)) {
                    return;
                }
                throw new IllegalStateException("Migration didn't properly handle postpone_reason(com.idm.fotaagent.database.room.debug.entity.PostponeReason).\n Expected:\n" + eVar + "\n Found:\n" + eVarA);
            }
        }, "0b559636cdff94a9e0af2b8c72ffd905", "5b5290b94a0093b6cc566b948a1f1984");
        Context context = aVar.f4934b;
        if (context == null) {
            throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
        }
        r0 r0Var = new r0(context, aVar.f4935c, fVar);
        aVar.f4933a.getClass();
        return new C0943e((Context) r0Var.f1006c, (String) r0Var.f1007d, (f) r0Var.f1008e);
    }

    @Override // com.idm.fotaagent.database.room.debug.repository.FotaDebugRoomDatabase
    public PostponeReasonDao postponeReasonDao() {
        PostponeReasonDao postponeReasonDao;
        if (this._postponeReasonDao != null) {
            return this._postponeReasonDao;
        }
        synchronized (this) {
            try {
                if (this._postponeReasonDao == null) {
                    this._postponeReasonDao = new PostponeReasonDao_Impl(this);
                }
                postponeReasonDao = this._postponeReasonDao;
            } catch (Throwable th) {
                throw th;
            }
        }
        return postponeReasonDao;
    }
}
