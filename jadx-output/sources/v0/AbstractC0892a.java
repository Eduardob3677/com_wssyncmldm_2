package v0;

import androidx.sqlite.db.SupportSQLiteDatabase;

/* renamed from: v0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0892a {
    public final int endVersion;
    public final int startVersion;

    public AbstractC0892a(int i5, int i6) {
        this.startVersion = i5;
        this.endVersion = i6;
    }

    public abstract void migrate(SupportSQLiteDatabase supportSQLiteDatabase);
}
