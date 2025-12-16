package T3;

import c3.InterfaceC0222b;
import com.samsung.android.knox.ex.KnoxContract;
import f1.AbstractC0420a;
import r3.InterfaceC0800c;

/* loaded from: classes.dex */
public final class l implements InterfaceC0222b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractC0420a f2730c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0800c f2731d;

    public l(AbstractC0420a abstractC0420a, InterfaceC0800c interfaceC0800c) {
        this.f2730c = abstractC0420a;
        this.f2731d = interfaceC0800c;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        InterfaceC0800c interfaceC0800c = (InterfaceC0800c) obj;
        AbstractC0420a abstractC0420a = this.f2730c;
        abstractC0420a.getClass();
        InterfaceC0800c interfaceC0800c2 = this.f2731d;
        d3.i.e("first", interfaceC0800c2);
        d3.i.e(KnoxContract.Config.DateTime.PARAM_SECOND, interfaceC0800c);
        abstractC0420a.d(interfaceC0800c2, interfaceC0800c);
        return Q2.k.f2225a;
    }
}
