package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class Z implements b0 {

    /* renamed from: c, reason: collision with root package name */
    public static final Z f4046c = new Z();

    /* renamed from: d, reason: collision with root package name */
    public static final Z f4047d = new Z();

    /* renamed from: e, reason: collision with root package name */
    public static Z f4048e;

    @Override // androidx.lifecycle.b0
    public Y a(Class cls) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        try {
            Object objNewInstance = cls.getDeclaredConstructor(null).newInstance(null);
            d3.i.d("{\n                modelC…wInstance()\n            }", objNewInstance);
            return (Y) objNewInstance;
        } catch (IllegalAccessException e5) {
            throw new RuntimeException("Cannot create an instance of " + cls, e5);
        } catch (InstantiationException e6) {
            throw new RuntimeException("Cannot create an instance of " + cls, e6);
        } catch (NoSuchMethodException e7) {
            throw new RuntimeException("Cannot create an instance of " + cls, e7);
        }
    }
}
