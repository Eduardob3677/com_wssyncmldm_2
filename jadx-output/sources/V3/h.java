package V3;

import A3.C0005d;
import f1.AbstractC0420a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import o3.EnumC0734k;
import r3.InterfaceC0821x;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final h f2798a = new h();

    public final b a(List list, InterfaceC0821x interfaceC0821x, EnumC0734k enumC0734k) {
        List listG1 = R2.m.g1(list);
        ArrayList arrayList = new ArrayList();
        Iterator it = listG1.iterator();
        while (it.hasNext()) {
            g gVarB = b(it.next(), null);
            if (gVarB != null) {
                arrayList.add(gVarB);
            }
        }
        return interfaceC0821x != null ? new w(arrayList, interfaceC0821x.g().q(enumC0734k)) : new b(arrayList, new C0005d(12, enumC0734k));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [R2.u] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v16, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v17, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v18, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v19, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v20, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v21, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v22, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v23, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v24, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v0, types: [V3.h] */
    public final g b(Object obj, InterfaceC0821x interfaceC0821x) {
        if (obj instanceof Byte) {
            return new d(((Number) obj).byteValue());
        }
        if (obj instanceof Short) {
            return new u(((Number) obj).shortValue());
        }
        if (obj instanceof Integer) {
            return new k(((Number) obj).intValue());
        }
        if (obj instanceof Long) {
            return new s(((Number) obj).longValue());
        }
        if (obj instanceof Character) {
            Character ch = (Character) obj;
            ch.getClass();
            return new e(ch);
        }
        if (obj instanceof Float) {
            return new c(((Number) obj).floatValue());
        }
        if (obj instanceof Double) {
            return new c(((Number) obj).doubleValue());
        }
        if (obj instanceof Boolean) {
            Boolean bool = (Boolean) obj;
            bool.getClass();
            return new c(bool);
        }
        if (obj instanceof String) {
            String str = (String) obj;
            d3.i.e("value", str);
            return new v(str);
        }
        boolean z4 = obj instanceof byte[];
        ?? V4 = R2.u.f2325c;
        int i5 = 0;
        if (z4) {
            byte[] bArr = (byte[]) obj;
            d3.i.e("<this>", bArr);
            int length = bArr.length;
            if (length != 0) {
                if (length != 1) {
                    V4 = new ArrayList(bArr.length);
                    int length2 = bArr.length;
                    while (i5 < length2) {
                        V4.add(Byte.valueOf(bArr[i5]));
                        i5++;
                    }
                } else {
                    V4 = AbstractC0420a.V(Byte.valueOf(bArr[0]));
                }
            }
            return a(V4, interfaceC0821x, EnumC0734k.BYTE);
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            d3.i.e("<this>", sArr);
            int length3 = sArr.length;
            if (length3 != 0) {
                if (length3 != 1) {
                    V4 = new ArrayList(sArr.length);
                    int length4 = sArr.length;
                    while (i5 < length4) {
                        V4.add(Short.valueOf(sArr[i5]));
                        i5++;
                    }
                } else {
                    V4 = AbstractC0420a.V(Short.valueOf(sArr[0]));
                }
            }
            return a(V4, interfaceC0821x, EnumC0734k.SHORT);
        }
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            d3.i.e("<this>", iArr);
            int length5 = iArr.length;
            if (length5 != 0) {
                if (length5 != 1) {
                    V4 = new ArrayList(iArr.length);
                    int length6 = iArr.length;
                    while (i5 < length6) {
                        V4.add(Integer.valueOf(iArr[i5]));
                        i5++;
                    }
                } else {
                    V4 = AbstractC0420a.V(Integer.valueOf(iArr[0]));
                }
            }
            return a(V4, interfaceC0821x, EnumC0734k.INT);
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            d3.i.e("<this>", jArr);
            int length7 = jArr.length;
            if (length7 != 0) {
                if (length7 != 1) {
                    V4 = new ArrayList(jArr.length);
                    int length8 = jArr.length;
                    while (i5 < length8) {
                        V4.add(Long.valueOf(jArr[i5]));
                        i5++;
                    }
                } else {
                    V4 = AbstractC0420a.V(Long.valueOf(jArr[0]));
                }
            }
            return a(V4, interfaceC0821x, EnumC0734k.LONG);
        }
        if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            d3.i.e("<this>", cArr);
            int length9 = cArr.length;
            if (length9 != 0) {
                if (length9 != 1) {
                    V4 = new ArrayList(cArr.length);
                    int length10 = cArr.length;
                    while (i5 < length10) {
                        V4.add(Character.valueOf(cArr[i5]));
                        i5++;
                    }
                } else {
                    V4 = AbstractC0420a.V(Character.valueOf(cArr[0]));
                }
            }
            return a(V4, interfaceC0821x, EnumC0734k.CHAR);
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            d3.i.e("<this>", fArr);
            int length11 = fArr.length;
            if (length11 != 0) {
                if (length11 != 1) {
                    V4 = new ArrayList(fArr.length);
                    int length12 = fArr.length;
                    while (i5 < length12) {
                        V4.add(Float.valueOf(fArr[i5]));
                        i5++;
                    }
                } else {
                    V4 = AbstractC0420a.V(Float.valueOf(fArr[0]));
                }
            }
            return a(V4, interfaceC0821x, EnumC0734k.FLOAT);
        }
        if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            d3.i.e("<this>", dArr);
            int length13 = dArr.length;
            if (length13 != 0) {
                if (length13 != 1) {
                    V4 = new ArrayList(dArr.length);
                    int length14 = dArr.length;
                    while (i5 < length14) {
                        V4.add(Double.valueOf(dArr[i5]));
                        i5++;
                    }
                } else {
                    V4 = AbstractC0420a.V(Double.valueOf(dArr[0]));
                }
            }
            return a(V4, interfaceC0821x, EnumC0734k.DOUBLE);
        }
        if (!(obj instanceof boolean[])) {
            if (obj == null) {
                return new t(null);
            }
            return null;
        }
        boolean[] zArr = (boolean[]) obj;
        d3.i.e("<this>", zArr);
        int length15 = zArr.length;
        if (length15 != 0) {
            if (length15 != 1) {
                V4 = new ArrayList(zArr.length);
                int length16 = zArr.length;
                while (i5 < length16) {
                    V4.add(Boolean.valueOf(zArr[i5]));
                    i5++;
                }
            } else {
                V4 = AbstractC0420a.V(Boolean.valueOf(zArr[0]));
            }
        }
        return a(V4, interfaceC0821x, EnumC0734k.BOOLEAN);
    }
}
