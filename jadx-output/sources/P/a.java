package P;

import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Handler;

/* loaded from: classes.dex */
public final class a extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f2028a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(b bVar) {
        super(new Handler());
        this.f2028a = bVar;
    }

    @Override // android.database.ContentObserver
    public final boolean deliverSelfNotifications() {
        return true;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z4) {
        Cursor cursor;
        b bVar = this.f2028a;
        if (!bVar.f2030d || (cursor = bVar.f2031e) == null || cursor.isClosed()) {
            return;
        }
        bVar.f2029c = bVar.f2031e.requery();
    }
}
