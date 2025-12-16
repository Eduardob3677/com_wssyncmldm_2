package i3;

import c3.InterfaceC0222b;
import java.lang.reflect.Type;

/* renamed from: i3.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0498s extends d3.h implements InterfaceC0222b {

    /* renamed from: l, reason: collision with root package name */
    public static final C0498s f7156l = new C0498s(x.class, "typeToString", "typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;", 1);

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        Type type = (Type) obj;
        d3.i.e("p0", type);
        return x.b(type);
    }
}
