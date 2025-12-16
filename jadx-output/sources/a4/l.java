package a4;

import c3.InterfaceC0222b;
import r3.InterfaceC0783K;
import r3.InterfaceC0799b;
import u3.N;

/* loaded from: classes.dex */
public final class l extends d3.k implements InterfaceC0222b {

    /* renamed from: e, reason: collision with root package name */
    public static final l f3123e = new l(1, 0);
    public static final l f = new l(1, 1);

    /* renamed from: g, reason: collision with root package name */
    public static final l f3124g = new l(1, 2);

    /* renamed from: h, reason: collision with root package name */
    public static final l f3125h = new l(1, 3);

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f3126d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l(int i5, int i6) {
        super(i5);
        this.f3126d = i6;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f3126d) {
            case 0:
                d3.i.e("it", (Q3.f) obj);
                return Boolean.TRUE;
            case 1:
                InterfaceC0799b interfaceC0799b = (InterfaceC0799b) obj;
                d3.i.e("$this$selectMostSpecificInEachOverridableGroup", interfaceC0799b);
                return interfaceC0799b;
            case 2:
                N n = (N) obj;
                d3.i.e("$this$selectMostSpecificInEachOverridableGroup", n);
                return n;
            default:
                InterfaceC0783K interfaceC0783K = (InterfaceC0783K) obj;
                d3.i.e("$this$selectMostSpecificInEachOverridableGroup", interfaceC0783K);
                return interfaceC0783K;
        }
    }
}
