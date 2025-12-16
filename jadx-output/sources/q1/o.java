package q1;

import com.samsung.android.knox.ex.KnoxContract;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class o implements e2.e {
    public static final Charset f = Charset.forName("UTF-8");

    /* renamed from: g, reason: collision with root package name */
    public static final e2.c f8629g;

    /* renamed from: h, reason: collision with root package name */
    public static final e2.c f8630h;

    /* renamed from: i, reason: collision with root package name */
    public static final n f8631i;

    /* renamed from: a, reason: collision with root package name */
    public OutputStream f8632a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f8633b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f8634c;

    /* renamed from: d, reason: collision with root package name */
    public final e2.d f8635d;

    /* renamed from: e, reason: collision with root package name */
    public final p f8636e = new p(this);

    static {
        i iVar = new i(1);
        HashMap map = new HashMap();
        map.put(m.class, iVar);
        f8629g = new e2.c(KnoxContract.KEY, Collections.unmodifiableMap(new HashMap(map)));
        i iVar2 = new i(2);
        HashMap map2 = new HashMap();
        map2.put(m.class, iVar2);
        f8630h = new e2.c("value", Collections.unmodifiableMap(new HashMap(map2)));
        f8631i = n.f8626b;
    }

    public o(ByteArrayOutputStream byteArrayOutputStream, Map map, Map map2, e2.d dVar) {
        this.f8632a = byteArrayOutputStream;
        this.f8633b = map;
        this.f8634c = map2;
        this.f8635d = dVar;
    }

    public static int f(e2.c cVar) {
        m mVar = (m) ((Annotation) cVar.f6807b.get(m.class));
        if (mVar != null) {
            return ((i) mVar).f8622a;
        }
        throw new e2.b("Field has no @Protobuf config");
    }

    public final void a(e2.c cVar, Object obj, boolean z4) {
        if (obj == null) {
            return;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z4 && charSequence.length() == 0) {
                return;
            }
            h((f(cVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f);
            h(bytes.length);
            this.f8632a.write(bytes);
            return;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                a(cVar, it.next(), false);
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                g(f8631i, cVar, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (z4 && dDoubleValue == 0.0d) {
                return;
            }
            h((f(cVar) << 3) | 1);
            this.f8632a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(dDoubleValue).array());
            return;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            if (z4 && fFloatValue == 0.0f) {
                return;
            }
            h((f(cVar) << 3) | 5);
            this.f8632a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(fFloatValue).array());
            return;
        }
        if (obj instanceof Number) {
            long jLongValue = ((Number) obj).longValue();
            if (z4 && jLongValue == 0) {
                return;
            }
            m mVar = (m) ((Annotation) cVar.f6807b.get(m.class));
            if (mVar == null) {
                throw new e2.b("Field has no @Protobuf config");
            }
            h(((i) mVar).f8622a << 3);
            i(jLongValue);
            return;
        }
        if (obj instanceof Boolean) {
            b(cVar, ((Boolean) obj).booleanValue() ? 1 : 0, z4);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z4 && bArr.length == 0) {
                return;
            }
            h((f(cVar) << 3) | 2);
            h(bArr.length);
            this.f8632a.write(bArr);
            return;
        }
        e2.d dVar = (e2.d) this.f8633b.get(obj.getClass());
        if (dVar != null) {
            g(dVar, cVar, obj, z4);
            return;
        }
        e2.f fVar = (e2.f) this.f8634c.get(obj.getClass());
        if (fVar != null) {
            p pVar = this.f8636e;
            pVar.f8637a = false;
            pVar.f8639c = cVar;
            pVar.f8638b = z4;
            fVar.a(obj, pVar);
            return;
        }
        if (obj instanceof k) {
            b(cVar, ((k) obj).a(), true);
        } else if (obj instanceof Enum) {
            b(cVar, ((Enum) obj).ordinal(), true);
        } else {
            g(this.f8635d, cVar, obj, z4);
        }
    }

    public final void b(e2.c cVar, int i5, boolean z4) {
        if (z4 && i5 == 0) {
            return;
        }
        m mVar = (m) ((Annotation) cVar.f6807b.get(m.class));
        if (mVar == null) {
            throw new e2.b("Field has no @Protobuf config");
        }
        h(((i) mVar).f8622a << 3);
        h(i5);
    }

    @Override // e2.e
    public final /* synthetic */ e2.e c(e2.c cVar, int i5) {
        b(cVar, i5, true);
        return this;
    }

    @Override // e2.e
    public final e2.e d(e2.c cVar, long j3) throws IOException {
        if (j3 != 0) {
            m mVar = (m) ((Annotation) cVar.f6807b.get(m.class));
            if (mVar == null) {
                throw new e2.b("Field has no @Protobuf config");
            }
            h(((i) mVar).f8622a << 3);
            i(j3);
        }
        return this;
    }

    @Override // e2.e
    public final e2.e e(e2.c cVar, Object obj) {
        a(cVar, obj, true);
        return this;
    }

    public final void g(e2.d dVar, e2.c cVar, Object obj, boolean z4) throws IOException {
        j jVar = new j();
        jVar.f8623c = 0L;
        try {
            OutputStream outputStream = this.f8632a;
            this.f8632a = jVar;
            try {
                dVar.a(obj, this);
                this.f8632a = outputStream;
                long j3 = jVar.f8623c;
                jVar.close();
                if (z4 && j3 == 0) {
                    return;
                }
                h((f(cVar) << 3) | 2);
                i(j3);
                dVar.a(obj, this);
            } catch (Throwable th) {
                this.f8632a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                jVar.close();
            } catch (Throwable unused) {
            }
            throw th2;
        }
    }

    public final void h(int i5) throws IOException {
        while ((i5 & (-128)) != 0) {
            this.f8632a.write((i5 & 127) | 128);
            i5 >>>= 7;
        }
        this.f8632a.write(i5 & 127);
    }

    public final void i(long j3) throws IOException {
        while (((-128) & j3) != 0) {
            this.f8632a.write((((int) j3) & 127) | 128);
            j3 >>>= 7;
        }
        this.f8632a.write(((int) j3) & 127);
    }
}
