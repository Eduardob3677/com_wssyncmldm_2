package l3;

import java.lang.reflect.Method;
import java.util.List;

/* renamed from: l3.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0680f extends r0 {

    /* renamed from: d, reason: collision with root package name */
    public final List f8165d;

    public C0680f(Class cls) throws SecurityException {
        d3.i.e("jClass", cls);
        Method[] declaredMethods = cls.getDeclaredMethods();
        d3.i.d("jClass.declaredMethods", declaredMethods);
        this.f8165d = R2.i.v0(declaredMethods, new F0.b(4));
    }

    @Override // l3.r0
    public final String e() {
        return R2.m.S0(this.f8165d, "", "<init>(", ")V", C0672b.f8149g, 24);
    }
}
