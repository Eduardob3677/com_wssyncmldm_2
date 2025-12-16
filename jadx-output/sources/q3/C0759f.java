package q3;

import c3.InterfaceC0222b;
import java.util.ArrayList;
import java.util.List;
import r3.InterfaceC0821x;
import u3.y;

/* renamed from: q3.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0759f extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public static final C0759f f8658d = new C0759f(1);

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        InterfaceC0821x interfaceC0821x = (InterfaceC0821x) obj;
        d3.i.e("module", interfaceC0821x);
        List list = (List) Z0.j.N(((y) interfaceC0821x.a0(C0760g.f)).f9514g, y.f9512j[0]);
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (obj2 instanceof e4.c) {
                arrayList.add(obj2);
            }
        }
        return (e4.c) R2.m.M0(arrayList);
    }
}
