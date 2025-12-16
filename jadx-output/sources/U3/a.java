package U3;

import R2.u;
import a4.o;
import d3.i;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.G;
import h4.J;
import h4.N;
import h4.Z;
import i4.f;
import java.util.List;

/* loaded from: classes.dex */
public final class a extends AbstractC0472z implements k4.b {

    /* renamed from: d, reason: collision with root package name */
    public final N f2747d;

    /* renamed from: e, reason: collision with root package name */
    public final b f2748e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final G f2749g;

    public a(N n, b bVar, boolean z4, G g5) {
        i.e("typeProjection", n);
        i.e("constructor", bVar);
        i.e("attributes", g5);
        this.f2747d = n;
        this.f2748e = bVar;
        this.f = z4;
        this.f2749g = g5;
    }

    @Override // h4.AbstractC0468v
    public final G I0() {
        return this.f2749g;
    }

    @Override // h4.AbstractC0468v
    public final J J0() {
        return this.f2748e;
    }

    @Override // h4.AbstractC0468v
    public final boolean K0() {
        return this.f;
    }

    @Override // h4.AbstractC0468v
    public final AbstractC0468v L0(f fVar) {
        i.e("kotlinTypeRefiner", fVar);
        return new a(this.f2747d.d(fVar), this.f2748e, this.f, this.f2749g);
    }

    @Override // h4.AbstractC0472z, h4.Z
    public final Z N0(boolean z4) {
        if (z4 == this.f) {
            return this;
        }
        return new a(this.f2747d, this.f2748e, z4, this.f2749g);
    }

    @Override // h4.Z
    /* renamed from: O0 */
    public final Z L0(f fVar) {
        i.e("kotlinTypeRefiner", fVar);
        return new a(this.f2747d.d(fVar), this.f2748e, this.f, this.f2749g);
    }

    @Override // h4.AbstractC0472z
    /* renamed from: Q0 */
    public final AbstractC0472z N0(boolean z4) {
        if (z4 == this.f) {
            return this;
        }
        return new a(this.f2747d, this.f2748e, z4, this.f2749g);
    }

    @Override // h4.AbstractC0472z
    /* renamed from: R0 */
    public final AbstractC0472z P0(G g5) {
        i.e("newAttributes", g5);
        return new a(this.f2747d, this.f2748e, this.f, g5);
    }

    @Override // h4.AbstractC0468v
    public final o q0() {
        return j4.i.a(1, true, new String[0]);
    }

    @Override // h4.AbstractC0472z
    public final String toString() {
        StringBuilder sb = new StringBuilder("Captured(");
        sb.append(this.f2747d);
        sb.append(')');
        sb.append(this.f ? "?" : "");
        return sb.toString();
    }

    @Override // h4.AbstractC0468v
    public final List u0() {
        return u.f2325c;
    }
}
