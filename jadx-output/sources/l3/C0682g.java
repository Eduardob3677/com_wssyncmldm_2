package l3;

import java.lang.reflect.Constructor;

/* renamed from: l3.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0682g extends r0 {

    /* renamed from: d, reason: collision with root package name */
    public final Constructor f8168d;

    public C0682g(Constructor constructor) {
        d3.i.e("constructor", constructor);
        this.f8168d = constructor;
    }

    @Override // l3.r0
    public final String e() {
        Class<?>[] parameterTypes = this.f8168d.getParameterTypes();
        d3.i.d("constructor.parameterTypes", parameterTypes);
        return R2.i.s0(parameterTypes, "<init>(", ")V", C0672b.f8150h);
    }
}
