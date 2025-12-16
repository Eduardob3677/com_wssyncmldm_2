package B3;

import T3.n;
import f1.AbstractC0420a;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import r3.InterfaceC0800c;

/* loaded from: classes.dex */
public final class b extends AbstractC0420a {
    public final /* synthetic */ d4.k f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Set f222g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f223h;

    public b(d4.k kVar, LinkedHashSet linkedHashSet, boolean z4) {
        this.f = kVar;
        this.f222g = linkedHashSet;
        this.f223h = z4;
    }

    public static /* synthetic */ void x0(int i5) {
        Object[] objArr = new Object[3];
        if (i5 == 1) {
            objArr[0] = "fromSuper";
        } else if (i5 == 2) {
            objArr[0] = "fromCurrent";
        } else if (i5 == 3) {
            objArr[0] = "member";
        } else if (i5 != 4) {
            objArr[0] = "fakeOverride";
        } else {
            objArr[0] = "overridden";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1";
        if (i5 == 1 || i5 == 2) {
            objArr[2] = "conflict";
        } else if (i5 == 3 || i5 == 4) {
            objArr[2] = "setOverriddenDescriptors";
        } else {
            objArr[2] = "addFakeOverride";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    @Override // f1.AbstractC0420a
    public final void a(InterfaceC0800c interfaceC0800c) {
        if (interfaceC0800c == null) {
            x0(0);
            throw null;
        }
        n.r(interfaceC0800c, new a(0, this));
        this.f222g.add(interfaceC0800c);
    }

    @Override // f1.AbstractC0420a
    public final void d(InterfaceC0800c interfaceC0800c, InterfaceC0800c interfaceC0800c2) {
        if (interfaceC0800c2 != null) {
            return;
        }
        x0(2);
        throw null;
    }

    @Override // f1.AbstractC0420a
    public final void l0(InterfaceC0800c interfaceC0800c, Collection collection) {
        if (interfaceC0800c == null) {
            x0(3);
            throw null;
        }
        if (!this.f223h || interfaceC0800c.k0() == 2) {
            interfaceC0800c.M(collection);
        }
    }
}
