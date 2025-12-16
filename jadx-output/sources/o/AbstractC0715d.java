package o;

/* renamed from: o.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0715d {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f8414a = new int[0];

    /* renamed from: b, reason: collision with root package name */
    public static final Object[] f8415b = new Object[0];

    public static int a(int[] iArr, int i5, int i6) {
        int i7 = i5 - 1;
        int i8 = 0;
        while (i8 <= i7) {
            int i9 = (i8 + i7) >>> 1;
            int i10 = iArr[i9];
            if (i10 < i6) {
                i8 = i9 + 1;
            } else {
                if (i10 <= i6) {
                    return i9;
                }
                i7 = i9 - 1;
            }
        }
        return ~i8;
    }

    public static int b(long[] jArr, int i5, long j3) {
        int i6 = i5 - 1;
        int i7 = 0;
        while (i7 <= i6) {
            int i8 = (i7 + i6) >>> 1;
            long j5 = jArr[i8];
            if (j5 < j3) {
                i7 = i8 + 1;
            } else {
                if (j5 <= j3) {
                    return i8;
                }
                i6 = i8 - 1;
            }
        }
        return ~i7;
    }
}
