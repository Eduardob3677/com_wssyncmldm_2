package R0;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class j extends SQLiteOpenHelper {

    /* renamed from: e, reason: collision with root package name */
    public static final List f2291e = Arrays.asList(new i(0), new i(1), new i(2), new i(3));

    /* renamed from: c, reason: collision with root package name */
    public final int f2292c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2293d;

    public j(Context context, int i5, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i5);
        this.f2293d = false;
        this.f2292c = i5;
    }

    public static void g(SQLiteDatabase sQLiteDatabase, int i5, int i6) throws SQLException {
        List list = f2291e;
        if (i6 <= list.size()) {
            while (i5 < i6) {
                ((i) list.get(i5)).a(sQLiteDatabase);
                i5++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i5 + " to " + i6 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f2293d = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!this.f2293d) {
            onConfigure(sQLiteDatabase);
        }
        g(sQLiteDatabase, 0, this.f2292c);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i5, int i6) throws SQLException {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        if (!this.f2293d) {
            onConfigure(sQLiteDatabase);
        }
        g(sQLiteDatabase, 0, i6);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        if (this.f2293d) {
            return;
        }
        onConfigure(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i5, int i6) throws SQLException {
        if (!this.f2293d) {
            onConfigure(sQLiteDatabase);
        }
        g(sQLiteDatabase, i5, i6);
    }
}
