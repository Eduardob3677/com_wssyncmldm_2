package f4;

import L3.Q;
import L3.V;
import L3.W;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import f1.AbstractC0420a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import r3.C0787O;
import r3.InterfaceC0807j;
import s2.C0837c;
import s3.C0843f;
import s3.C0844g;
import s3.InterfaceC0845h;
import u3.AbstractC0871c;

/* loaded from: classes.dex */
public final class u extends AbstractC0871c {

    /* renamed from: m, reason: collision with root package name */
    public final G4 f6912m;
    public final W n;

    /* renamed from: o, reason: collision with root package name */
    public final a f6913o;

    /* JADX WARN: Illegal instructions before constructor call */
    public u(G4 g42, W w2, int i5) {
        int i6;
        d3.i.e("c", g42);
        d4.i iVar = (d4.i) g42.f5377c;
        g4.o oVar = iVar.f6529a;
        C0843f c0843f = C0844g.f9041a;
        Q3.f fVarV = L2.b.v((N3.f) g42.f5378d, w2.f1529g);
        V v4 = w2.f1531i;
        d3.i.d("proto.variance", v4);
        int iOrdinal = v4.ordinal();
        if (iOrdinal != 0) {
            i6 = 1;
            if (iOrdinal == 1) {
                i6 = 3;
            } else if (iOrdinal != 2) {
                throw new A0.c();
            }
        } else {
            i6 = 2;
        }
        super(oVar, (InterfaceC0807j) g42.f5379e, c0843f, fVarV, i6, w2.f1530h, i5, C0787O.f8792e);
        this.f6912m = g42;
        this.n = w2;
        this.f6913o = new a(iVar.f6529a, new B3.k(14, this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Iterable, java.util.List] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // u3.AbstractC0878j
    public final List R0() {
        G4 g42 = this.f6912m;
        C0837c c0837c = (C0837c) g42.f;
        W w2 = this.n;
        d3.i.e("<this>", w2);
        d3.i.e("typeTable", c0837c);
        List list = w2.f1532j;
        boolean z4 = !list.isEmpty();
        ?? arrayList = list;
        if (!z4) {
            arrayList = 0;
        }
        if (arrayList == 0) {
            List<Integer> list2 = w2.f1533k;
            d3.i.d("upperBoundIdList", list2);
            arrayList = new ArrayList(R2.o.C0(list2));
            for (Integer num : list2) {
                d3.i.d("it", num);
                arrayList.add(c0837c.l(num.intValue()));
            }
        }
        if (arrayList.isEmpty()) {
            return AbstractC0420a.V(X3.f.e(this).m());
        }
        ArrayList arrayList2 = new ArrayList(R2.o.C0(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((J3.c) g42.f5383j).o((Q) it.next()));
        }
        return arrayList2;
    }

    @Override // K3.c, s3.InterfaceC0838a
    public final InterfaceC0845h t() {
        return this.f6913o;
    }
}
