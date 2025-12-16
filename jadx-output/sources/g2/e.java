package g2;

import android.util.Base64;
import android.util.JsonWriter;
import e2.f;
import e2.g;
import java.io.BufferedWriter;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class e implements e2.e, g {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f6927a = true;

    /* renamed from: b, reason: collision with root package name */
    public final JsonWriter f6928b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f6929c;

    /* renamed from: d, reason: collision with root package name */
    public final Map f6930d;

    /* renamed from: e, reason: collision with root package name */
    public final e2.d f6931e;
    public final boolean f;

    public e(BufferedWriter bufferedWriter, HashMap map, HashMap map2, C0427a c0427a, boolean z4) {
        this.f6928b = new JsonWriter(bufferedWriter);
        this.f6929c = map;
        this.f6930d = map2;
        this.f6931e = c0427a;
        this.f = z4;
    }

    @Override // e2.g
    public final g a(String str) throws IOException {
        h();
        this.f6928b.value(str);
        return this;
    }

    @Override // e2.g
    public final g b(boolean z4) throws IOException {
        h();
        this.f6928b.value(z4);
        return this;
    }

    @Override // e2.e
    public final e2.e c(e2.c cVar, int i5) throws IOException {
        String str = cVar.f6806a;
        h();
        JsonWriter jsonWriter = this.f6928b;
        jsonWriter.name(str);
        h();
        jsonWriter.value(i5);
        return this;
    }

    @Override // e2.e
    public final e2.e d(e2.c cVar, long j3) throws IOException {
        String str = cVar.f6806a;
        h();
        JsonWriter jsonWriter = this.f6928b;
        jsonWriter.name(str);
        h();
        jsonWriter.value(j3);
        return this;
    }

    @Override // e2.e
    public final e2.e e(e2.c cVar, Object obj) throws IOException {
        g(cVar.f6806a, obj);
        return this;
    }

    public final e f(Object obj) throws IOException {
        JsonWriter jsonWriter = this.f6928b;
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
            return this;
        }
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                jsonWriter.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    f(it.next());
                }
                jsonWriter.endArray();
                return this;
            }
            if (obj instanceof Map) {
                jsonWriter.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        g((String) key, entry.getValue());
                    } catch (ClassCastException e5) {
                        throw new e2.b(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e5);
                    }
                }
                jsonWriter.endObject();
                return this;
            }
            e2.d dVar = (e2.d) this.f6929c.get(obj.getClass());
            if (dVar != null) {
                jsonWriter.beginObject();
                dVar.a(obj, this);
                jsonWriter.endObject();
                return this;
            }
            f fVar = (f) this.f6930d.get(obj.getClass());
            if (fVar != null) {
                fVar.a(obj, this);
                return this;
            }
            if (obj instanceof Enum) {
                String strName = ((Enum) obj).name();
                h();
                jsonWriter.value(strName);
                return this;
            }
            jsonWriter.beginObject();
            this.f6931e.a(obj, this);
            jsonWriter.endObject();
            return this;
        }
        if (obj instanceof byte[]) {
            h();
            jsonWriter.value(Base64.encodeToString((byte[]) obj, 2));
            return this;
        }
        jsonWriter.beginArray();
        int i5 = 0;
        if (obj instanceof int[]) {
            int length = ((int[]) obj).length;
            while (i5 < length) {
                jsonWriter.value(r6[i5]);
                i5++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i5 < length2) {
                long j3 = jArr[i5];
                h();
                jsonWriter.value(j3);
                i5++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i5 < length3) {
                jsonWriter.value(dArr[i5]);
                i5++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i5 < length4) {
                jsonWriter.value(zArr[i5]);
                i5++;
            }
        } else if (obj instanceof Number[]) {
            Number[] numberArr = (Number[]) obj;
            int length5 = numberArr.length;
            while (i5 < length5) {
                f(numberArr[i5]);
                i5++;
            }
        } else {
            Object[] objArr = (Object[]) obj;
            int length6 = objArr.length;
            while (i5 < length6) {
                f(objArr[i5]);
                i5++;
            }
        }
        jsonWriter.endArray();
        return this;
    }

    public final e g(String str, Object obj) throws IOException {
        boolean z4 = this.f;
        JsonWriter jsonWriter = this.f6928b;
        if (z4) {
            if (obj != null) {
                h();
                jsonWriter.name(str);
                f(obj);
            }
            return this;
        }
        h();
        jsonWriter.name(str);
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            f(obj);
        }
        return this;
    }

    public final void h() {
        if (!this.f6927a) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
    }
}
