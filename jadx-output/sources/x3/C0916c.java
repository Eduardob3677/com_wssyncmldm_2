package x3;

import c3.InterfaceC0222b;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* renamed from: x3.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0916c extends d3.k implements InterfaceC0222b {

    /* renamed from: e, reason: collision with root package name */
    public static final C0916c f9647e = new C0916c(1, 0);
    public static final C0916c f = new C0916c(1, 1);

    /* renamed from: g, reason: collision with root package name */
    public static final C0916c f9648g = new C0916c(1, 2);

    /* renamed from: h, reason: collision with root package name */
    public static final C0916c f9649h = new C0916c(1, 3);

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f9650d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0916c(int i5, int i6) {
        super(i5);
        this.f9650d = i6;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f9650d) {
            case 0:
                ParameterizedType parameterizedType = (ParameterizedType) obj;
                d3.i.e("it", parameterizedType);
                Type ownerType = parameterizedType.getOwnerType();
                if (ownerType instanceof ParameterizedType) {
                    return (ParameterizedType) ownerType;
                }
                return null;
            case 1:
                ParameterizedType parameterizedType2 = (ParameterizedType) obj;
                d3.i.e("it", parameterizedType2);
                Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
                d3.i.d("it.actualTypeArguments", actualTypeArguments);
                return R2.i.h0(actualTypeArguments);
            case 2:
                return Boolean.valueOf(((Class) obj).getSimpleName().length() == 0);
            default:
                String simpleName = ((Class) obj).getSimpleName();
                if (!Q3.f.f(simpleName)) {
                    simpleName = null;
                }
                if (simpleName != null) {
                    return Q3.f.e(simpleName);
                }
                return null;
        }
    }
}
