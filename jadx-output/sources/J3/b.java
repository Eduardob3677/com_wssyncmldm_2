package J3;

import c3.InterfaceC0223c;

/* loaded from: classes.dex */
public final class b extends d3.k implements InterfaceC0223c {

    /* renamed from: e, reason: collision with root package name */
    public static final b f1135e = new b(2, 0);
    public static final b f = new b(2, 1);

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1136d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(int i5, int i6) {
        super(i5);
        this.f1136d = i6;
    }

    @Override // c3.InterfaceC0223c
    public final Object d(Object obj, Object obj2) {
        switch (this.f1136d) {
            case 0:
                a aVar = (a) obj;
                r rVar = (r) obj2;
                d3.i.e("$this$loadConstantFromProperty", aVar);
                d3.i.e("it", rVar);
                return aVar.f1134c.get(rVar);
            default:
                a aVar2 = (a) obj;
                r rVar2 = (r) obj2;
                d3.i.e("$this$loadConstantFromProperty", aVar2);
                d3.i.e("it", rVar2);
                return aVar2.f1133b.get(rVar2);
        }
    }
}
