package R3;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: R3.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0094p {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0080b f2410a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f2411b;

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0080b f2412c;

    /* renamed from: d, reason: collision with root package name */
    public final C0093o f2413d;

    /* renamed from: e, reason: collision with root package name */
    public final Method f2414e;

    public C0094p(AbstractC0092n abstractC0092n, Object obj, AbstractC0095q abstractC0095q, C0093o c0093o, Class cls) {
        if (abstractC0092n == null) {
            throw new IllegalArgumentException("Null containingTypeDefaultInstance");
        }
        if (c0093o.f2408d == T.f2362h && abstractC0095q == null) {
            throw new IllegalArgumentException("Null messageDefaultInstance");
        }
        this.f2410a = abstractC0092n;
        this.f2411b = obj;
        this.f2412c = abstractC0095q;
        this.f2413d = c0093o;
        if (!r.class.isAssignableFrom(cls)) {
            this.f2414e = null;
            return;
        }
        try {
            this.f2414e = cls.getMethod("valueOf", Integer.TYPE);
        } catch (NoSuchMethodException e5) {
            String name = cls.getName();
            StringBuilder sb = new StringBuilder(name.length() + 52);
            sb.append("Generated message class \"");
            sb.append(name);
            sb.append("\" missing method \"valueOf\".");
            throw new RuntimeException(sb.toString(), e5);
        }
    }

    public final Object a(Object obj) {
        if (this.f2413d.f2408d.f2365c != U.ENUM) {
            return obj;
        }
        try {
            return this.f2414e.invoke(null, (Integer) obj);
        } catch (IllegalAccessException e5) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e5);
        } catch (InvocationTargetException e6) {
            Throwable cause = e6.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public final Object b(Object obj) {
        return this.f2413d.f2408d.f2365c == U.ENUM ? Integer.valueOf(((r) obj).a()) : obj;
    }
}
