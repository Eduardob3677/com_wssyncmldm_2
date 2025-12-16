package v3;

import S2.e;
import com.idm.fotaagent.restapi.restclient.push.campaign.button.Action;
import d3.i;
import r3.C0797Z;
import r3.a0;
import r3.b0;
import r3.e0;
import r3.f0;

/* renamed from: v3.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0894a extends f0 {

    /* renamed from: c, reason: collision with root package name */
    public static final C0894a f9554c = new C0894a(Action.KEY_PACKAGENAME, false);

    @Override // r3.f0
    public final Integer a(f0 f0Var) {
        i.e("visibility", f0Var);
        if (this == f0Var) {
            return 0;
        }
        e eVar = e0.f8806a;
        return (f0Var == C0797Z.f8798c || f0Var == a0.f8799c) ? 1 : -1;
    }

    @Override // r3.f0
    public final String b() {
        return "public/*package*/";
    }

    @Override // r3.f0
    public final f0 c() {
        return b0.f8800c;
    }
}
