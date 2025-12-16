package i4;

import f1.AbstractC0420a;
import h4.AbstractC0450c;
import h4.C0460m;
import h4.H;
import h4.Z;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: c, reason: collision with root package name */
    public static final p f7191c;

    /* renamed from: d, reason: collision with root package name */
    public static final n f7192d;

    /* renamed from: e, reason: collision with root package name */
    public static final q f7193e;
    public static final o f;

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ r[] f7194g;

    static {
        p pVar = new p();
        f7191c = pVar;
        n nVar = new n();
        f7192d = nVar;
        q qVar = new q();
        f7193e = qVar;
        o oVar = new o();
        f = oVar;
        f7194g = new r[]{pVar, nVar, qVar, oVar};
    }

    public static r b(Z z4) {
        d3.i.e("<this>", z4);
        if (z4.K0()) {
            return f7192d;
        }
        if (z4 instanceof C0460m) {
        }
        return AbstractC0450c.f(AbstractC0420a.i(false, true, e.f7171d, null, null, 24), AbstractC0450c.k(z4), H.f7021b) ? f : f7193e;
    }

    public static r valueOf(String str) {
        return (r) Enum.valueOf(r.class, str);
    }

    public static r[] values() {
        return (r[]) f7194g.clone();
    }

    public abstract r a(Z z4);
}
