package U3;

import B.f;
import d3.i;
import h4.AbstractC0468v;
import h4.N;
import h4.S;
import r3.InterfaceC0789Q;
import r3.InterfaceC0804g;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class d extends S {

    /* renamed from: b, reason: collision with root package name */
    public final S f2752b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f2753c;

    public d(S s5, boolean z4) {
        this.f2753c = z4;
        this.f2752b = s5;
    }

    @Override // h4.S
    public final boolean a() {
        return this.f2752b.a();
    }

    @Override // h4.S
    public final boolean b() {
        return this.f2753c;
    }

    @Override // h4.S
    public final InterfaceC0845h c(InterfaceC0845h interfaceC0845h) {
        i.e("annotations", interfaceC0845h);
        return this.f2752b.c(interfaceC0845h);
    }

    @Override // h4.S
    public final N d(AbstractC0468v abstractC0468v) {
        N nD = this.f2752b.d(abstractC0468v);
        if (nD == null) {
            return null;
        }
        InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
        return L2.b.i(nD, interfaceC0804gI instanceof InterfaceC0789Q ? (InterfaceC0789Q) interfaceC0804gI : null);
    }

    @Override // h4.S
    public final boolean e() {
        return this.f2752b.e();
    }

    @Override // h4.S
    public final AbstractC0468v f(int i5, AbstractC0468v abstractC0468v) {
        i.e("topLevelType", abstractC0468v);
        f.x(i5, "position");
        return this.f2752b.f(i5, abstractC0468v);
    }
}
