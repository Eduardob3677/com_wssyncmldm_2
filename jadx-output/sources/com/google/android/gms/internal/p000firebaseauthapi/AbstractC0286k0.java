package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import java.nio.charset.Charset;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.k0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0286k0 {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f5626a = 0;

    static {
        Charset.forName("UTF-8");
    }

    public static C0246d2 a(Z1 z12) {
        C0228a2 c0228a2M = C0246d2.m();
        int iN = z12.n();
        if (c0228a2M.f5646e) {
            c0228a2M.d();
            c0228a2M.f5646e = false;
        }
        ((C0246d2) c0228a2M.f5645d).zze = iN;
        for (Y1 y12 : z12.r()) {
            C0234b2 c0234b2N = C0240c2.n();
            String strQ = y12.n().q();
            if (c0234b2N.f5646e) {
                c0234b2N.d();
                c0234b2N.f5646e = false;
            }
            C0240c2.o((C0240c2) c0234b2N.f5645d, strQ);
            int iO = y12.o();
            if (c0234b2N.f5646e) {
                c0234b2N.d();
                c0234b2N.f5646e = false;
            }
            C0240c2.q((C0240c2) c0234b2N.f5645d, iO);
            int iQ = y12.q();
            if (c0234b2N.f5646e) {
                c0234b2N.d();
                c0234b2N.f5646e = false;
            }
            ((C0240c2) c0234b2N.f5645d).zzh = f.b(iQ);
            int iM = y12.m();
            if (c0234b2N.f5646e) {
                c0234b2N.d();
                c0234b2N.f5646e = false;
            }
            ((C0240c2) c0234b2N.f5645d).zzg = iM;
            C0240c2 c0240c2 = (C0240c2) c0234b2N.b();
            if (c0228a2M.f5646e) {
                c0228a2M.d();
                c0228a2M.f5646e = false;
            }
            C0246d2.p((C0246d2) c0228a2M.f5645d, c0240c2);
        }
        return (C0246d2) c0228a2M.b();
    }
}
