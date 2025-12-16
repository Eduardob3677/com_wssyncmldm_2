package androidx.lifecycle;

import java.lang.reflect.Method;

/* renamed from: androidx.lifecycle.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0136c {

    /* renamed from: a, reason: collision with root package name */
    public final int f4052a;

    /* renamed from: b, reason: collision with root package name */
    public final Method f4053b;

    public C0136c(int i5, Method method) throws SecurityException {
        this.f4052a = i5;
        this.f4053b = method;
        method.setAccessible(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0136c)) {
            return false;
        }
        C0136c c0136c = (C0136c) obj;
        return this.f4052a == c0136c.f4052a && this.f4053b.getName().equals(c0136c.f4053b.getName());
    }

    public final int hashCode() {
        return this.f4053b.getName().hashCode() + (this.f4052a * 31);
    }
}
