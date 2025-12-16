package l3;

import c3.InterfaceC0221a;
import java.lang.ref.SoftReference;

/* loaded from: classes.dex */
public final class p0 extends r0 implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC0221a f8211d;

    /* renamed from: e, reason: collision with root package name */
    public volatile SoftReference f8212e;

    public p0(Object obj, InterfaceC0221a interfaceC0221a) {
        if (interfaceC0221a == null) {
            throw new IllegalArgumentException("Argument for @NotNull parameter 'initializer' of kotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal.<init> must not be null");
        }
        this.f8212e = null;
        this.f8211d = interfaceC0221a;
        if (obj != null) {
            this.f8212e = new SoftReference(obj);
        }
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        Object obj;
        SoftReference softReference = this.f8212e;
        Object obj2 = r0.f8218c;
        if (softReference != null && (obj = softReference.get()) != null) {
            if (obj == obj2) {
                return null;
            }
            return obj;
        }
        Object objA = this.f8211d.a();
        if (objA != null) {
            obj2 = objA;
        }
        this.f8212e = new SoftReference(obj2);
        return objA;
    }
}
