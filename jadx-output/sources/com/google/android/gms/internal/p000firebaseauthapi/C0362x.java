package com.google.android.gms.internal.p000firebaseauthapi;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0362x {

    /* renamed from: c, reason: collision with root package name */
    public static final C0362x f5770c = new C0362x();

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f5772b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final C0303n f5771a = new C0303n();

    public final A a(Class cls) {
        C0338t c0338tF;
        C0344u c0344u;
        Class cls2;
        Charset charset = AbstractC0243d.f5546a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f5772b;
        A a3 = (A) concurrentHashMap.get(cls);
        if (a3 == null) {
            C0303n c0303n = this.f5771a;
            c0303n.getClass();
            Class cls3 = B.f5333a;
            if (!m5.class.isAssignableFrom(cls) && (cls2 = B.f5333a) != null && !cls2.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            }
            C0374z c0374zA = ((C0297m) c0303n.f5655d).a(cls);
            if ((c0374zA.f5794d & 2) == 2) {
                boolean zIsAssignableFrom = m5.class.isAssignableFrom(cls);
                U4 u42 = c0374zA.f5791a;
                if (zIsAssignableFrom) {
                    c0344u = new C0344u(B.f5336d, i5.f5605a, u42);
                } else {
                    E e5 = B.f5334b;
                    h5 h5Var = i5.f5606b;
                    if (h5Var == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    c0344u = new C0344u(e5, h5Var, u42);
                }
                a3 = c0344u;
            } else {
                if (m5.class.isAssignableFrom(cls)) {
                    if (c0374zA.b() == 1) {
                        int i5 = AbstractC0356w.f5764a;
                        c0338tF = C0338t.F(c0374zA, AbstractC0291l.f5637b, B.f5336d, i5.f5605a, AbstractC0321q.f5692b);
                    } else {
                        int i6 = AbstractC0356w.f5764a;
                        c0338tF = C0338t.F(c0374zA, AbstractC0291l.f5637b, B.f5336d, null, AbstractC0321q.f5692b);
                    }
                } else if (c0374zA.b() == 1) {
                    int i7 = AbstractC0356w.f5764a;
                    C0279j c0279j = AbstractC0291l.f5636a;
                    E e6 = B.f5334b;
                    h5 h5Var2 = i5.f5606b;
                    if (h5Var2 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    c0338tF = C0338t.F(c0374zA, c0279j, e6, h5Var2, AbstractC0321q.f5691a);
                } else {
                    int i8 = AbstractC0356w.f5764a;
                    c0338tF = C0338t.F(c0374zA, AbstractC0291l.f5636a, B.f5335c, null, AbstractC0321q.f5691a);
                }
                a3 = c0338tF;
            }
            A a5 = (A) concurrentHashMap.putIfAbsent(cls, a3);
            if (a5 != null) {
                return a5;
            }
        }
        return a3;
    }
}
