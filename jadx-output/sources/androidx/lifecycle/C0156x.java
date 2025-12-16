package androidx.lifecycle;

/* renamed from: androidx.lifecycle.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0156x {

    /* renamed from: a, reason: collision with root package name */
    public EnumC0150q f4069a;

    /* renamed from: b, reason: collision with root package name */
    public InterfaceC0153u f4070b;

    public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) {
        EnumC0150q enumC0150qA = enumC0149p.a();
        EnumC0150q enumC0150q = this.f4069a;
        d3.i.e("state1", enumC0150q);
        if (enumC0150qA.compareTo(enumC0150q) < 0) {
            enumC0150q = enumC0150qA;
        }
        this.f4069a = enumC0150q;
        this.f4070b.a(interfaceC0155w, enumC0149p);
        this.f4069a = enumC0150qA;
    }
}
