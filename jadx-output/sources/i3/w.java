package i3;

import c3.InterfaceC0222b;

/* loaded from: classes.dex */
public final /* synthetic */ class w extends d3.h implements InterfaceC0222b {

    /* renamed from: l, reason: collision with root package name */
    public static final w f7162l = new w(Class.class, "getComponentType", "getComponentType()Ljava/lang/Class;", 0);

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        Class cls = (Class) obj;
        d3.i.e("p0", cls);
        return cls.getComponentType();
    }
}
