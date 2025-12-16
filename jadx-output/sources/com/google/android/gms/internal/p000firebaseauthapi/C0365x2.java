package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.x2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0365x2 {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f5774b = Logger.getLogger(C0365x2.class.getName());

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayList f5775c;

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f5776d;

    /* renamed from: e, reason: collision with root package name */
    public static final C0365x2 f5777e;
    public static final C0365x2 f;

    /* renamed from: g, reason: collision with root package name */
    public static final C0365x2 f5778g;

    /* renamed from: h, reason: collision with root package name */
    public static final C0365x2 f5779h;

    /* renamed from: i, reason: collision with root package name */
    public static final C0365x2 f5780i;

    /* renamed from: a, reason: collision with root package name */
    public final M f5781a;

    static {
        if (AbstractC0332s.u()) {
            String[] strArr = {"GmsCore_OpenSSL", "AndroidOpenSSL"};
            ArrayList arrayList = new ArrayList();
            for (int i5 = 0; i5 < 2; i5++) {
                String str = strArr[i5];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    f5774b.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", f.v("Provider ", str, " not available"));
                }
            }
            f5775c = arrayList;
            f5776d = true;
        } else {
            f5775c = new ArrayList();
            f5776d = true;
        }
        f5777e = new C0365x2(new M(4));
        f = new C0365x2(new M(8));
        f5778g = new C0365x2(new M(5));
        f5779h = new C0365x2(new M(7));
        f5780i = new C0365x2(new M(6));
    }

    public C0365x2(M m5) {
        this.f5781a = m5;
    }

    public final Object a(String str) throws GeneralSecurityException {
        Iterator it = f5775c.iterator();
        Exception exc = null;
        while (true) {
            boolean zHasNext = it.hasNext();
            M m5 = this.f5781a;
            if (!zHasNext) {
                if (f5776d) {
                    return m5.b(str, null);
                }
                throw new GeneralSecurityException("No good Provider found.", exc);
            }
            try {
                return m5.b(str, (Provider) it.next());
            } catch (Exception e5) {
                if (exc == null) {
                    exc = e5;
                }
            }
        }
    }
}
