package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.j;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class P3 extends AbstractC0225a implements Q3 {
    public P3(IBinder iBinder) {
        super(iBinder, "com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks", 0);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void a() {
        q(s(), 7);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void c(C0373y4 c0373y4, C0355v4 c0355v4) {
        Parcel parcelS = s();
        AbstractC0327r0.b(parcelS, c0373y4);
        AbstractC0327r0.b(parcelS, c0355v4);
        q(parcelS, 2);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void d(String str) {
        Parcel parcelS = s();
        parcelS.writeString(str);
        q(parcelS, 9);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void h() {
        q(s(), 13);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void i(Status status) {
        Parcel parcelS = s();
        AbstractC0327r0.b(parcelS, status);
        q(parcelS, 5);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void l(C0320p4 c0320p4) {
        Parcel parcelS = s();
        AbstractC0327r0.b(parcelS, c0320p4);
        q(parcelS, 3);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void m(D4 d42) {
        Parcel parcelS = s();
        AbstractC0327r0.b(parcelS, d42);
        q(parcelS, 4);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void n(String str) {
        Parcel parcelS = s();
        parcelS.writeString(str);
        q(parcelS, 11);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void p(j jVar) {
        Parcel parcelS = s();
        AbstractC0327r0.b(parcelS, jVar);
        q(parcelS, 10);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void u() {
        q(s(), 6);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void v(C0373y4 c0373y4) {
        Parcel parcelS = s();
        AbstractC0327r0.b(parcelS, c0373y4);
        q(parcelS, 1);
    }
}
