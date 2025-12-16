package j0;

import android.util.SparseArray;
import java.util.Set;

/* loaded from: classes.dex */
public final class O {

    /* renamed from: a, reason: collision with root package name */
    public SparseArray f7360a;

    /* renamed from: b, reason: collision with root package name */
    public int f7361b;

    /* renamed from: c, reason: collision with root package name */
    public Set f7362c;

    public final N a(int i5) {
        SparseArray sparseArray = this.f7360a;
        N n = (N) sparseArray.get(i5);
        if (n != null) {
            return n;
        }
        N n5 = new N();
        sparseArray.put(i5, n5);
        return n5;
    }
}
