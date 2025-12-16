package n4;

import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class c extends a {

    /* renamed from: c, reason: collision with root package name */
    public Object[] f8339c;

    /* renamed from: d, reason: collision with root package name */
    public int f8340d;

    @Override // n4.a
    public final Object get(int i5) {
        Object[] objArr = this.f8339c;
        d3.i.e("<this>", objArr);
        if (i5 < 0 || i5 > objArr.length - 1) {
            return null;
        }
        return objArr[i5];
    }

    @Override // n4.a, java.lang.Iterable
    public final Iterator iterator() {
        return new b(this);
    }

    @Override // n4.a
    public final int l() {
        return this.f8340d;
    }

    @Override // n4.a
    public final void m(int i5, Object obj) {
        d3.i.e("value", obj);
        Object[] objArr = this.f8339c;
        if (objArr.length <= i5) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length * 2);
            d3.i.d("copyOf(this, newSize)", objArrCopyOf);
            this.f8339c = objArrCopyOf;
        }
        Object[] objArr2 = this.f8339c;
        if (objArr2[i5] == null) {
            this.f8340d++;
        }
        objArr2[i5] = obj;
    }
}
