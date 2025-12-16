package P0;

import R0.f;
import R0.h;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import android.util.Log;
import com.samsung.android.knox.container.KnoxContainerManager;
import com.samsung.android.knox.ucm.configurator.UniversalCredentialManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements S0.b, f {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2039c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ L0.b f2040d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f2041e;
    public final /* synthetic */ Object f;

    public /* synthetic */ b(h hVar, ArrayList arrayList, L0.b bVar) {
        this.f2039c = 2;
        this.f = hVar;
        this.f2041e = arrayList;
        this.f2040d = bVar;
    }

    @Override // R0.f
    public Object apply(Object obj) {
        long jInsert;
        switch (this.f2039c) {
            case 1:
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                h hVar = (h) this.f;
                long jSimpleQueryForLong = hVar.g().compileStatement("PRAGMA page_size").simpleQueryForLong() * hVar.g().compileStatement("PRAGMA page_count").simpleQueryForLong();
                R0.a aVar = hVar.f;
                if (jSimpleQueryForLong >= aVar.f2271a) {
                    return -1L;
                }
                L0.b bVar = this.f2040d;
                Long lH = h.h(sQLiteDatabase, bVar);
                if (lH != null) {
                    jInsert = lH.longValue();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("backend_name", bVar.f1314a);
                    contentValues.put("priority", Integer.valueOf(U0.a.a(bVar.f1316c)));
                    contentValues.put("next_request_ms", (Integer) 0);
                    byte[] bArr = bVar.f1315b;
                    if (bArr != null) {
                        contentValues.put("extras", Base64.encodeToString(bArr, 0));
                    }
                    jInsert = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                L0.a aVar2 = (L0.a) this.f2041e;
                byte[] bArr2 = aVar2.f1311c.f1323b;
                int length = bArr2.length;
                int i5 = aVar.f2275e;
                boolean z4 = length <= i5;
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("context_id", Long.valueOf(jInsert));
                contentValues2.put("transport_name", aVar2.f1309a);
                contentValues2.put("timestamp_ms", Long.valueOf(aVar2.f1312d));
                contentValues2.put("uptime_ms", Long.valueOf(aVar2.f1313e));
                contentValues2.put("payload_encoding", aVar2.f1311c.f1322a.f869a);
                contentValues2.put(KnoxContainerManager.CONTAINER_CREATION_STATUS_CODE, aVar2.f1310b);
                contentValues2.put("num_attempts", (Integer) 0);
                contentValues2.put("inline", Boolean.valueOf(z4));
                contentValues2.put("payload", z4 ? bArr2 : new byte[0]);
                long jInsert2 = sQLiteDatabase.insert("events", null, contentValues2);
                if (!z4) {
                    int iCeil = (int) Math.ceil(bArr2.length / i5);
                    for (int i6 = 1; i6 <= iCeil; i6++) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, (i6 - 1) * i5, Math.min(i6 * i5, bArr2.length));
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put(UniversalCredentialManager.BUNDLE_EXTRA_EVENT_ID, Long.valueOf(jInsert2));
                        contentValues3.put("sequence_num", Integer.valueOf(i6));
                        contentValues3.put("bytes", bArrCopyOfRange);
                        sQLiteDatabase.insert("event_payloads", null, contentValues3);
                    }
                }
                for (Map.Entry entry : Collections.unmodifiableMap(aVar2.f).entrySet()) {
                    ContentValues contentValues4 = new ContentValues();
                    contentValues4.put(UniversalCredentialManager.BUNDLE_EXTRA_EVENT_ID, Long.valueOf(jInsert2));
                    contentValues4.put("name", (String) entry.getKey());
                    contentValues4.put("value", (String) entry.getValue());
                    sQLiteDatabase.insert("event_metadata", null, contentValues4);
                }
                return Long.valueOf(jInsert2);
            default:
                Cursor cursor = (Cursor) obj;
                h hVar2 = (h) this.f;
                hVar2.getClass();
                while (cursor.moveToNext()) {
                    long j3 = cursor.getLong(0);
                    boolean z5 = cursor.getInt(7) != 0;
                    J3.d dVar = new J3.d();
                    dVar.f1148h = new HashMap();
                    String string = cursor.getString(1);
                    if (string == null) {
                        throw new NullPointerException("Null transportName");
                    }
                    dVar.f1144c = string;
                    dVar.f = Long.valueOf(cursor.getLong(2));
                    dVar.f1147g = Long.valueOf(cursor.getLong(3));
                    if (z5) {
                        String string2 = cursor.getString(4);
                        dVar.f1146e = new L0.f(string2 == null ? h.f2286g : new I0.b(string2), cursor.getBlob(5));
                    } else {
                        String string3 = cursor.getString(4);
                        I0.b bVar2 = string3 == null ? h.f2286g : new I0.b(string3);
                        Cursor cursorQuery = hVar2.g().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j3)}, null, null, "sequence_num");
                        try {
                            ArrayList arrayList = new ArrayList();
                            int length2 = 0;
                            while (cursorQuery.moveToNext()) {
                                byte[] blob = cursorQuery.getBlob(0);
                                arrayList.add(blob);
                                length2 += blob.length;
                            }
                            byte[] bArr3 = new byte[length2];
                            int length3 = 0;
                            for (int i7 = 0; i7 < arrayList.size(); i7++) {
                                byte[] bArr4 = (byte[]) arrayList.get(i7);
                                System.arraycopy(bArr4, 0, bArr3, length3, bArr4.length);
                                length3 += bArr4.length;
                            }
                            cursorQuery.close();
                            dVar.f1146e = new L0.f(bVar2, bArr3);
                        } catch (Throwable th) {
                            cursorQuery.close();
                            throw th;
                        }
                    }
                    if (!cursor.isNull(6)) {
                        dVar.f1145d = Integer.valueOf(cursor.getInt(6));
                    }
                    ((List) this.f2041e).add(new R0.b(j3, this.f2040d, dVar.d()));
                }
                return null;
        }
    }

    @Override // S0.b
    public Object execute() {
        c cVar = (c) this.f;
        h hVar = (h) cVar.f2045d;
        hVar.getClass();
        L0.b bVar = this.f2040d;
        I0.c cVar2 = bVar.f1316c;
        L0.a aVar = (L0.a) this.f2041e;
        String str = aVar.f1309a;
        Log.d("TransportRuntime.".concat("SQLiteEventStore"), "Storing event with priority=" + cVar2 + ", name=" + str + " for destination " + bVar.f1314a);
        ((Long) hVar.l(new b(hVar, bVar, aVar, 1))).getClass();
        cVar.f2042a.a(bVar, 1, false);
        return null;
    }

    public /* synthetic */ b(Object obj, L0.b bVar, L0.a aVar, int i5) {
        this.f2039c = i5;
        this.f = obj;
        this.f2040d = bVar;
        this.f2041e = aVar;
    }
}
