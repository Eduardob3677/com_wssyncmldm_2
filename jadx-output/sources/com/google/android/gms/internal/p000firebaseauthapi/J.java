package com.google.android.gms.internal.p000firebaseauthapi;

import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class J extends K {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5395b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ J(Unsafe unsafe, int i5) {
        super(unsafe);
        this.f5395b = i5;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.K
    public final double a(long j3, Object obj) {
        switch (this.f5395b) {
        }
        return Double.longBitsToDouble(k(j3, obj));
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.K
    public final float b(long j3, Object obj) {
        switch (this.f5395b) {
        }
        return Float.intBitsToFloat(j(j3, obj));
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.K
    public final void c(Object obj, long j3, boolean z4) {
        switch (this.f5395b) {
            case 0:
                if (!L.f5417g) {
                    L.c(obj, j3, z4 ? (byte) 1 : (byte) 0);
                    break;
                } else {
                    L.b(obj, j3, z4 ? (byte) 1 : (byte) 0);
                    break;
                }
            default:
                if (!L.f5417g) {
                    L.c(obj, j3, z4 ? (byte) 1 : (byte) 0);
                    break;
                } else {
                    L.b(obj, j3, z4 ? (byte) 1 : (byte) 0);
                    break;
                }
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.K
    public final void d(Object obj, long j3, byte b3) {
        switch (this.f5395b) {
            case 0:
                if (!L.f5417g) {
                    L.c(obj, j3, b3);
                    break;
                } else {
                    L.b(obj, j3, b3);
                    break;
                }
            default:
                if (!L.f5417g) {
                    L.c(obj, j3, b3);
                    break;
                } else {
                    L.b(obj, j3, b3);
                    break;
                }
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.K
    public final void e(Object obj, long j3, double d2) {
        switch (this.f5395b) {
            case 0:
                o(obj, j3, Double.doubleToLongBits(d2));
                break;
            default:
                o(obj, j3, Double.doubleToLongBits(d2));
                break;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.K
    public final void f(Object obj, long j3, float f) {
        switch (this.f5395b) {
            case 0:
                n(Float.floatToIntBits(f), j3, obj);
                break;
            default:
                n(Float.floatToIntBits(f), j3, obj);
                break;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.K
    public final boolean g(long j3, Object obj) {
        switch (this.f5395b) {
            case 0:
                if (!L.f5417g) {
                    break;
                } else {
                    break;
                }
            default:
                if (!L.f5417g) {
                    break;
                } else {
                    break;
                }
        }
        return L.t(j3, obj);
    }
}
