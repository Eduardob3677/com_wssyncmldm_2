package o3;

import c3.InterfaceC0221a;
import java.util.ServiceLoader;

/* renamed from: o3.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0724a extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public static final C0724a f8444d = new C0724a(0);

    @Override // c3.InterfaceC0221a
    public final Object a() {
        ServiceLoader serviceLoaderLoad = ServiceLoader.load(InterfaceC0726c.class, InterfaceC0726c.class.getClassLoader());
        d3.i.d("implementations", serviceLoaderLoad);
        InterfaceC0726c interfaceC0726c = (InterfaceC0726c) R2.m.N0(serviceLoaderLoad);
        if (interfaceC0726c != null) {
            return interfaceC0726c;
        }
        throw new IllegalStateException("No BuiltInsLoader implementation was found. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager");
    }
}
