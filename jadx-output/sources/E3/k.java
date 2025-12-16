package E3;

import c3.InterfaceC0222b;
import h4.AbstractC0468v;
import java.lang.reflect.Modifier;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import u3.N;

/* loaded from: classes.dex */
public final class k extends d3.k implements InterfaceC0222b {

    /* renamed from: e, reason: collision with root package name */
    public static final k f609e = new k(1, 0);
    public static final k f = new k(1, 1);

    /* renamed from: g, reason: collision with root package name */
    public static final k f610g = new k(1, 2);

    /* renamed from: h, reason: collision with root package name */
    public static final k f611h = new k(1, 3);

    /* renamed from: i, reason: collision with root package name */
    public static final k f612i = new k(1, 4);

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f613d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k(int i5, int i6) {
        super(i5);
        this.f613d = i6;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f613d) {
            case 0:
                d3.i.e("it", (x3.w) obj);
                return Boolean.valueOf(!Modifier.isStatic(r1.a().getModifiers()));
            case 1:
                N n = (N) obj;
                d3.i.e("$this$selectMostSpecificInEachOverridableGroup", n);
                return n;
            case 2:
                x3.w wVar = (x3.w) obj;
                d3.i.e("it", wVar);
                return Boolean.valueOf(Modifier.isStatic(wVar.a().getModifiers()));
            case 3:
                a4.o oVar = (a4.o) obj;
                d3.i.e("it", oVar);
                return oVar.b();
            default:
                InterfaceC0804g interfaceC0804gI = ((AbstractC0468v) obj).J0().i();
                if (interfaceC0804gI instanceof InterfaceC0802e) {
                    return (InterfaceC0802e) interfaceC0804gI;
                }
                return null;
        }
    }
}
