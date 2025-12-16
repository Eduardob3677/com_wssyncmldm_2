package Q0;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import b2.t;
import com.samsung.android.knox.container.KnoxContainerManager;
import com.samsung.android.knox.ucm.configurator.UniversalCredentialManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.ListIterator;
import java.util.Set;
import s2.C0835a;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements S0.b, R0.f, b2.f {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2186c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f2187d;

    public /* synthetic */ h(Object obj, Object obj2) {
        this.f2187d = obj;
        this.f2186c = obj2;
    }

    @Override // R0.f
    public Object apply(Object obj) {
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        R0.h hVar = (R0.h) this.f2187d;
        hVar.getClass();
        ArrayList arrayList = new ArrayList();
        L0.b bVar = (L0.b) this.f2186c;
        Long lH = R0.h.h(sQLiteDatabase, bVar);
        if (lH != null) {
            R0.h.o(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", KnoxContainerManager.CONTAINER_CREATION_STATUS_CODE, "inline"}, "context_id = ?", new String[]{lH.toString()}, null, null, null, String.valueOf(hVar.f.f2272b)), new P0.b(hVar, arrayList, bVar));
        }
        HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            sb.append(((R0.b) arrayList.get(i5)).f2276a);
            if (i5 < arrayList.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        Cursor cursorQuery = sQLiteDatabase.query("event_metadata", new String[]{UniversalCredentialManager.BUNDLE_EXTRA_EVENT_ID, "name", "value"}, sb.toString(), null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                long j3 = cursorQuery.getLong(0);
                Set hashSet = (Set) map.get(Long.valueOf(j3));
                if (hashSet == null) {
                    hashSet = new HashSet();
                    map.put(Long.valueOf(j3), hashSet);
                }
                hashSet.add(new R0.g(cursorQuery.getString(1), cursorQuery.getString(2)));
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        cursorQuery.close();
        ListIterator listIterator = arrayList.listIterator();
        while (listIterator.hasNext()) {
            R0.b bVar2 = (R0.b) listIterator.next();
            if (map.containsKey(Long.valueOf(bVar2.f2276a))) {
                J3.d dVarC = bVar2.f2278c.c();
                long j5 = bVar2.f2276a;
                for (R0.g gVar : (Set) map.get(Long.valueOf(j5))) {
                    dVarC.c(gVar.f2284a, gVar.f2285b);
                }
                listIterator.set(new R0.b(j5, bVar2.f2277b, dVarC.d()));
            }
        }
        return arrayList;
    }

    @Override // S0.b
    public Object execute() {
        R0.h hVar = (R0.h) ((j) this.f2187d).f2194c;
        hVar.getClass();
        return (Iterable) hVar.l(new h(hVar, (L0.b) this.f2186c));
    }

    @Override // b2.f
    public Object m(t tVar) {
        return new C0835a((String) this.f2187d, ((E2.a) this.f2186c).z((Context) tVar.a(Context.class)));
    }
}
