package f4;

import f1.AbstractC0420a;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import r3.C0812o;
import r3.InterfaceC0800c;
import u3.AbstractC0889v;

/* loaded from: classes.dex */
public final class f extends AbstractC0420a {
    public final /* synthetic */ int f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Collection f6843g;

    public /* synthetic */ f(AbstractCollection abstractCollection, int i5) {
        this.f = i5;
        this.f6843g = abstractCollection;
    }

    public static /* synthetic */ void x0(int i5) {
        Object[] objArr = new Object[3];
        if (i5 == 1) {
            objArr[0] = "fromSuper";
        } else if (i5 != 2) {
            objArr[0] = "fakeOverride";
        } else {
            objArr[0] = "fromCurrent";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope$4";
        if (i5 == 1 || i5 == 2) {
            objArr[2] = "conflict";
        } else {
            objArr[2] = "addFakeOverride";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    @Override // f1.AbstractC0420a
    public final void a(InterfaceC0800c interfaceC0800c) {
        switch (this.f) {
            case 0:
                d3.i.e("fakeOverride", interfaceC0800c);
                T3.n.r(interfaceC0800c, null);
                ((List) this.f6843g).add(interfaceC0800c);
                return;
            default:
                if (interfaceC0800c == null) {
                    x0(0);
                    throw null;
                }
                T3.n.r(interfaceC0800c, null);
                ((Set) this.f6843g).add(interfaceC0800c);
                return;
        }
    }

    @Override // f1.AbstractC0420a
    public final void d(InterfaceC0800c interfaceC0800c, InterfaceC0800c interfaceC0800c2) {
        switch (this.f) {
            case 0:
                d3.i.e("fromCurrent", interfaceC0800c2);
                if (interfaceC0800c2 instanceof AbstractC0889v) {
                    ((AbstractC0889v) interfaceC0800c2).X0(C0812o.f8822a, interfaceC0800c);
                    return;
                }
                return;
            default:
                if (interfaceC0800c2 != null) {
                    return;
                }
                x0(2);
                throw null;
        }
    }
}
