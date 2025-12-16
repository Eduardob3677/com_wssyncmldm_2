package t3;

import Q3.f;
import R2.u;
import f4.i;
import f4.s;
import java.util.Collection;

/* renamed from: t3.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0857a implements InterfaceC0858b, InterfaceC0860d {

    /* renamed from: b, reason: collision with root package name */
    public static final C0857a f9137b = new C0857a(0);

    /* renamed from: c, reason: collision with root package name */
    public static final C0857a f9138c = new C0857a(1);

    /* renamed from: d, reason: collision with root package name */
    public static final C0857a f9139d = new C0857a(2);

    /* renamed from: e, reason: collision with root package name */
    public static final C0857a f9140e = new C0857a(3);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9141a;

    public /* synthetic */ C0857a(int i5) {
        this.f9141a = i5;
    }

    @Override // t3.InterfaceC0858b
    public Collection a(i iVar) {
        d3.i.e("classDescriptor", iVar);
        return u.f2325c;
    }

    @Override // t3.InterfaceC0858b
    public Collection b(i iVar) {
        return u.f2325c;
    }

    @Override // t3.InterfaceC0858b
    public Collection c(i iVar) {
        d3.i.e("classDescriptor", iVar);
        return u.f2325c;
    }

    @Override // t3.InterfaceC0860d
    public boolean d(i iVar, s sVar) {
        switch (this.f9141a) {
            case 1:
                d3.i.e("classDescriptor", iVar);
                return true;
            default:
                d3.i.e("classDescriptor", iVar);
                return !sVar.t().b(AbstractC0861e.f9142a);
        }
    }

    @Override // t3.InterfaceC0858b
    public Collection e(f fVar, i iVar) {
        d3.i.e("name", fVar);
        d3.i.e("classDescriptor", iVar);
        return u.f2325c;
    }
}
