package R2;

import com.idm.core.syncml.Constants;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class c extends d implements RandomAccess {

    /* renamed from: c, reason: collision with root package name */
    public final d f2311c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2312d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2313e;

    public c(d dVar, int i5, int i6) {
        d3.i.e(Constants.SYNCML_PROPERTY_LIST, dVar);
        this.f2311c = dVar;
        this.f2312d = i5;
        W1.a.l(i5, i6, dVar.l());
        this.f2313e = i6 - i5;
    }

    @Override // java.util.List
    public final Object get(int i5) {
        int i6 = this.f2313e;
        if (i5 >= 0 && i5 < i6) {
            return this.f2311c.get(this.f2312d + i5);
        }
        throw new IndexOutOfBoundsException("index: " + i5 + ", size: " + i6);
    }

    @Override // R2.d
    public final int l() {
        return this.f2313e;
    }
}
