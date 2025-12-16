package v3;

import S2.e;
import d3.i;
import r3.C0794W;
import r3.C0797Z;
import r3.a0;
import r3.b0;
import r3.e0;
import r3.f0;

/* renamed from: v3.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0895b extends f0 {

    /* renamed from: c, reason: collision with root package name */
    public static final C0895b f9555c = new C0895b("protected_and_package", true);

    @Override // r3.f0
    public final Integer a(f0 f0Var) {
        i.e("visibility", f0Var);
        if (i.a(this, f0Var)) {
            return 0;
        }
        if (f0Var == C0794W.f8795c) {
            return null;
        }
        e eVar = e0.f8806a;
        return Integer.valueOf((f0Var == C0797Z.f8798c || f0Var == a0.f8799c) ? 1 : -1);
    }

    @Override // r3.f0
    public final String b() {
        return "protected/*protected and package*/";
    }

    @Override // r3.f0
    public final f0 c() {
        return b0.f8800c;
    }
}
