package l3;

import com.idm.providers.mo.IDMMoDatabaseConstants;
import i3.InterfaceC0494o;

/* renamed from: l3.O, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0659O extends AbstractC0645A {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f8124g;

    /* renamed from: c, reason: collision with root package name */
    public final p0 f8125c;

    /* renamed from: d, reason: collision with root package name */
    public final p0 f8126d;

    /* renamed from: e, reason: collision with root package name */
    public final q0 f8127e;
    public final q0 f;

    static {
        d3.r rVar = d3.q.f6516a;
        f8124g = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(C0659O.class), "kotlinClass", "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;")), rVar.e(new d3.n(rVar.b(C0659O.class), IDMMoDatabaseConstants.IDM_SCOPE, "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;")), rVar.e(new d3.n(rVar.b(C0659O.class), "multifileFacade", "getMultifileFacade()Ljava/lang/Class;")), rVar.e(new d3.n(rVar.b(C0659O.class), "metadata", "getMetadata()Lkotlin/Triple;")), rVar.e(new d3.n(rVar.b(C0659O.class), "members", "getMembers()Ljava/util/Collection;"))};
    }

    public C0659O(C0661Q c0661q) {
        super(c0661q);
        this.f8125c = r0.j(new C0656L(c0661q, 0));
        this.f8126d = r0.j(new C0658N(this, 1));
        this.f8127e = new q0(new C0657M(this, c0661q));
        this.f = new q0(new C0658N(this, 0));
        r0.j(new C0657M(c0661q, this));
    }
}
