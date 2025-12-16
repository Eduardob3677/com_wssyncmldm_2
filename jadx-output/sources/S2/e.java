package S2;

import d3.i;
import e3.InterfaceC0416a;
import h3.C0447c;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
public final class e implements Map, Serializable, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public Object[] f2594c;

    /* renamed from: d, reason: collision with root package name */
    public Object[] f2595d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f2596e;
    public int[] f;

    /* renamed from: g, reason: collision with root package name */
    public int f2597g;

    /* renamed from: h, reason: collision with root package name */
    public int f2598h;

    /* renamed from: i, reason: collision with root package name */
    public int f2599i;

    /* renamed from: j, reason: collision with root package name */
    public int f2600j;

    /* renamed from: k, reason: collision with root package name */
    public f f2601k;

    /* renamed from: l, reason: collision with root package name */
    public g f2602l;

    /* renamed from: m, reason: collision with root package name */
    public f f2603m;
    public boolean n;

    public e() {
        int iHighestOneBit = Integer.highestOneBit(24);
        this.f2594c = new Object[8];
        this.f2595d = null;
        this.f2596e = new int[8];
        this.f = new int[iHighestOneBit];
        this.f2597g = 2;
        this.f2598h = 0;
        this.f2599i = Integer.numberOfLeadingZeros(iHighestOneBit) + 1;
    }

    public final int a(Object obj) {
        c();
        while (true) {
            int iJ = j(obj);
            int i5 = this.f2597g * 2;
            int length = this.f.length / 2;
            if (i5 > length) {
                i5 = length;
            }
            int i6 = 0;
            while (true) {
                int[] iArr = this.f;
                int i7 = iArr[iJ];
                if (i7 <= 0) {
                    int i8 = this.f2598h;
                    Object[] objArr = this.f2594c;
                    if (i8 < objArr.length) {
                        int i9 = i8 + 1;
                        this.f2598h = i9;
                        objArr[i8] = obj;
                        this.f2596e[i8] = iJ;
                        iArr[iJ] = i9;
                        this.f2600j++;
                        if (i6 > this.f2597g) {
                            this.f2597g = i6;
                        }
                        return i8;
                    }
                    g(1);
                } else {
                    if (i.a(this.f2594c[i7 - 1], obj)) {
                        return -i7;
                    }
                    i6++;
                    if (i6 > i5) {
                        k(this.f.length * 2);
                        break;
                    }
                    iJ = iJ == 0 ? this.f.length - 1 : iJ - 1;
                }
            }
        }
    }

    public final void c() {
        if (this.n) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public final void clear() {
        int i5;
        c();
        boolean z4 = true;
        C0447c c0447c = new C0447c(0, this.f2598h - 1, 1);
        int i6 = c0447c.f7003d;
        int i7 = c0447c.f7004e;
        if (i7 <= 0 ? i6 > 0 : i6 < 0) {
            z4 = false;
        }
        int i8 = z4 ? 0 : i6;
        while (z4) {
            if (i8 != i6) {
                i5 = i8 + i7;
            } else {
                if (!z4) {
                    throw new NoSuchElementException();
                }
                z4 = false;
                i5 = i8;
            }
            int[] iArr = this.f2596e;
            int i9 = iArr[i8];
            if (i9 >= 0) {
                this.f[i9] = 0;
                iArr[i8] = -1;
            }
            i8 = i5;
        }
        L2.b.D(this.f2594c, 0, this.f2598h);
        Object[] objArr = this.f2595d;
        if (objArr != null) {
            L2.b.D(objArr, 0, this.f2598h);
        }
        this.f2600j = 0;
        this.f2598h = 0;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return h(obj) >= 0;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return i(obj) >= 0;
    }

    public final boolean d(Collection collection) {
        i.e("m", collection);
        for (Object obj : collection) {
            if (obj != null) {
                try {
                    if (!e((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean e(Map.Entry entry) {
        i.e("entry", entry);
        int iH = h(entry.getKey());
        if (iH < 0) {
            return false;
        }
        Object[] objArr = this.f2595d;
        i.b(objArr);
        return i.a(objArr[iH], entry.getValue());
    }

    @Override // java.util.Map
    public final Set entrySet() {
        f fVar = this.f2603m;
        if (fVar != null) {
            return fVar;
        }
        f fVar2 = new f(this, 0);
        this.f2603m = fVar2;
        return fVar2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (this.f2600j != map.size() || !d(map.entrySet())) {
                }
            }
            return false;
        }
        return true;
    }

    public final void g(int i5) {
        Object[] objArrCopyOf;
        Object[] objArr = this.f2594c;
        int length = objArr.length;
        int i6 = this.f2598h;
        int i7 = length - i6;
        int i8 = i6 - this.f2600j;
        if (i7 < i5 && i7 + i8 >= i5 && i8 >= objArr.length / 4) {
            k(this.f.length);
            return;
        }
        int i9 = i6 + i5;
        if (i9 < 0) {
            throw new OutOfMemoryError();
        }
        if (i9 > objArr.length) {
            int length2 = (objArr.length * 3) / 2;
            if (i9 <= length2) {
                i9 = length2;
            }
            Object[] objArrCopyOf2 = Arrays.copyOf(objArr, i9);
            i.d("copyOf(this, newSize)", objArrCopyOf2);
            this.f2594c = objArrCopyOf2;
            Object[] objArr2 = this.f2595d;
            if (objArr2 != null) {
                objArrCopyOf = Arrays.copyOf(objArr2, i9);
                i.d("copyOf(this, newSize)", objArrCopyOf);
            } else {
                objArrCopyOf = null;
            }
            this.f2595d = objArrCopyOf;
            int[] iArrCopyOf = Arrays.copyOf(this.f2596e, i9);
            i.d("copyOf(this, newSize)", iArrCopyOf);
            this.f2596e = iArrCopyOf;
            if (i9 < 1) {
                i9 = 1;
            }
            int iHighestOneBit = Integer.highestOneBit(i9 * 3);
            if (iHighestOneBit > this.f.length) {
                k(iHighestOneBit);
            }
        }
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int iH = h(obj);
        if (iH < 0) {
            return null;
        }
        Object[] objArr = this.f2595d;
        i.b(objArr);
        return objArr[iH];
    }

    public final int h(Object obj) {
        int iJ = j(obj);
        int i5 = this.f2597g;
        while (true) {
            int i6 = this.f[iJ];
            if (i6 == 0) {
                return -1;
            }
            if (i6 > 0) {
                int i7 = i6 - 1;
                if (i.a(this.f2594c[i7], obj)) {
                    return i7;
                }
            }
            i5--;
            if (i5 < 0) {
                return -1;
            }
            iJ = iJ == 0 ? this.f.length - 1 : iJ - 1;
        }
    }

    @Override // java.util.Map
    public final int hashCode() {
        c cVar = new c(this, 0);
        int i5 = 0;
        while (cVar.hasNext()) {
            int i6 = cVar.f2590d;
            e eVar = cVar.f2589c;
            if (i6 >= eVar.f2598h) {
                throw new NoSuchElementException();
            }
            cVar.f2590d = i6 + 1;
            cVar.f2591e = i6;
            Object obj = eVar.f2594c[i6];
            int iHashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = eVar.f2595d;
            i.b(objArr);
            Object obj2 = objArr[cVar.f2591e];
            int iHashCode2 = obj2 != null ? obj2.hashCode() : 0;
            cVar.a();
            i5 += iHashCode ^ iHashCode2;
        }
        return i5;
    }

    public final int i(Object obj) {
        int i5 = this.f2598h;
        while (true) {
            i5--;
            if (i5 < 0) {
                return -1;
            }
            if (this.f2596e[i5] >= 0) {
                Object[] objArr = this.f2595d;
                i.b(objArr);
                if (i.a(objArr[i5], obj)) {
                    return i5;
                }
            }
        }
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f2600j == 0;
    }

    public final int j(Object obj) {
        return ((obj != null ? obj.hashCode() : 0) * (-1640531527)) >>> this.f2599i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0065, code lost:
    
        r3[r0] = r7;
        r6.f2596e[r2] = r0;
        r2 = r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k(int i5) {
        int i6;
        int i7 = 0;
        if (this.f2598h > this.f2600j) {
            Object[] objArr = this.f2595d;
            int i8 = 0;
            int i9 = 0;
            while (true) {
                i6 = this.f2598h;
                if (i8 >= i6) {
                    break;
                }
                if (this.f2596e[i8] >= 0) {
                    Object[] objArr2 = this.f2594c;
                    objArr2[i9] = objArr2[i8];
                    if (objArr != null) {
                        objArr[i9] = objArr[i8];
                    }
                    i9++;
                }
                i8++;
            }
            L2.b.D(this.f2594c, i9, i6);
            if (objArr != null) {
                L2.b.D(objArr, i9, this.f2598h);
            }
            this.f2598h = i9;
        }
        int[] iArr = this.f;
        if (i5 != iArr.length) {
            this.f = new int[i5];
            this.f2599i = Integer.numberOfLeadingZeros(i5) + 1;
        } else {
            int length = iArr.length;
            i.e("<this>", iArr);
            Arrays.fill(iArr, 0, length, 0);
        }
        while (i7 < this.f2598h) {
            int i10 = i7 + 1;
            int iJ = j(this.f2594c[i7]);
            int i11 = this.f2597g;
            while (true) {
                int[] iArr2 = this.f;
                if (iArr2[iJ] == 0) {
                    break;
                }
                i11--;
                if (i11 < 0) {
                    throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
                }
                iJ = iJ == 0 ? iArr2.length - 1 : iJ - 1;
            }
        }
    }

    @Override // java.util.Map
    public final Set keySet() {
        f fVar = this.f2601k;
        if (fVar != null) {
            return fVar;
        }
        f fVar2 = new f(this, 1);
        this.f2601k = fVar2;
        return fVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0062 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[LOOP:0: B:6:0x001e->B:30:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l(int i5) {
        Object[] objArr = this.f2594c;
        i.e("<this>", objArr);
        objArr[i5] = null;
        int length = this.f2596e[i5];
        int i6 = this.f2597g * 2;
        int length2 = this.f.length / 2;
        if (i6 > length2) {
            i6 = length2;
        }
        int i7 = i6;
        int i8 = 0;
        int i9 = length;
        while (true) {
            length = length == 0 ? this.f.length - 1 : length - 1;
            i8++;
            if (i8 > this.f2597g) {
                this.f[i9] = 0;
                break;
            }
            int[] iArr = this.f;
            int i10 = iArr[length];
            if (i10 == 0) {
                iArr[i9] = 0;
                break;
            }
            if (i10 < 0) {
                iArr[i9] = -1;
            } else {
                int i11 = i10 - 1;
                int iJ = j(this.f2594c[i11]) - length;
                int[] iArr2 = this.f;
                if ((iJ & (iArr2.length - 1)) >= i8) {
                    iArr2[i9] = i10;
                    this.f2596e[i11] = i9;
                }
                i7--;
                if (i7 >= 0) {
                    this.f[i9] = -1;
                    break;
                }
            }
            i9 = length;
            i8 = 0;
            i7--;
            if (i7 >= 0) {
            }
        }
        this.f2596e[i5] = -1;
        this.f2600j--;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        c();
        int iA = a(obj);
        Object[] objArr = this.f2595d;
        if (objArr == null) {
            int length = this.f2594c.length;
            if (length < 0) {
                throw new IllegalArgumentException("capacity must be non-negative.".toString());
            }
            objArr = new Object[length];
            this.f2595d = objArr;
        }
        if (iA >= 0) {
            objArr[iA] = obj2;
            return null;
        }
        int i5 = (-iA) - 1;
        Object obj3 = objArr[i5];
        objArr[i5] = obj2;
        return obj3;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        i.e("from", map);
        c();
        Set<Map.Entry> setEntrySet = map.entrySet();
        if (setEntrySet.isEmpty()) {
            return;
        }
        g(setEntrySet.size());
        for (Map.Entry entry : setEntrySet) {
            int iA = a(entry.getKey());
            Object[] objArr = this.f2595d;
            if (objArr == null) {
                int length = this.f2594c.length;
                if (length < 0) {
                    throw new IllegalArgumentException("capacity must be non-negative.".toString());
                }
                objArr = new Object[length];
                this.f2595d = objArr;
            }
            if (iA >= 0) {
                objArr[iA] = entry.getValue();
            } else {
                int i5 = (-iA) - 1;
                if (!i.a(entry.getValue(), objArr[i5])) {
                    objArr[i5] = entry.getValue();
                }
            }
        }
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        c();
        int iH = h(obj);
        if (iH < 0) {
            iH = -1;
        } else {
            l(iH);
        }
        if (iH < 0) {
            return null;
        }
        Object[] objArr = this.f2595d;
        i.b(objArr);
        Object obj2 = objArr[iH];
        objArr[iH] = null;
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f2600j;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.f2600j * 3) + 2);
        sb.append("{");
        c cVar = new c(this, 0);
        int i5 = 0;
        while (cVar.hasNext()) {
            if (i5 > 0) {
                sb.append(", ");
            }
            int i6 = cVar.f2590d;
            e eVar = cVar.f2589c;
            if (i6 >= eVar.f2598h) {
                throw new NoSuchElementException();
            }
            cVar.f2590d = i6 + 1;
            cVar.f2591e = i6;
            Object obj = eVar.f2594c[i6];
            if (i.a(obj, eVar)) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = eVar.f2595d;
            i.b(objArr);
            Object obj2 = objArr[cVar.f2591e];
            if (i.a(obj2, eVar)) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            cVar.a();
            i5++;
        }
        sb.append("}");
        String string = sb.toString();
        i.d("sb.toString()", string);
        return string;
    }

    @Override // java.util.Map
    public final Collection values() {
        g gVar = this.f2602l;
        if (gVar != null) {
            return gVar;
        }
        g gVar2 = new g(this);
        this.f2602l = gVar2;
        return gVar2;
    }
}
