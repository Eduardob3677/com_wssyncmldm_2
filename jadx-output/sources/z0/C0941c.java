package z0;

import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* renamed from: z0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0941c implements DatabaseErrorHandler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0940b[] f9711a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ D3.f f9712b;

    public C0941c(C0940b[] c0940bArr, D3.f fVar) {
        this.f9711a = c0940bArr;
        this.f9712b = fVar;
    }

    @Override // android.database.DatabaseErrorHandler
    public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
        C0940b c0940b = this.f9711a[0];
        if (c0940b != null) {
            this.f9712b.getClass();
            StringBuilder sb = new StringBuilder("Corruption reported by sqlite on database: ");
            SQLiteDatabase sQLiteDatabase2 = c0940b.f9710c;
            sb.append(sQLiteDatabase2.getPath());
            Log.e("SupportSQLite", sb.toString());
            if (!sQLiteDatabase2.isOpen()) {
                D3.f.d(sQLiteDatabase2.getPath());
                return;
            }
            List<Pair<String, String>> attachedDbs = null;
            try {
                try {
                    attachedDbs = sQLiteDatabase2.getAttachedDbs();
                } catch (SQLiteException unused) {
                }
                try {
                    c0940b.close();
                } catch (IOException unused2) {
                }
            } finally {
                if (attachedDbs != null) {
                    Iterator<Pair<String, String>> it = attachedDbs.iterator();
                    while (it.hasNext()) {
                        D3.f.d((String) it.next().second);
                    }
                } else {
                    D3.f.d(sQLiteDatabase2.getPath());
                }
            }
        }
    }
}
