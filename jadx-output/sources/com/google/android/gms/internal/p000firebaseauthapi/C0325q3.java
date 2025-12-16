package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import android.os.RemoteException;
import f1.AbstractC0420a;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.q3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0325q3 implements InterfaceC0248d4 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5697c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ G3 f5698d;

    public /* synthetic */ C0325q3(C0303n c0303n, G3 g32, int i5) {
        this.f5697c = i5;
        this.f5698d = g32;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public final void b(String str) {
        switch (this.f5697c) {
            case 0:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 1:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 2:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 3:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 4:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 5:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 6:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 7:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 8:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 9:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 10:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 11:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 12:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 13:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 14:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            case 15:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
            default:
                this.f5698d.b(AbstractC0420a.t0(str));
                break;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public final void k(Y3 y3) {
        switch (this.f5697c) {
            case 0:
                f.B(y3);
                throw null;
            case 1:
                f.B(y3);
                throw null;
            case 2:
                f.B(y3);
                throw null;
            case 3:
                C0320p4 c0320p4 = (C0320p4) y3;
                G3 g32 = this.f5698d;
                g32.getClass();
                try {
                    g32.f5375a.l(c0320p4);
                    return;
                } catch (RemoteException e5) {
                    g32.f5376b.d("RemoteException when sending create auth uri response.", e5, new Object[0]);
                    return;
                }
            case 4:
                f.B(y3);
                this.f5698d.c(null);
                return;
            case 5:
                this.f5698d.c((D4) y3);
                return;
            case 6:
                C0373y4 c0373y4 = (C0373y4) y3;
                G3 g33 = this.f5698d;
                g33.getClass();
                try {
                    g33.f5375a.v(c0373y4);
                    return;
                } catch (RemoteException e6) {
                    g33.f5376b.d("RemoteException when sending token result.", e6, new Object[0]);
                    return;
                }
            case 7:
                this.f5698d.c((D4) y3);
                return;
            case 8:
                f.B(y3);
                throw null;
            case 9:
                f.B(y3);
                throw null;
            case 10:
                f.B(y3);
                throw null;
            case 11:
                f.B(y3);
                throw null;
            case 12:
                f.B(y3);
                throw null;
            case 13:
                f.B(y3);
                G3 g34 = this.f5698d;
                g34.getClass();
                try {
                    g34.f5375a.a();
                    return;
                } catch (RemoteException e7) {
                    g34.f5376b.d("RemoteException when sending email verification response.", e7, new Object[0]);
                    return;
                }
            case 14:
                f.B(y3);
                throw null;
            case 15:
                f.B(y3);
                throw null;
            default:
                f.B(y3);
                throw null;
        }
    }

    public /* synthetic */ C0325q3(G3 g32, int i5) {
        this.f5697c = i5;
        this.f5698d = g32;
    }
}
