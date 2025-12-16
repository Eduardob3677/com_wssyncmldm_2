package j4;

import a4.o;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.G;
import h4.J;
import h4.Z;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class f extends AbstractC0472z {

    /* renamed from: d, reason: collision with root package name */
    public final J f7609d;

    /* renamed from: e, reason: collision with root package name */
    public final o f7610e;
    public final h f;

    /* renamed from: g, reason: collision with root package name */
    public final List f7611g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f7612h;

    /* renamed from: i, reason: collision with root package name */
    public final String[] f7613i;

    /* renamed from: j, reason: collision with root package name */
    public final String f7614j;

    public f(J j3, o oVar, h hVar, List list, boolean z4, String... strArr) {
        d3.i.e("constructor", j3);
        d3.i.e("memberScope", oVar);
        d3.i.e("kind", hVar);
        d3.i.e("arguments", list);
        d3.i.e("formatParams", strArr);
        this.f7609d = j3;
        this.f7610e = oVar;
        this.f = hVar;
        this.f7611g = list;
        this.f7612h = z4;
        this.f7613i = strArr;
        Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length);
        this.f7614j = String.format(hVar.f7645c, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
    }

    @Override // h4.AbstractC0468v
    public final G I0() {
        G.f7019d.getClass();
        return G.f7020e;
    }

    @Override // h4.AbstractC0468v
    public final J J0() {
        return this.f7609d;
    }

    @Override // h4.AbstractC0468v
    public final boolean K0() {
        return this.f7612h;
    }

    @Override // h4.AbstractC0468v
    /* renamed from: L0 */
    public final AbstractC0468v O0(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        return this;
    }

    @Override // h4.Z
    public final Z O0(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        return this;
    }

    @Override // h4.AbstractC0472z, h4.Z
    public final Z P0(G g5) {
        d3.i.e("newAttributes", g5);
        return this;
    }

    @Override // h4.AbstractC0472z
    /* renamed from: Q0 */
    public final AbstractC0472z N0(boolean z4) {
        String[] strArr = this.f7613i;
        return new f(this.f7609d, this.f7610e, this.f, this.f7611g, z4, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @Override // h4.AbstractC0472z
    /* renamed from: R0 */
    public final AbstractC0472z P0(G g5) {
        d3.i.e("newAttributes", g5);
        return this;
    }

    @Override // h4.AbstractC0468v
    public final o q0() {
        return this.f7610e;
    }

    @Override // h4.AbstractC0468v
    public final List u0() {
        return this.f7611g;
    }
}
