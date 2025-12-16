package I;

import d3.i;

/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f865a;

    /* renamed from: b, reason: collision with root package name */
    public int f866b;

    public c(int i5) {
        if (i5 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0".toString());
        }
        this.f865a = new Object[i5];
    }

    public Object a() {
        int i5 = this.f866b;
        if (i5 <= 0) {
            return null;
        }
        int i6 = i5 - 1;
        Object[] objArr = this.f865a;
        Object obj = objArr[i6];
        i.c("null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool", obj);
        objArr[i6] = null;
        this.f866b--;
        return obj;
    }

    public void b(Object obj) {
        int i5 = this.f866b;
        Object[] objArr = this.f865a;
        if (i5 < objArr.length) {
            objArr[i5] = obj;
            this.f866b = i5 + 1;
        }
    }

    public boolean c(Object obj) {
        Object[] objArr;
        boolean z4;
        i.e("instance", obj);
        int i5 = this.f866b;
        int i6 = 0;
        while (true) {
            objArr = this.f865a;
            if (i6 >= i5) {
                z4 = false;
                break;
            }
            if (objArr[i6] == obj) {
                z4 = true;
                break;
            }
            i6++;
        }
        if (!(!z4)) {
            throw new IllegalStateException("Already in the pool!".toString());
        }
        int i7 = this.f866b;
        if (i7 >= objArr.length) {
            return false;
        }
        objArr[i7] = obj;
        this.f866b = i7 + 1;
        return true;
    }

    public c() {
        this.f865a = new Object[256];
    }
}
