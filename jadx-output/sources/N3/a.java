package N3;

import R2.j;
import R2.m;
import R2.u;
import com.idm.providers.mo.IDMMoInterface;
import d3.i;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f1865a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1866b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1867c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1868d;

    /* renamed from: e, reason: collision with root package name */
    public final List f1869e;

    public a(int... iArr) {
        List listG1;
        i.e("numbers", iArr);
        this.f1865a = iArr;
        Integer numP0 = R2.i.p0(iArr, 0);
        this.f1866b = numP0 != null ? numP0.intValue() : -1;
        Integer numP02 = R2.i.p0(iArr, 1);
        this.f1867c = numP02 != null ? numP02.intValue() : -1;
        Integer numP03 = R2.i.p0(iArr, 2);
        this.f1868d = numP03 != null ? numP03.intValue() : -1;
        if (iArr.length <= 3) {
            listG1 = u.f2325c;
        } else {
            if (iArr.length > 1024) {
                throw new IllegalArgumentException("BinaryVersion with length more than 1024 are not supported. Provided length " + iArr.length + '.');
            }
            listG1 = m.g1(new j(iArr).subList(3, iArr.length));
        }
        this.f1869e = listG1;
    }

    public final boolean a(int i5, int i6, int i7) {
        int i8 = this.f1866b;
        if (i8 > i5) {
            return true;
        }
        if (i8 < i5) {
            return false;
        }
        int i9 = this.f1867c;
        if (i9 > i6) {
            return true;
        }
        return i9 >= i6 && this.f1868d >= i7;
    }

    public final boolean equals(Object obj) {
        if (obj != null && i.a(getClass(), obj.getClass())) {
            a aVar = (a) obj;
            if (this.f1866b == aVar.f1866b && this.f1867c == aVar.f1867c && this.f1868d == aVar.f1868d && i.a(this.f1869e, aVar.f1869e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i5 = this.f1866b;
        int i6 = (i5 * 31) + this.f1867c + i5;
        int i7 = (i6 * 31) + this.f1868d + i6;
        return this.f1869e.hashCode() + (i7 * 31) + i7;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        for (int i5 : this.f1865a) {
            if (i5 == -1) {
                break;
            }
            arrayList.add(Integer.valueOf(i5));
        }
        return arrayList.isEmpty() ? "unknown" : m.S0(arrayList, IDMMoInterface.IDM_MO_ROOT_PATH, null, null, null, 62);
    }
}
