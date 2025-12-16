package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import com.samsung.android.knox.custom.CustomDeviceManager;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public abstract class L {

    /* renamed from: a, reason: collision with root package name */
    public static final Unsafe f5412a;

    /* renamed from: b, reason: collision with root package name */
    public static final Class f5413b;

    /* renamed from: c, reason: collision with root package name */
    public static final K f5414c;

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f5415d;

    /* renamed from: e, reason: collision with root package name */
    public static final boolean f5416e;
    public static final long f;

    /* renamed from: g, reason: collision with root package name */
    public static final boolean f5417g;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x013d A[PHI: r2
      0x013d: PHI (r2v23 java.lang.reflect.Field) = (r2v17 java.lang.reflect.Field), (r2v19 java.lang.reflect.Field) binds: [B:47:0x012b, B:53:0x013b] A[DONT_GENERATE, DONT_INLINE]] */
    static {
        J j3;
        Unsafe unsafe;
        Field declaredField;
        boolean z4;
        Unsafe unsafe2;
        boolean z5;
        Field declaredField2;
        K k5;
        Object[] objArr = 0;
        int i5 = 1;
        Unsafe unsafeJ = j();
        f5412a = unsafeJ;
        f5413b = W4.a();
        Class cls = Long.TYPE;
        boolean zU = u(cls);
        boolean zU2 = u(Integer.TYPE);
        Field field = null;
        if (unsafeJ != null) {
            j3 = zU ? new J(unsafeJ, i5) : zU2 ? new J(unsafeJ, objArr == true ? 1 : 0) : null;
        }
        f5414c = j3;
        if (j3 != null && (unsafe = j3.f5399a) != null) {
            try {
                Class<?> cls2 = unsafe.getClass();
                cls2.getMethod("objectFieldOffset", Field.class);
                cls2.getMethod("getLong", Object.class, cls);
                try {
                    declaredField = Buffer.class.getDeclaredField("effectiveDirectAddress");
                } catch (Throwable unused) {
                    declaredField = null;
                }
                if (declaredField == null) {
                    try {
                        declaredField = Buffer.class.getDeclaredField("address");
                    } catch (Throwable unused2) {
                        declaredField = null;
                    }
                    if (declaredField != null) {
                        if (declaredField.getType() != Long.TYPE) {
                            declaredField = null;
                        }
                    }
                }
            } catch (Throwable th) {
                k(th);
            }
            z4 = declaredField != null;
        }
        f5415d = z4;
        K k6 = f5414c;
        if (k6 == null || (unsafe2 = k6.f5399a) == null) {
            z5 = false;
        } else {
            try {
                Class<?> cls3 = unsafe2.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("arrayBaseOffset", Class.class);
                cls3.getMethod("arrayIndexScale", Class.class);
                Class cls4 = Long.TYPE;
                cls3.getMethod("getInt", Object.class, cls4);
                cls3.getMethod("putInt", Object.class, cls4, Integer.TYPE);
                cls3.getMethod("getLong", Object.class, cls4);
                cls3.getMethod("putLong", Object.class, cls4, cls4);
                cls3.getMethod("getObject", Object.class, cls4);
                cls3.getMethod("putObject", Object.class, cls4, Object.class);
                z5 = true;
            } catch (Throwable th2) {
                k(th2);
            }
        }
        f5416e = z5;
        f = w(byte[].class);
        w(boolean[].class);
        a(boolean[].class);
        w(int[].class);
        a(int[].class);
        w(long[].class);
        a(long[].class);
        w(float[].class);
        a(float[].class);
        w(double[].class);
        a(double[].class);
        w(Object[].class);
        a(Object[].class);
        int i6 = W4.f5485a;
        try {
            declaredField2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
        } catch (Throwable unused3) {
            declaredField2 = null;
        }
        if (declaredField2 == null) {
            try {
                declaredField2 = Buffer.class.getDeclaredField("address");
            } catch (Throwable unused4) {
                declaredField2 = null;
            }
            if (declaredField2 != null && declaredField2.getType() == Long.TYPE) {
                field = declaredField2;
            }
        }
        if (field != null && (k5 = f5414c) != null) {
            k5.l(field);
        }
        f5417g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static void a(Class cls) {
        if (f5416e) {
            f5414c.i(cls);
        }
    }

    public static void b(Object obj, long j3, byte b3) {
        long j5 = (-4) & j3;
        K k5 = f5414c;
        int iJ = k5.j(j5, obj);
        int i5 = ((~((int) j3)) & 3) << 3;
        k5.n(((255 & b3) << i5) | (iJ & (~(CustomDeviceManager.CALL_SCREEN_ALL << i5))), j5, obj);
    }

    public static void c(Object obj, long j3, byte b3) {
        long j5 = (-4) & j3;
        K k5 = f5414c;
        int i5 = (((int) j3) & 3) << 3;
        k5.n(((255 & b3) << i5) | (k5.j(j5, obj) & (~(CustomDeviceManager.CALL_SCREEN_ALL << i5))), j5, obj);
    }

    public static double d(long j3, Object obj) {
        return f5414c.a(j3, obj);
    }

    public static float e(long j3, Object obj) {
        return f5414c.b(j3, obj);
    }

    public static int f(long j3, Object obj) {
        return f5414c.j(j3, obj);
    }

    public static long g(long j3, Object obj) {
        return f5414c.k(j3, obj);
    }

    public static Object h(Class cls) {
        try {
            return f5412a.allocateInstance(cls);
        } catch (InstantiationException e5) {
            throw new IllegalStateException(e5);
        }
    }

    public static Object i(long j3, Object obj) {
        return f5414c.m(j3, obj);
    }

    public static Unsafe j() {
        try {
            return (Unsafe) AccessController.doPrivileged(new I());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* synthetic */ void k(Throwable th) {
        Logger logger = Logger.getLogger(L.class.getName());
        Level level = Level.WARNING;
        String strValueOf = String.valueOf(th);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", f.w(new StringBuilder(strValueOf.length() + 71), "platform method missing - proto runtime falling back to safer methods: ", strValueOf));
    }

    public static void l(Object obj, long j3, boolean z4) {
        f5414c.c(obj, j3, z4);
    }

    public static void m(byte[] bArr, long j3, byte b3) {
        f5414c.d(bArr, f + j3, b3);
    }

    public static void n(Object obj, long j3, double d2) {
        f5414c.e(obj, j3, d2);
    }

    public static void o(Object obj, long j3, float f5) {
        f5414c.f(obj, j3, f5);
    }

    public static void p(int i5, long j3, Object obj) {
        f5414c.n(i5, j3, obj);
    }

    public static void q(Object obj, long j3, long j5) {
        f5414c.o(obj, j3, j5);
    }

    public static void r(long j3, Object obj, Object obj2) {
        f5414c.p(j3, obj, obj2);
    }

    public static /* synthetic */ boolean s(long j3, Object obj) {
        return ((byte) ((f5414c.j((-4) & j3, obj) >>> ((int) (((~j3) & 3) << 3))) & CustomDeviceManager.CALL_SCREEN_ALL)) != 0;
    }

    public static /* synthetic */ boolean t(long j3, Object obj) {
        return ((byte) ((f5414c.j((-4) & j3, obj) >>> ((int) ((j3 & 3) << 3))) & CustomDeviceManager.CALL_SCREEN_ALL)) != 0;
    }

    public static boolean u(Class cls) {
        int i5 = W4.f5485a;
        try {
            Class cls2 = f5413b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean v(long j3, Object obj) {
        return f5414c.g(j3, obj);
    }

    public static int w(Class cls) {
        if (f5416e) {
            return f5414c.h(cls);
        }
        return -1;
    }
}
