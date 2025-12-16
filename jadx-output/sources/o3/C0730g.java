package o3;

import c3.InterfaceC0221a;
import h4.AbstractC0472z;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;

/* renamed from: o3.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0730g implements InterfaceC0221a {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8450c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AbstractC0732i f8451d;

    public /* synthetic */ C0730g(AbstractC0732i abstractC0732i, int i5) {
        this.f8450c = i5;
        this.f8451d = abstractC0732i;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        AbstractC0732i abstractC0732i = this.f8451d;
        switch (this.f8450c) {
            case 0:
                return Arrays.asList(abstractC0732i.k().a0(n.f8538j), abstractC0732i.k().a0(n.f8540l), abstractC0732i.k().a0(n.f8541m), abstractC0732i.k().a0(n.f8539k));
            default:
                EnumMap enumMap = new EnumMap(EnumC0734k.class);
                HashMap map = new HashMap();
                HashMap map2 = new HashMap();
                for (EnumC0734k enumC0734k : EnumC0734k.values()) {
                    String strB = enumC0734k.f8470c.b();
                    if (strB == null) {
                        abstractC0732i.getClass();
                        AbstractC0732i.a(46);
                        throw null;
                    }
                    AbstractC0472z abstractC0472zQ = abstractC0732i.j(strB).q();
                    if (abstractC0472zQ == null) {
                        AbstractC0732i.a(47);
                        throw null;
                    }
                    String strB2 = enumC0734k.f8471d.b();
                    if (strB2 == null) {
                        AbstractC0732i.a(46);
                        throw null;
                    }
                    AbstractC0472z abstractC0472zQ2 = abstractC0732i.j(strB2).q();
                    if (abstractC0472zQ2 == null) {
                        AbstractC0732i.a(47);
                        throw null;
                    }
                    enumMap.put((EnumMap) enumC0734k, (EnumC0734k) abstractC0472zQ2);
                    map.put(abstractC0472zQ, abstractC0472zQ2);
                    map2.put(abstractC0472zQ2, abstractC0472zQ);
                }
                return new C0731h(enumMap, map, map2);
        }
    }
}
