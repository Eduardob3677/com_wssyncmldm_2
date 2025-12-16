package m4;

import com.samsung.android.knox.ex.KnoxContract;
import d3.i;
import h4.J;
import h4.L;
import h4.N;
import h4.O;

/* loaded from: classes.dex */
public final class c extends L {
    @Override // h4.L
    public final N g(J j3) {
        i.e(KnoxContract.KEY, j3);
        U3.b bVar = j3 instanceof U3.b ? (U3.b) j3 : null;
        if (bVar == null) {
            return null;
        }
        return bVar.a().c() ? new O(3, bVar.a().b()) : bVar.a();
    }
}
