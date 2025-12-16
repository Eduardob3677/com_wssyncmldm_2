package q3;

import c3.InterfaceC0221a;
import d3.q;
import d3.r;
import i3.InterfaceC0494o;
import k.Q0;
import o3.AbstractC0732i;
import t3.InterfaceC0858b;
import t3.InterfaceC0860d;
import u3.C0867C;

/* renamed from: q3.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0763j extends AbstractC0732i {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f8670h;
    public InterfaceC0221a f;

    /* renamed from: g, reason: collision with root package name */
    public final g4.i f8671g;

    static {
        r rVar = q.f6516a;
        f8670h = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(C0763j.class), "customizer", "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"))};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0763j(g4.l lVar) {
        super(lVar);
        B.f.x(1, "kind");
        this.f8671g = new g4.i(lVar, new B3.c(this, 13, lVar));
        int iF = Q0.f(1);
        if (iF == 1) {
            c(false);
        } else {
            if (iF != 2) {
                return;
            }
            c(true);
        }
    }

    public final n I() {
        return (n) Z0.j.N(this.f8671g, f8670h[0]);
    }

    @Override // o3.AbstractC0732i
    public final InterfaceC0858b d() {
        return I();
    }

    @Override // o3.AbstractC0732i
    public final Iterable l() {
        Iterable iterableL = super.l();
        g4.o oVar = this.f8458d;
        if (oVar == null) {
            AbstractC0732i.a(6);
            throw null;
        }
        C0867C c0867cK = k();
        d3.i.d("builtInsModule", c0867cK);
        return R2.m.X0(iterableL, new C0760g(oVar, c0867cK));
    }

    @Override // o3.AbstractC0732i
    public final InterfaceC0860d p() {
        return I();
    }
}
