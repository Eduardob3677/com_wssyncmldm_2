package x3;

import c3.InterfaceC0222b;
import d3.AbstractC0395g;
import i3.InterfaceC0484e;
import java.lang.reflect.Member;

/* loaded from: classes.dex */
public final /* synthetic */ class j extends AbstractC0395g implements InterfaceC0222b {

    /* renamed from: l, reason: collision with root package name */
    public static final j f9661l = new j(1);

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        Member member = (Member) obj;
        d3.i.e("p0", member);
        return Boolean.valueOf(member.isSynthetic());
    }

    @Override // d3.AbstractC0390b, i3.InterfaceC0481b
    public final String getName() {
        return "isSynthetic";
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0484e j() {
        return d3.q.f6516a.b(Member.class);
    }

    @Override // d3.AbstractC0390b
    public final String l() {
        return "isSynthetic()Z";
    }
}
