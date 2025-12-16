package androidx.lifecycle;

import android.app.Application;
import f1.AbstractC0420a;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public abstract class W {

    /* renamed from: a, reason: collision with root package name */
    public static final List f4043a = R2.n.y0(Application.class, P.class);

    /* renamed from: b, reason: collision with root package name */
    public static final List f4044b = AbstractC0420a.V(P.class);

    public static final Constructor a(Class cls, List list) throws SecurityException {
        d3.i.e("signature", list);
        Constructor<?>[] constructors = cls.getConstructors();
        d3.i.d("modelClass.constructors", constructors);
        for (Constructor<?> constructor : constructors) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            d3.i.d("constructor.parameterTypes", parameterTypes);
            List listW0 = R2.i.w0(parameterTypes);
            if (d3.i.a(list, listW0)) {
                return constructor;
            }
            if (list.size() == listW0.size() && listW0.containsAll(list)) {
                throw new UnsupportedOperationException("Class " + cls.getSimpleName() + " must have parameters in the proper order: " + list);
            }
        }
        return null;
    }

    public static final Y b(Class cls, Constructor constructor, Object... objArr) {
        try {
            return (Y) constructor.newInstance(Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException e5) {
            throw new RuntimeException("Failed to access " + cls, e5);
        } catch (InstantiationException e6) {
            throw new RuntimeException("A " + cls + " cannot be instantiated.", e6);
        } catch (InvocationTargetException e7) {
            throw new RuntimeException("An exception happened in constructor of " + cls, e7.getCause());
        }
    }
}
