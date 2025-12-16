package R2;

import c3.InterfaceC0222b;
import f1.AbstractC0420a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import p0.AbstractC0740b;

/* loaded from: classes.dex */
public abstract class i extends Z0.j {
    public static List g0(Object[] objArr) {
        d3.i.e("<this>", objArr);
        List listAsList = Arrays.asList(objArr);
        d3.i.d("asList(this)", listAsList);
        return listAsList;
    }

    public static r4.k h0(Object[] objArr) {
        return objArr.length == 0 ? r4.d.f8838a : new l(0, objArr);
    }

    public static boolean i0(Object obj, Object[] objArr) {
        d3.i.e("<this>", objArr);
        return q0(obj, objArr) >= 0;
    }

    public static void j0(Object[] objArr, Object[] objArr2, int i5, int i6, int i7) {
        d3.i.e("<this>", objArr);
        d3.i.e("destination", objArr2);
        System.arraycopy(objArr, i6, objArr2, i5, i7 - i6);
    }

    public static /* synthetic */ void k0(Object[] objArr, Object[] objArr2, int i5, int i6, int i7, int i8) {
        if ((i8 & 2) != 0) {
            i5 = 0;
        }
        if ((i8 & 4) != 0) {
            i6 = 0;
        }
        if ((i8 & 8) != 0) {
            i7 = objArr.length;
        }
        j0(objArr, objArr2, i5, i6, i7);
    }

    public static Object[] l0(Object[] objArr, int i5, int i6) {
        d3.i.e("<this>", objArr);
        int length = objArr.length;
        if (i6 <= length) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i5, i6);
            d3.i.d("copyOfRange(this, fromIndex, toIndex)", objArrCopyOfRange);
            return objArrCopyOfRange;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i6 + ") is greater than size (" + length + ").");
    }

    public static ArrayList m0(Object[] objArr) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Object n0(Object[] objArr) {
        if (objArr.length != 0) {
            return objArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static Object o0(Object[] objArr) {
        if (objArr.length == 0) {
            return null;
        }
        return objArr[0];
    }

    public static Integer p0(int[] iArr, int i5) {
        d3.i.e("<this>", iArr);
        if (i5 < 0 || i5 > iArr.length - 1) {
            return null;
        }
        return Integer.valueOf(iArr[i5]);
    }

    public static int q0(Object obj, Object[] objArr) {
        d3.i.e("<this>", objArr);
        int i5 = 0;
        if (obj == null) {
            int length = objArr.length;
            while (i5 < length) {
                if (objArr[i5] == null) {
                    return i5;
                }
                i5++;
            }
            return -1;
        }
        int length2 = objArr.length;
        while (i5 < length2) {
            if (d3.i.a(obj, objArr[i5])) {
                return i5;
            }
            i5++;
        }
        return -1;
    }

    public static final void r0(Object[] objArr, StringBuilder sb, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i5, CharSequence charSequence4, InterfaceC0222b interfaceC0222b) throws IOException {
        d3.i.e("<this>", objArr);
        d3.i.e("separator", charSequence);
        d3.i.e("prefix", charSequence2);
        d3.i.e("postfix", charSequence3);
        d3.i.e("truncated", charSequence4);
        sb.append(charSequence2);
        int i6 = 0;
        for (Object obj : objArr) {
            i6++;
            if (i6 > 1) {
                sb.append(charSequence);
            }
            if (i5 >= 0 && i6 > i5) {
                break;
            }
            AbstractC0740b.a(sb, obj, interfaceC0222b);
        }
        if (i5 >= 0 && i6 > i5) {
            sb.append(charSequence4);
        }
        sb.append(charSequence3);
    }

    public static String s0(Object[] objArr, String str, String str2, InterfaceC0222b interfaceC0222b) throws IOException {
        StringBuilder sb = new StringBuilder();
        r0(objArr, sb, "", str, str2, -1, "...", interfaceC0222b);
        String string = sb.toString();
        d3.i.d("joinTo(StringBuilder(), …ed, transform).toString()", string);
        return string;
    }

    public static Object t0(Object[] objArr) {
        if (objArr.length != 0) {
            return objArr[objArr.length - 1];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static Object u0(Object[] objArr) {
        d3.i.e("<this>", objArr);
        int length = objArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return objArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static List v0(Object[] objArr, Comparator comparator) {
        d3.i.e("<this>", objArr);
        if (objArr.length != 0) {
            objArr = Arrays.copyOf(objArr, objArr.length);
            d3.i.d("copyOf(this, size)", objArr);
            if (objArr.length > 1) {
                Arrays.sort(objArr, comparator);
            }
        }
        return g0(objArr);
    }

    public static List w0(Object[] objArr) {
        d3.i.e("<this>", objArr);
        int length = objArr.length;
        return length != 0 ? length != 1 ? new ArrayList(new g(objArr, false)) : AbstractC0420a.V(objArr[0]) : u.f2325c;
    }

    public static Set x0(Object[] objArr) {
        d3.i.e("<this>", objArr);
        int length = objArr.length;
        if (length == 0) {
            return w.f2327c;
        }
        if (length == 1) {
            return L2.b.I(objArr[0]);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(z.y1(objArr.length));
        for (Object obj : objArr) {
            linkedHashSet.add(obj);
        }
        return linkedHashSet;
    }
}
