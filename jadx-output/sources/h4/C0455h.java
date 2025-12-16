package h4;

import s3.InterfaceC0845h;

/* renamed from: h4.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0455h {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0845h f7057a;

    public C0455h(InterfaceC0845h interfaceC0845h) {
        d3.i.e("annotations", interfaceC0845h);
        this.f7057a = interfaceC0845h;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0455h) {
            return d3.i.a(((C0455h) obj).f7057a, this.f7057a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7057a.hashCode();
    }
}
