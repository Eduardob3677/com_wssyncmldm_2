package h4;

import r3.InterfaceC0789Q;
import r3.InterfaceC0804g;

/* renamed from: h4.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0466t extends S {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0789Q[] f7072b;

    /* renamed from: c, reason: collision with root package name */
    public final N[] f7073c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f7074d;

    public C0466t(InterfaceC0789Q[] interfaceC0789QArr, N[] nArr, boolean z4) {
        d3.i.e("parameters", interfaceC0789QArr);
        d3.i.e("arguments", nArr);
        this.f7072b = interfaceC0789QArr;
        this.f7073c = nArr;
        this.f7074d = z4;
    }

    @Override // h4.S
    public final boolean b() {
        return this.f7074d;
    }

    @Override // h4.S
    public final N d(AbstractC0468v abstractC0468v) {
        InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
        InterfaceC0789Q interfaceC0789Q = interfaceC0804gI instanceof InterfaceC0789Q ? (InterfaceC0789Q) interfaceC0804gI : null;
        if (interfaceC0789Q == null) {
            return null;
        }
        int iZ0 = interfaceC0789Q.z0();
        InterfaceC0789Q[] interfaceC0789QArr = this.f7072b;
        if (iZ0 >= interfaceC0789QArr.length || !d3.i.a(interfaceC0789QArr[iZ0].H(), interfaceC0789Q.H())) {
            return null;
        }
        return this.f7073c[iZ0];
    }

    @Override // h4.S
    public final boolean e() {
        return this.f7073c.length == 0;
    }
}
