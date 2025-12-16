package X2;

import d3.i;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final b f2866a;

    static {
        b bVar;
        try {
            Object objNewInstance = Z2.b.class.newInstance();
            i.d("forName(\"kotlin.internal…entations\").newInstance()", objNewInstance);
            try {
                try {
                    bVar = (b) objNewInstance;
                } catch (ClassCastException e5) {
                    ClassLoader classLoader = objNewInstance.getClass().getClassLoader();
                    ClassLoader classLoader2 = b.class.getClassLoader();
                    if (i.a(classLoader, classLoader2)) {
                        throw e5;
                    }
                    throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader + ", base type classloader: " + classLoader2, e5);
                }
            } catch (ClassNotFoundException unused) {
                Object objNewInstance2 = Y2.b.class.newInstance();
                i.d("forName(\"kotlin.internal…entations\").newInstance()", objNewInstance2);
                try {
                    try {
                        bVar = (b) objNewInstance2;
                    } catch (ClassNotFoundException unused2) {
                        bVar = new b();
                    }
                } catch (ClassCastException e6) {
                    ClassLoader classLoader3 = objNewInstance2.getClass().getClassLoader();
                    ClassLoader classLoader4 = b.class.getClassLoader();
                    if (i.a(classLoader3, classLoader4)) {
                        throw e6;
                    }
                    throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader3 + ", base type classloader: " + classLoader4, e6);
                }
            }
        } catch (ClassNotFoundException unused3) {
            Object objNewInstance3 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
            i.d("forName(\"kotlin.internal…entations\").newInstance()", objNewInstance3);
            try {
                try {
                    bVar = (b) objNewInstance3;
                } catch (ClassNotFoundException unused4) {
                    Object objNewInstance4 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                    i.d("forName(\"kotlin.internal…entations\").newInstance()", objNewInstance4);
                    try {
                        bVar = (b) objNewInstance4;
                    } catch (ClassCastException e7) {
                        ClassLoader classLoader5 = objNewInstance4.getClass().getClassLoader();
                        ClassLoader classLoader6 = b.class.getClassLoader();
                        if (i.a(classLoader5, classLoader6)) {
                            throw e7;
                        }
                        throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader5 + ", base type classloader: " + classLoader6, e7);
                    }
                }
            } catch (ClassCastException e8) {
                ClassLoader classLoader7 = objNewInstance3.getClass().getClassLoader();
                ClassLoader classLoader8 = b.class.getClassLoader();
                if (i.a(classLoader7, classLoader8)) {
                    throw e8;
                }
                throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader7 + ", base type classloader: " + classLoader8, e8);
            }
        }
        f2866a = bVar;
    }
}
