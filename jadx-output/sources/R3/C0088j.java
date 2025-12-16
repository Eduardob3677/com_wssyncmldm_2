package R3;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: R3.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0088j {

    /* renamed from: d, reason: collision with root package name */
    public static final C0088j f2396d = new C0088j(0);

    /* renamed from: b, reason: collision with root package name */
    public boolean f2398b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2399c = false;

    /* renamed from: a, reason: collision with root package name */
    public final F f2397a = new F(16);

    public C0088j() {
    }

    public static int c(T t2, Object obj) throws UnsupportedEncodingException {
        switch (t2.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                return 8;
            case 1:
                ((Float) obj).getClass();
                return 4;
            case 2:
                return B1.j.g(((Long) obj).longValue());
            case 3:
                return B1.j.g(((Long) obj).longValue());
            case 4:
                return B1.j.c(((Integer) obj).intValue());
            case 5:
                ((Long) obj).getClass();
                return 8;
            case 6:
                ((Integer) obj).getClass();
                return 4;
            case 7:
                ((Boolean) obj).getClass();
                return 1;
            case 8:
                try {
                    byte[] bytes = ((String) obj).getBytes("UTF-8");
                    return B1.j.f(bytes.length) + bytes.length;
                } catch (UnsupportedEncodingException e5) {
                    throw new RuntimeException("UTF-8 not supported.", e5);
                }
            case 9:
                return ((AbstractC0080b) obj).c();
            case 10:
                return B1.j.e((AbstractC0080b) obj);
            case 11:
                if (obj instanceof AbstractC0083e) {
                    AbstractC0083e abstractC0083e = (AbstractC0083e) obj;
                    return abstractC0083e.size() + B1.j.f(abstractC0083e.size());
                }
                byte[] bArr = (byte[]) obj;
                return B1.j.f(bArr.length) + bArr.length;
            case 12:
                return B1.j.f(((Integer) obj).intValue());
            case 13:
                return obj instanceof r ? B1.j.c(((r) obj).a()) : B1.j.c(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                return 4;
            case 15:
                ((Long) obj).getClass();
                return 8;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                return B1.j.f((iIntValue >> 31) ^ (iIntValue << 1));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return B1.j.g((jLongValue >> 63) ^ (jLongValue << 1));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int d(C0093o c0093o, Object obj) {
        T t2 = c0093o.f2408d;
        boolean z4 = c0093o.f2409e;
        int i5 = c0093o.f2407c;
        if (!z4) {
            int iH = B1.j.h(i5);
            if (t2 == T.f2361g) {
                iH *= 2;
            }
            return c(t2, obj) + iH;
        }
        int iC = 0;
        if (c0093o.f) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iC += c(t2, it.next());
            }
            return B1.j.f(iC) + B1.j.h(i5) + iC;
        }
        for (Object obj2 : (List) obj) {
            int iH2 = B1.j.h(i5);
            if (t2 == T.f2361g) {
                iH2 *= 2;
            }
            iC += c(t2, obj2) + iH2;
        }
        return iC;
    }

    public static boolean e(Map.Entry entry) {
        C0093o c0093o = (C0093o) entry.getKey();
        if (c0093o.f2408d.f2365c != U.MESSAGE) {
            return true;
        }
        if (!c0093o.f2409e) {
            Object value = entry.getValue();
            if (value instanceof AbstractC0080b) {
                return ((AbstractC0080b) value).b();
            }
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        Iterator it = ((List) entry.getValue()).iterator();
        while (it.hasNext()) {
            if (!((AbstractC0080b) it.next()).b()) {
                return false;
            }
        }
        return true;
    }

    public static Object h(C0084f c0084f, T t2) {
        switch (t2.ordinal()) {
            case 0:
                return Double.valueOf(Double.longBitsToDouble(c0084f.j()));
            case 1:
                return Float.valueOf(Float.intBitsToFloat(c0084f.i()));
            case 2:
                return Long.valueOf(c0084f.l());
            case 3:
                return Long.valueOf(c0084f.l());
            case 4:
                return Integer.valueOf(c0084f.k());
            case 5:
                return Long.valueOf(c0084f.j());
            case 6:
                return Integer.valueOf(c0084f.i());
            case 7:
                return Boolean.valueOf(c0084f.l() != 0);
            case 8:
                int iK = c0084f.k();
                int i5 = c0084f.f2385b;
                int i6 = c0084f.f2387d;
                if (iK > i5 - i6 || iK <= 0) {
                    return iK == 0 ? "" : new String(c0084f.h(iK), "UTF-8");
                }
                String str = new String(c0084f.f2384a, i6, iK, "UTF-8");
                c0084f.f2387d += iK;
                return str;
            case 9:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case 10:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case 11:
                return c0084f.e();
            case 12:
                return Integer.valueOf(c0084f.k());
            case 13:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            case 14:
                return Integer.valueOf(c0084f.i());
            case 15:
                return Long.valueOf(c0084f.j());
            case 16:
                int iK2 = c0084f.k();
                return Integer.valueOf((-(iK2 & 1)) ^ (iK2 >>> 1));
            case 17:
                long jL = c0084f.l();
                return Long.valueOf((-(jL & 1)) ^ (jL >>> 1));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void j(T t2, Object obj) {
        obj.getClass();
        boolean z4 = true;
        boolean z5 = false;
        switch (t2.f2365c) {
            case INT:
                z5 = obj instanceof Integer;
                break;
            case LONG:
                z5 = obj instanceof Long;
                break;
            case FLOAT:
                z5 = obj instanceof Float;
                break;
            case DOUBLE:
                z5 = obj instanceof Double;
                break;
            case BOOLEAN:
                z5 = obj instanceof Boolean;
                break;
            case STRING:
                z5 = obj instanceof String;
                break;
            case BYTE_STRING:
                if (!(obj instanceof AbstractC0083e) && !(obj instanceof byte[])) {
                    z4 = false;
                }
                z5 = z4;
                break;
            case ENUM:
                if (!(obj instanceof Integer) && !(obj instanceof r)) {
                }
                z5 = z4;
                break;
            case MESSAGE:
                z5 = obj instanceof AbstractC0080b;
                break;
        }
        if (!z5) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    public static void k(B1.j jVar, T t2, int i5, Object obj) {
        if (t2 != T.f2361g) {
            jVar.y(i5, t2.f2366d);
            l(jVar, t2, obj);
        } else {
            jVar.y(i5, 3);
            ((AbstractC0080b) obj).f(jVar);
            jVar.y(i5, 4);
        }
    }

    public static void l(B1.j jVar, T t2, Object obj) {
        switch (t2.ordinal()) {
            case 0:
                double dDoubleValue = ((Double) obj).doubleValue();
                jVar.getClass();
                jVar.v(Double.doubleToRawLongBits(dDoubleValue));
                break;
            case 1:
                float fFloatValue = ((Float) obj).floatValue();
                jVar.getClass();
                jVar.u(Float.floatToRawIntBits(fFloatValue));
                break;
            case 2:
                jVar.x(((Long) obj).longValue());
                break;
            case 3:
                jVar.x(((Long) obj).longValue());
                break;
            case 4:
                jVar.o(((Integer) obj).intValue());
                break;
            case 5:
                jVar.v(((Long) obj).longValue());
                break;
            case 6:
                jVar.u(((Integer) obj).intValue());
                break;
            case 7:
                jVar.r(((Boolean) obj).booleanValue() ? 1 : 0);
                break;
            case 8:
                jVar.getClass();
                byte[] bytes = ((String) obj).getBytes("UTF-8");
                jVar.w(bytes.length);
                jVar.t(bytes);
                break;
            case 9:
                jVar.getClass();
                ((AbstractC0080b) obj).f(jVar);
                break;
            case 10:
                jVar.q((AbstractC0080b) obj);
                break;
            case 11:
                if (!(obj instanceof AbstractC0083e)) {
                    byte[] bArr = (byte[]) obj;
                    jVar.getClass();
                    jVar.w(bArr.length);
                    jVar.t(bArr);
                    break;
                } else {
                    AbstractC0083e abstractC0083e = (AbstractC0083e) obj;
                    jVar.getClass();
                    jVar.w(abstractC0083e.size());
                    jVar.s(abstractC0083e);
                    break;
                }
            case 12:
                jVar.w(((Integer) obj).intValue());
                break;
            case 13:
                if (!(obj instanceof r)) {
                    jVar.o(((Integer) obj).intValue());
                    break;
                } else {
                    jVar.o(((r) obj).a());
                    break;
                }
            case 14:
                jVar.u(((Integer) obj).intValue());
                break;
            case 15:
                jVar.v(((Long) obj).longValue());
                break;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                jVar.w((iIntValue >> 31) ^ (iIntValue << 1));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                jVar.x((jLongValue >> 63) ^ (jLongValue << 1));
                break;
        }
    }

    public final void a(C0093o c0093o, Object obj) {
        List arrayList;
        if (!c0093o.f2409e) {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        j(c0093o.f2408d, obj);
        F f = this.f2397a;
        Object obj2 = f.get(c0093o);
        if (obj2 == null) {
            arrayList = new ArrayList();
            f.put(c0093o, arrayList);
        } else {
            arrayList = (List) obj2;
        }
        arrayList.add(obj);
    }

    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C0088j clone() {
        F f;
        C0088j c0088j = new C0088j();
        int i5 = 0;
        while (true) {
            f = this.f2397a;
            if (i5 >= f.f2346d.size()) {
                break;
            }
            Map.Entry entry = (Map.Entry) f.f2346d.get(i5);
            c0088j.i((C0093o) entry.getKey(), entry.getValue());
            i5++;
        }
        for (Map.Entry entry2 : f.c()) {
            c0088j.i((C0093o) entry2.getKey(), entry2.getValue());
        }
        c0088j.f2399c = this.f2399c;
        return c0088j;
    }

    public final void f() {
        if (this.f2398b) {
            return;
        }
        F f = this.f2397a;
        if (!f.f) {
            for (int i5 = 0; i5 < f.f2346d.size(); i5++) {
                Map.Entry entry = (Map.Entry) f.f2346d.get(i5);
                if (((C0093o) entry.getKey()).f2409e) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
            for (Map.Entry entry2 : f.c()) {
                if (((C0093o) entry2.getKey()).f2409e) {
                    entry2.setValue(Collections.unmodifiableList((List) entry2.getValue()));
                }
            }
        }
        if (!f.f) {
            f.f2347e = f.f2347e.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(f.f2347e);
            f.f = true;
        }
        this.f2398b = true;
    }

    public final void g(Map.Entry entry) {
        C0093o c0093o = (C0093o) entry.getKey();
        Object value = entry.getValue();
        boolean z4 = c0093o.f2409e;
        F f = this.f2397a;
        if (z4) {
            Object arrayList = f.get(c0093o);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) value) {
                List list = (List) arrayList;
                if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    byte[] bArr2 = new byte[bArr.length];
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    obj = bArr2;
                }
                list.add(obj);
            }
            f.put(c0093o, arrayList);
            return;
        }
        if (c0093o.f2408d.f2365c != U.MESSAGE) {
            if (value instanceof byte[]) {
                byte[] bArr3 = (byte[]) value;
                byte[] bArr4 = new byte[bArr3.length];
                System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
                value = bArr4;
            }
            f.put(c0093o, value);
            return;
        }
        Object obj2 = f.get(c0093o);
        if (obj2 != null) {
            f.put(c0093o, ((AbstractC0080b) obj2).e().e((AbstractC0095q) ((AbstractC0080b) value)).c());
            return;
        }
        if (value instanceof byte[]) {
            byte[] bArr5 = (byte[]) value;
            byte[] bArr6 = new byte[bArr5.length];
            System.arraycopy(bArr5, 0, bArr6, 0, bArr5.length);
            value = bArr6;
        }
        f.put(c0093o, value);
    }

    public final void i(C0093o c0093o, Object obj) {
        boolean z4 = c0093o.f2409e;
        T t2 = c0093o.f2408d;
        if (!z4) {
            j(t2, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                j(t2, it.next());
            }
            obj = arrayList;
        }
        this.f2397a.put(c0093o, obj);
    }

    public C0088j(int i5) {
        f();
    }
}
