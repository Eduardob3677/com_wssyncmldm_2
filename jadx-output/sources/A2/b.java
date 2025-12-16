package A2;

import Q0.k;
import R0.h;
import android.database.sqlite.SQLiteDatabase;
import com.idm.fotaagent.enabler.ui.common.ButtonOnClickListener;
import com.idm.fotaagent.enabler.ui.downloadprogress.DownloadProgressContractor;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements S0.b, ButtonOnClickListener.ButtonAction {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f57c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f58d;

    public /* synthetic */ b(int i5, Object obj) {
        this.f57c = i5;
        this.f58d = obj;
    }

    @Override // S0.b
    public Object execute() {
        switch (this.f57c) {
            case 1:
                h hVar = (h) ((R0.c) this.f58d);
                long jA = hVar.f2288d.a() - hVar.f.f2274d;
                SQLiteDatabase sQLiteDatabaseG = hVar.g();
                sQLiteDatabaseG.beginTransaction();
                try {
                    int iDelete = sQLiteDatabaseG.delete("events", "timestamp_ms < ?", new String[]{String.valueOf(jA)});
                    sQLiteDatabaseG.setTransactionSuccessful();
                    sQLiteDatabaseG.endTransaction();
                    return Integer.valueOf(iDelete);
                } catch (Throwable th) {
                    sQLiteDatabaseG.endTransaction();
                    throw th;
                }
            default:
                k kVar = (k) this.f58d;
                Iterator it = ((Iterable) ((h) kVar.f2199b).l(new E2.a(6))).iterator();
                while (it.hasNext()) {
                    kVar.f2200c.a((L0.b) it.next(), 1, false);
                }
                return null;
        }
    }

    @Override // com.idm.fotaagent.enabler.ui.common.ButtonOnClickListener.ButtonAction
    public void onClick() {
        ((DownloadProgressContractor.Presenter) this.f58d).downloadOrPause();
    }
}
