package i4;

import R2.u;
import h4.AbstractC0472z;
import h4.G;
import h4.J;
import h4.Z;
import java.util.List;

/* loaded from: classes.dex */
public final class h extends AbstractC0472z implements k4.b {

    /* renamed from: d, reason: collision with root package name */
    public final int f7174d;

    /* renamed from: e, reason: collision with root package name */
    public final i f7175e;
    public final Z f;

    /* renamed from: g, reason: collision with root package name */
    public final G f7176g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f7177h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f7178i;

    public h(int i5, i iVar, Z z4, G g5, boolean z5, boolean z6) {
        B.f.x(i5, "captureStatus");
        d3.i.e("constructor", iVar);
        d3.i.e("attributes", g5);
        this.f7174d = i5;
        this.f7175e = iVar;
        this.f = z4;
        this.f7176g = g5;
        this.f7177h = z5;
        this.f7178i = z6;
    }

    @Override // h4.AbstractC0468v
    public final G I0() {
        return this.f7176g;
    }

    @Override // h4.AbstractC0468v
    public final J J0() {
        return this.f7175e;
    }

    @Override // h4.AbstractC0468v
    public final boolean K0() {
        return this.f7177h;
    }

    @Override // h4.AbstractC0472z, h4.Z
    public final Z N0(boolean z4) {
        return new h(this.f7174d, this.f7175e, this.f, this.f7176g, z4, 32);
    }

    @Override // h4.AbstractC0472z
    /* renamed from: Q0 */
    public final AbstractC0472z N0(boolean z4) {
        return new h(this.f7174d, this.f7175e, this.f, this.f7176g, z4, 32);
    }

    @Override // h4.AbstractC0472z
    /* renamed from: R0 */
    public final AbstractC0472z P0(G g5) {
        d3.i.e("newAttributes", g5);
        return new h(this.f7174d, this.f7175e, this.f, g5, this.f7177h, this.f7178i);
    }

    @Override // h4.Z
    /* renamed from: S0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final h L0(f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        i iVarB = this.f7175e.b(fVar);
        Z z4 = this.f;
        if (z4 == null) {
            z4 = null;
        }
        return new h(this.f7174d, iVarB, z4, this.f7176g, this.f7177h, 32);
    }

    @Override // h4.AbstractC0468v
    public final a4.o q0() {
        return j4.i.a(1, true, new String[0]);
    }

    @Override // h4.AbstractC0468v
    public final List u0() {
        return u.f2325c;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public h(int i5, i iVar, Z z4, G g5, boolean z5, int i6) {
        if ((i6 & 8) != 0) {
            G.f7019d.getClass();
            g5 = G.f7020e;
        }
        this(i5, iVar, z4, g5, (i6 & 16) != 0 ? false : z5, false);
    }
}
