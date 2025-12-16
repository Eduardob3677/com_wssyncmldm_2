package com.idm.fotaagent.database.room.debug.dao;

import android.database.Cursor;
import androidx.room.b;
import androidx.room.j;
import androidx.room.l;
import androidx.room.m;
import com.idm.fotaagent.database.room.debug.entity.PostponeReason;
import java.util.ArrayList;
import java.util.List;
import y0.InterfaceC0927c;
import z0.C0944f;
import z0.C0945g;

/* loaded from: classes.dex */
public final class PostponeReasonDao_Impl implements PostponeReasonDao {
    private final j __db;
    private final b __insertionAdapterOfPostponeReason;
    private final m __preparedStmtOfDeleteAll;

    public PostponeReasonDao_Impl(j jVar) {
        this.__db = jVar;
        this.__insertionAdapterOfPostponeReason = new b(jVar) { // from class: com.idm.fotaagent.database.room.debug.dao.PostponeReasonDao_Impl.1
            @Override // androidx.room.m
            public String createQuery() {
                return "INSERT OR REPLACE INTO `postpone_reason`(`_id`,`postpone_reason`) VALUES (nullif(?, 0),?)";
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.room.b
            public void bind(InterfaceC0927c interfaceC0927c, PostponeReason postponeReason) {
                ((C0944f) interfaceC0927c).l(1, postponeReason._id);
                if (postponeReason.getPostponeReason() == null) {
                    ((C0944f) interfaceC0927c).m(2);
                } else {
                    ((C0944f) interfaceC0927c).n(2, postponeReason.getPostponeReason());
                }
            }
        };
        this.__preparedStmtOfDeleteAll = new m(jVar) { // from class: com.idm.fotaagent.database.room.debug.dao.PostponeReasonDao_Impl.2
            @Override // androidx.room.m
            public String createQuery() {
                return "DELETE FROM postpone_reason";
            }
        };
    }

    @Override // com.idm.fotaagent.database.room.debug.dao.PostponeReasonDao
    public int deleteAll() {
        InterfaceC0927c interfaceC0927cAcquire = this.__preparedStmtOfDeleteAll.acquire();
        this.__db.beginTransaction();
        try {
            int iExecuteUpdateDelete = ((C0945g) interfaceC0927cAcquire).f9718d.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return iExecuteUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDeleteAll.release(interfaceC0927cAcquire);
        }
    }

    @Override // com.idm.fotaagent.database.room.debug.dao.PostponeReasonDao
    public List<String> getLimitedPostponeReasons() {
        l lVarL = l.l(0, "SELECT [postpone_reason] FROM postpone_reason ORDER BY _id DESC  LIMIT 5");
        this.__db.beginTransaction();
        try {
            Cursor cursorQuery = this.__db.query(lVarL);
            try {
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    arrayList.add(cursorQuery.getString(0));
                }
                this.__db.setTransactionSuccessful();
                cursorQuery.close();
                lVarL.o();
                return arrayList;
            } catch (Throwable th) {
                cursorQuery.close();
                lVarL.o();
                throw th;
            }
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.idm.fotaagent.database.room.debug.dao.PostponeReasonDao
    public long insertOrReplace(PostponeReason postponeReason) {
        this.__db.beginTransaction();
        try {
            long jInsertAndReturnId = this.__insertionAdapterOfPostponeReason.insertAndReturnId(postponeReason);
            this.__db.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }
}
