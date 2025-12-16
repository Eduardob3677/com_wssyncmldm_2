package b2;

import android.content.Context;
import android.util.Log;
import com.idm.providers.mo.IDMMoInterface;
import h0.AbstractC0432c;
import java.lang.reflect.InvocationTargetException;
import k2.InterfaceC0638a;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements InterfaceC0638a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5121a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5122b;

    public /* synthetic */ e(int i5, Object obj) {
        this.f5121a = i5;
        this.f5122b = obj;
    }

    @Override // k2.InterfaceC0638a
    public final Object get() throws ClassNotFoundException {
        i2.d dVar;
        int i5 = this.f5121a;
        Object obj = this.f5122b;
        switch (i5) {
            case 0:
                String str = (String) obj;
                try {
                    Class<?> cls = Class.forName(str);
                    if (g.class.isAssignableFrom(cls)) {
                        return (g) cls.getDeclaredConstructor(null).newInstance(null);
                    }
                    throw new o("Class " + str + " is not an instance of com.google.firebase.components.ComponentRegistrar");
                } catch (ClassNotFoundException unused) {
                    Log.w("ComponentDiscovery", "Class " + str + " is not an found.");
                    return null;
                } catch (IllegalAccessException e5) {
                    throw new o(B.f.v("Could not instantiate ", str, IDMMoInterface.IDM_MO_ROOT_PATH), e5);
                } catch (InstantiationException e6) {
                    throw new o(B.f.v("Could not instantiate ", str, IDMMoInterface.IDM_MO_ROOT_PATH), e6);
                } catch (NoSuchMethodException e7) {
                    throw new o(AbstractC0432c.i("Could not instantiate ", str), e7);
                } catch (InvocationTargetException e8) {
                    throw new o(AbstractC0432c.i("Could not instantiate ", str), e8);
                }
            case 1:
                return (g) obj;
            default:
                Context context = (Context) obj;
                i2.d dVar2 = i2.d.f7148b;
                synchronized (i2.d.class) {
                    try {
                        if (i2.d.f7148b == null) {
                            i2.d.f7148b = new i2.d(context);
                        }
                        dVar = i2.d.f7148b;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return dVar;
        }
    }
}
