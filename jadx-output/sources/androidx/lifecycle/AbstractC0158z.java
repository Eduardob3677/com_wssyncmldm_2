package androidx.lifecycle;

import com.idm.providers.mo.IDMMoInterface;
import f1.AbstractC0420a;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

/* renamed from: androidx.lifecycle.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0158z {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f4078a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f4079b = new HashMap();

    public static void a(Constructor constructor, Object obj) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        try {
            Object objNewInstance = constructor.newInstance(obj);
            d3.i.d("{\n            constructo…tance(`object`)\n        }", objNewInstance);
            B.f.C(objNewInstance);
            throw null;
        } catch (IllegalAccessException e5) {
            throw new RuntimeException(e5);
        } catch (InstantiationException e6) {
            throw new RuntimeException(e6);
        } catch (InvocationTargetException e7) {
            throw new RuntimeException(e7);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0149 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int b(Class cls) throws NoSuchMethodException, SecurityException {
        Constructor<?> declaredConstructor;
        boolean zBooleanValue;
        int length;
        int i5;
        HashMap map = f4078a;
        Integer num = (Integer) map.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int i6 = 1;
        if (cls.getCanonicalName() != null) {
            ArrayList arrayList = null;
            try {
                Package r32 = cls.getPackage();
                String canonicalName = cls.getCanonicalName();
                String name = r32 != null ? r32.getName() : "";
                d3.i.d("fullPackage", name);
                if (name.length() != 0) {
                    d3.i.d("name", canonicalName);
                    canonicalName = canonicalName.substring(name.length() + 1);
                    d3.i.d("this as java.lang.String).substring(startIndex)", canonicalName);
                }
                d3.i.d("if (fullPackage.isEmpty(…g(fullPackage.length + 1)", canonicalName);
                String strConcat = s4.h.r(canonicalName, IDMMoInterface.IDM_MO_ROOT_PATH, "_").concat("_LifecycleAdapter");
                if (name.length() != 0) {
                    strConcat = name + '.' + strConcat;
                }
                declaredConstructor = Class.forName(strConcat).getDeclaredConstructor(cls);
                if (!declaredConstructor.isAccessible()) {
                    declaredConstructor.setAccessible(true);
                }
            } catch (ClassNotFoundException unused) {
                declaredConstructor = null;
            } catch (NoSuchMethodException e5) {
                throw new RuntimeException(e5);
            }
            HashMap map2 = f4079b;
            if (declaredConstructor != null) {
                map2.put(cls, AbstractC0420a.V(declaredConstructor));
            } else {
                C0137d c0137d = C0137d.f4055c;
                HashMap map3 = c0137d.f4057b;
                Boolean bool = (Boolean) map3.get(cls);
                if (bool != null) {
                    zBooleanValue = bool.booleanValue();
                } else {
                    try {
                        Method[] declaredMethods = cls.getDeclaredMethods();
                        int length2 = declaredMethods.length;
                        int i7 = 0;
                        while (true) {
                            if (i7 >= length2) {
                                map3.put(cls, Boolean.FALSE);
                                zBooleanValue = false;
                                break;
                            }
                            if (((H) declaredMethods[i7].getAnnotation(H.class)) != null) {
                                c0137d.a(cls, declaredMethods);
                                zBooleanValue = true;
                                break;
                            }
                            i7++;
                        }
                    } catch (NoClassDefFoundError e6) {
                        throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e6);
                    }
                }
                if (!zBooleanValue) {
                    Class superclass = cls.getSuperclass();
                    if (superclass != null && InterfaceC0154v.class.isAssignableFrom(superclass)) {
                        d3.i.d("superclass", superclass);
                        if (b(superclass) != 1) {
                            Object obj = map2.get(superclass);
                            d3.i.b(obj);
                            arrayList = new ArrayList((Collection) obj);
                            Class<?>[] interfaces = cls.getInterfaces();
                            d3.i.d("klass.interfaces", interfaces);
                            length = interfaces.length;
                            i5 = 0;
                            while (true) {
                                if (i5 < length) {
                                    Class<?> cls2 = interfaces[i5];
                                    if (cls2 != null && InterfaceC0154v.class.isAssignableFrom(cls2)) {
                                        d3.i.d("intrface", cls2);
                                        if (b(cls2) == 1) {
                                            break;
                                        }
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                        }
                                        Object obj2 = map2.get(cls2);
                                        d3.i.b(obj2);
                                        arrayList.addAll((Collection) obj2);
                                    }
                                    i5++;
                                } else if (arrayList != null) {
                                    map2.put(cls, arrayList);
                                }
                            }
                        }
                    } else {
                        Class<?>[] interfaces2 = cls.getInterfaces();
                        d3.i.d("klass.interfaces", interfaces2);
                        length = interfaces2.length;
                        i5 = 0;
                        while (true) {
                            if (i5 < length) {
                            }
                            i5++;
                        }
                    }
                }
            }
            i6 = 2;
        }
        map.put(cls, Integer.valueOf(i6));
        return i6;
    }
}
