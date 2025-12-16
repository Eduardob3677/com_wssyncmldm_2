package s3;

import f1.AbstractC0420a;
import h4.AbstractC0468v;
import java.util.Map;
import o3.AbstractC0732i;
import r3.InterfaceC0786N;

/* renamed from: s3.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0847j implements InterfaceC0839b {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0732i f9044a;

    /* renamed from: b, reason: collision with root package name */
    public final Q3.c f9045b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f9046c;

    /* renamed from: d, reason: collision with root package name */
    public final Q2.c f9047d;

    public C0847j(AbstractC0732i abstractC0732i, Q3.c cVar, Map map) {
        d3.i.e("fqName", cVar);
        this.f9044a = abstractC0732i;
        this.f9045b = cVar;
        this.f9046c = map;
        this.f9047d = AbstractC0420a.U(2, new B3.k(29, this));
    }

    @Override // s3.InterfaceC0839b
    public final Q3.c a() {
        return this.f9045b;
    }

    @Override // s3.InterfaceC0839b
    public final Map b() {
        return this.f9046c;
    }

    @Override // s3.InterfaceC0839b
    public final AbstractC0468v e() {
        Object value = this.f9047d.getValue();
        d3.i.d("<get-type>(...)", value);
        return (AbstractC0468v) value;
    }

    @Override // s3.InterfaceC0839b
    public final InterfaceC0786N m() {
        return InterfaceC0786N.f8790a;
    }
}
