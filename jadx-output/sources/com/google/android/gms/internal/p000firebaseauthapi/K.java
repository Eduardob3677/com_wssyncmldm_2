package com.google.android.gms.internal.p000firebaseauthapi;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public abstract class K {

    /* renamed from: a, reason: collision with root package name */
    public final Unsafe f5399a;

    public K(Unsafe unsafe) {
        this.f5399a = unsafe;
    }

    public abstract double a(long j3, Object obj);

    public abstract float b(long j3, Object obj);

    public abstract void c(Object obj, long j3, boolean z4);

    public abstract void d(Object obj, long j3, byte b3);

    public abstract void e(Object obj, long j3, double d2);

    public abstract void f(Object obj, long j3, float f);

    public abstract boolean g(long j3, Object obj);

    public final int h(Class cls) {
        return this.f5399a.arrayBaseOffset(cls);
    }

    public final int i(Class cls) {
        return this.f5399a.arrayIndexScale(cls);
    }

    public final int j(long j3, Object obj) {
        return this.f5399a.getInt(obj, j3);
    }

    public final long k(long j3, Object obj) {
        return this.f5399a.getLong(obj, j3);
    }

    public final void l(Field field) {
        this.f5399a.objectFieldOffset(field);
    }

    public final Object m(long j3, Object obj) {
        return this.f5399a.getObject(obj, j3);
    }

    public final void n(int i5, long j3, Object obj) {
        this.f5399a.putInt(obj, j3, i5);
    }

    public final void o(Object obj, long j3, long j5) {
        this.f5399a.putLong(obj, j3, j5);
    }

    public final void p(long j3, Object obj, Object obj2) {
        this.f5399a.putObject(obj, j3, obj2);
    }
}
