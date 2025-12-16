package R2;

import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class j extends d implements RandomAccess {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int[] f2319c;

    public j(int[] iArr) {
        this.f2319c = iArr;
    }

    @Override // R2.d, java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Integer)) {
            return false;
        }
        int iIntValue = ((Number) obj).intValue();
        int[] iArr = this.f2319c;
        d3.i.e("<this>", iArr);
        int length = iArr.length;
        int i5 = 0;
        while (true) {
            if (i5 >= length) {
                i5 = -1;
                break;
            }
            if (iIntValue == iArr[i5]) {
                break;
            }
            i5++;
        }
        return i5 >= 0;
    }

    @Override // java.util.List
    public final Object get(int i5) {
        return Integer.valueOf(this.f2319c[i5]);
    }

    @Override // R2.d, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Number) obj).intValue();
        int[] iArr = this.f2319c;
        d3.i.e("<this>", iArr);
        int length = iArr.length;
        for (int i5 = 0; i5 < length; i5++) {
            if (iIntValue == iArr[i5]) {
                return i5;
            }
        }
        return -1;
    }

    @Override // R2.d, java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.f2319c.length == 0;
    }

    @Override // R2.d
    public final int l() {
        return this.f2319c.length;
    }

    @Override // R2.d, java.util.List
    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Number) obj).intValue();
        int[] iArr = this.f2319c;
        d3.i.e("<this>", iArr);
        int length = iArr.length - 1;
        if (length < 0) {
            return -1;
        }
        while (true) {
            int i5 = length - 1;
            if (iIntValue == iArr[length]) {
                return length;
            }
            if (i5 < 0) {
                return -1;
            }
            length = i5;
        }
    }
}
