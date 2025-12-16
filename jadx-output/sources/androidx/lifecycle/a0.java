package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class a0 extends Z {

    /* renamed from: g, reason: collision with root package name */
    public static a0 f4049g;
    public final Application f;

    public a0(Application application) {
        this.f = application;
    }

    @Override // androidx.lifecycle.Z, androidx.lifecycle.b0
    public final Y a(Class cls) {
        Application application = this.f;
        if (application != null) {
            return b(cls, application);
        }
        throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
    }

    public final Y b(Class cls, Application application) {
        if (!AbstractC0134a.class.isAssignableFrom(cls)) {
            return super.a(cls);
        }
        try {
            Y y3 = (Y) cls.getConstructor(Application.class).newInstance(application);
            d3.i.d("{\n                try {\n…          }\n            }", y3);
            return y3;
        } catch (IllegalAccessException e5) {
            throw new RuntimeException("Cannot create an instance of " + cls, e5);
        } catch (InstantiationException e6) {
            throw new RuntimeException("Cannot create an instance of " + cls, e6);
        } catch (NoSuchMethodException e7) {
            throw new RuntimeException("Cannot create an instance of " + cls, e7);
        } catch (InvocationTargetException e8) {
            throw new RuntimeException("Cannot create an instance of " + cls, e8);
        }
    }

    @Override // androidx.lifecycle.b0
    public final Y e(Class cls, b0.c cVar) {
        if (this.f != null) {
            return a(cls);
        }
        Application application = (Application) cVar.f5052a.get(Z.f4046c);
        if (application != null) {
            return b(cls, application);
        }
        if (AbstractC0134a.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
        }
        return super.a(cls);
    }
}
