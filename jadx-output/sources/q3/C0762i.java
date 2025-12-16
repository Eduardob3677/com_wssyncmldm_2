package q3;

import c3.InterfaceC0221a;
import r3.InterfaceC0821x;
import u3.C0867C;

/* renamed from: q3.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0762i extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0821x f8668d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f8669e = true;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0762i(C0867C c0867c) {
        super(0);
        this.f8668d = c0867c;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        return new C0761h(this.f8668d, this.f8669e);
    }
}
