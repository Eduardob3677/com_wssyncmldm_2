package com.google.android.gms.internal.p000firebaseauthapi;

import N3.f;
import Q3.c;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import r3.InterfaceC0786N;
import s2.C0837c;

/* loaded from: classes.dex */
public abstract class X {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5486a = 2;

    /* renamed from: b, reason: collision with root package name */
    public Object f5487b;

    /* renamed from: c, reason: collision with root package name */
    public Object f5488c;

    /* renamed from: d, reason: collision with root package name */
    public Object f5489d;

    public /* synthetic */ X() {
    }

    public static boolean k(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static boolean l(Map map, Collection collection) {
        int size = map.size();
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public abstract void a();

    public abstract Object b(int i5, int i6);

    public abstract Map c();

    public abstract int d();

    public abstract int e(Object obj);

    public abstract int f(Object obj);

    public abstract void g(Object obj, Object obj2);

    public abstract void h(int i5);

    public abstract Object i(int i5, Object obj);

    public abstract c j();

    public Object[] m(Object[] objArr, int i5) {
        int iD = d();
        if (objArr.length < iD) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), iD);
        }
        for (int i6 = 0; i6 < iD; i6++) {
            objArr[i6] = b(i6, i5);
        }
        if (objArr.length > iD) {
            objArr[iD] = null;
        }
        return objArr;
    }

    public C0322q0 n() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }

    public abstract int o();

    public abstract U4 p(Z4 z4);

    public Object q(U4 u42, Class cls) {
        C0316p0 c0316p0 = (C0316p0) ((Map) this.f5489d).get(cls);
        if (c0316p0 != null) {
            return c0316p0.a(u42);
        }
        String canonicalName = cls.getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 41);
        sb.append("Requested primitive class ");
        sb.append(canonicalName);
        sb.append(" not supported.");
        throw new IllegalArgumentException(sb.toString());
    }

    public abstract String r();

    public abstract void s(U4 u42);

    public String toString() {
        switch (this.f5486a) {
            case 1:
                return getClass().getSimpleName() + ": " + j();
            default:
                return super.toString();
        }
    }

    public X(Class cls, C0316p0[] c0316p0Arr) {
        this.f5487b = cls;
        HashMap map = new HashMap();
        for (int i5 = 0; i5 <= 0; i5++) {
            C0316p0 c0316p0 = c0316p0Arr[i5];
            boolean zContainsKey = map.containsKey(c0316p0.f5676a);
            Class cls2 = c0316p0.f5676a;
            if (zContainsKey) {
                String strValueOf = String.valueOf(cls2.getCanonicalName());
                throw new IllegalArgumentException(strValueOf.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(strValueOf) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
            }
            map.put(cls2, c0316p0);
        }
        this.f5488c = c0316p0Arr[0].f5676a;
        this.f5489d = Collections.unmodifiableMap(map);
    }

    public X(f fVar, C0837c c0837c, InterfaceC0786N interfaceC0786N) {
        this.f5487b = fVar;
        this.f5488c = c0837c;
        this.f5489d = interfaceC0786N;
    }
}
