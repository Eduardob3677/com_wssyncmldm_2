package E0;

import android.os.Parcel;
import android.util.SparseIntArray;
import com.idm.providers.mo.IDMMoInterface;
import java.lang.reflect.Method;
import o.C0713b;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final C0713b f509a;

    /* renamed from: b, reason: collision with root package name */
    public final C0713b f510b;

    /* renamed from: c, reason: collision with root package name */
    public final C0713b f511c;

    /* renamed from: e, reason: collision with root package name */
    public final Parcel f513e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f514g;

    /* renamed from: h, reason: collision with root package name */
    public final String f515h;

    /* renamed from: j, reason: collision with root package name */
    public final int f517j;

    /* renamed from: d, reason: collision with root package name */
    public final SparseIntArray f512d = new SparseIntArray();

    /* renamed from: i, reason: collision with root package name */
    public final int f516i = -1;

    public b(Parcel parcel, int i5, int i6, String str, C0713b c0713b, C0713b c0713b2, C0713b c0713b3) {
        this.f509a = c0713b;
        this.f510b = c0713b2;
        this.f511c = c0713b3;
        this.f513e = parcel;
        this.f = i5;
        this.f514g = i6;
        this.f517j = i5;
        this.f515h = str;
    }

    public final Class a(Class cls) throws ClassNotFoundException {
        String name = cls.getName();
        C0713b c0713b = this.f511c;
        Class cls2 = (Class) c0713b.getOrDefault(name, null);
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(cls.getPackage().getName() + IDMMoInterface.IDM_MO_ROOT_PATH + cls.getSimpleName() + "Parcelizer", false, cls.getClassLoader());
        c0713b.put(cls.getName(), cls3);
        return cls3;
    }

    public final Method b(Class cls) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        String name = cls.getName();
        C0713b c0713b = this.f510b;
        Method method = (Method) c0713b.getOrDefault(name, null);
        if (method != null) {
            return method;
        }
        Class clsA = a(cls);
        System.currentTimeMillis();
        Method declaredMethod = clsA.getDeclaredMethod("write", cls, b.class);
        c0713b.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }
}
