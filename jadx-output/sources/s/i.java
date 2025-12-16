package s;

import java.util.ArrayList;
import t.n;

/* loaded from: classes.dex */
public abstract class i extends C0827d {
    public C0827d[] k0 = new C0827d[4];
    public int l0 = 0;

    public final void K(int i5, ArrayList arrayList, n nVar) {
        for (int i6 = 0; i6 < this.l0; i6++) {
            C0827d c0827d = this.k0[i6];
            ArrayList arrayList2 = nVar.f9113a;
            if (!arrayList2.contains(c0827d)) {
                arrayList2.add(c0827d);
            }
        }
        for (int i7 = 0; i7 < this.l0; i7++) {
            t.h.b(this.k0[i7], i5, arrayList, nVar);
        }
    }

    public void L() {
    }
}
