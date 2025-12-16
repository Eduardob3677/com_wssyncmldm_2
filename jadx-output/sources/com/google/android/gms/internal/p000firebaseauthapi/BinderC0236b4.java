package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.j;
import Y1.t;
import android.os.Parcel;
import c1.AbstractC0213D;
import com.google.android.gms.common.api.Status;
import f1.AbstractC0420a;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.b4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class BinderC0236b4 extends Z implements Q3 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractC0242c4 f5520b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC0236b4(AbstractC0242c4 abstractC0242c4) {
        super("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks", 0);
        this.f5520b = abstractC0242c4;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void a() {
        AbstractC0242c4 abstractC0242c4 = this.f5520b;
        int i5 = abstractC0242c4.f5531a;
        boolean z4 = i5 == 6;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i5);
        AbstractC0213D.g(sb.toString(), z4);
        AbstractC0242c4.e(abstractC0242c4);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void c(C0373y4 c0373y4, C0355v4 c0355v4) {
        AbstractC0242c4 abstractC0242c4 = this.f5520b;
        int i5 = abstractC0242c4.f5531a;
        boolean z4 = i5 == 2;
        StringBuilder sb = new StringBuilder(37);
        sb.append("Unexpected response type: ");
        sb.append(i5);
        AbstractC0213D.g(sb.toString(), z4);
        abstractC0242c4.f5536g = c0373y4;
        abstractC0242c4.f5537h = c0355v4;
        AbstractC0242c4.e(abstractC0242c4);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void d(String str) {
        int i5 = this.f5520b.f5531a;
        boolean z4 = i5 == 8;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i5);
        AbstractC0213D.g(sb.toString(), z4);
        throw null;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Z
    public final boolean f(int i5, Parcel parcel, Parcel parcel2) {
        boolean z4;
        AbstractC0242c4 abstractC0242c4 = this.f5520b;
        switch (i5) {
            case 1:
                v((C0373y4) AbstractC0327r0.a(parcel, C0373y4.CREATOR));
                return true;
            case 2:
                c((C0373y4) AbstractC0327r0.a(parcel, C0373y4.CREATOR), (C0355v4) AbstractC0327r0.a(parcel, C0355v4.CREATOR));
                return true;
            case 3:
                l((C0320p4) AbstractC0327r0.a(parcel, C0320p4.CREATOR));
                return true;
            case 4:
                m((D4) AbstractC0327r0.a(parcel, D4.CREATOR));
                return true;
            case 5:
                i((Status) AbstractC0327r0.a(parcel, Status.CREATOR));
                return true;
            case 6:
                u();
                return true;
            case 7:
                a();
                return true;
            case 8:
                parcel.readString();
                int i6 = abstractC0242c4.f5531a;
                z4 = i6 == 7;
                StringBuilder sb = new StringBuilder(36);
                sb.append("Unexpected response type ");
                sb.append(i6);
                AbstractC0213D.g(sb.toString(), z4);
                AbstractC0242c4.e(abstractC0242c4);
                return true;
            case 9:
                d(parcel.readString());
                throw null;
            case 10:
                p((j) AbstractC0327r0.a(parcel, j.CREATOR));
                throw null;
            case 11:
                n(parcel.readString());
                throw null;
            case 12:
                Status status = (Status) AbstractC0327r0.a(parcel, Status.CREATOR);
                j jVar = (j) AbstractC0327r0.a(parcel, j.CREATOR);
                int i7 = abstractC0242c4.f5531a;
                z4 = i7 == 2;
                StringBuilder sb2 = new StringBuilder(36);
                sb2.append("Unexpected response type ");
                sb2.append(i7);
                AbstractC0213D.g(sb2.toString(), z4);
                t tVar = abstractC0242c4.f;
                if (tVar != null) {
                    tVar.b(status);
                }
                abstractC0242c4.f5538i = jVar;
                t tVar2 = abstractC0242c4.f;
                if (tVar2 != null) {
                    tVar2.b(status);
                }
                abstractC0242c4.f(status);
                return true;
            case 13:
                h();
                return true;
            case 14:
                C0313o3 c0313o3 = (C0313o3) AbstractC0327r0.a(parcel, C0313o3.CREATOR);
                Status status2 = c0313o3.f5670c;
                t tVar3 = abstractC0242c4.f;
                if (tVar3 != null) {
                    tVar3.b(status2);
                }
                abstractC0242c4.f5538i = c0313o3.f5671d;
                t tVar4 = abstractC0242c4.f;
                if (tVar4 != null) {
                    tVar4.b(status2);
                }
                abstractC0242c4.f(status2);
                return true;
            case 15:
                q((C0319p3) AbstractC0327r0.a(parcel, C0319p3.CREATOR));
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void h() {
        AbstractC0242c4 abstractC0242c4 = this.f5520b;
        int i5 = abstractC0242c4.f5531a;
        boolean z4 = i5 == 9;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i5);
        AbstractC0213D.g(sb.toString(), z4);
        AbstractC0242c4.e(abstractC0242c4);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void i(Status status) {
        String str = status.f5310e;
        if (str != null) {
            if (str.contains("MISSING_MFA_PENDING_CREDENTIAL")) {
                status = new Status(17081, null);
            } else if (str.contains("MISSING_MFA_ENROLLMENT_ID")) {
                status = new Status(17082, null);
            } else if (str.contains("INVALID_MFA_PENDING_CREDENTIAL")) {
                status = new Status(17083, null);
            } else if (str.contains("MFA_ENROLLMENT_NOT_FOUND")) {
                status = new Status(17084, null);
            } else if (str.contains("ADMIN_ONLY_OPERATION")) {
                status = new Status(17085, null);
            } else if (str.contains("UNVERIFIED_EMAIL")) {
                status = new Status(17086, null);
            } else if (str.contains("SECOND_FACTOR_EXISTS")) {
                status = new Status(17087, null);
            } else if (str.contains("SECOND_FACTOR_LIMIT_EXCEEDED")) {
                status = new Status(17088, null);
            } else if (str.contains("UNSUPPORTED_FIRST_FACTOR")) {
                status = new Status(17089, null);
            } else if (str.contains("EMAIL_CHANGE_NEEDS_VERIFICATION")) {
                status = new Status(17090, null);
            }
        }
        AbstractC0242c4 abstractC0242c4 = this.f5520b;
        if (abstractC0242c4.f5531a == 8) {
            abstractC0242c4.f5540k = true;
            throw null;
        }
        t tVar = abstractC0242c4.f;
        if (tVar != null) {
            tVar.b(status);
        }
        abstractC0242c4.f(status);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void l(C0320p4 c0320p4) {
        AbstractC0242c4 abstractC0242c4 = this.f5520b;
        int i5 = abstractC0242c4.f5531a;
        boolean z4 = i5 == 3;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i5);
        AbstractC0213D.g(sb.toString(), z4);
        AbstractC0242c4.e(abstractC0242c4);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void m(D4 d42) {
        AbstractC0242c4 abstractC0242c4 = this.f5520b;
        int i5 = abstractC0242c4.f5531a;
        boolean z4 = i5 == 4;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i5);
        AbstractC0213D.g(sb.toString(), z4);
        AbstractC0242c4.e(abstractC0242c4);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void n(String str) {
        AbstractC0242c4 abstractC0242c4 = this.f5520b;
        int i5 = abstractC0242c4.f5531a;
        boolean z4 = i5 == 8;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i5);
        AbstractC0213D.g(sb.toString(), z4);
        abstractC0242c4.f5540k = true;
        throw null;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void p(j jVar) {
        AbstractC0242c4 abstractC0242c4 = this.f5520b;
        int i5 = abstractC0242c4.f5531a;
        boolean z4 = i5 == 8;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i5);
        AbstractC0213D.g(sb.toString(), z4);
        abstractC0242c4.f5540k = true;
        throw null;
    }

    public final void q(C0319p3 c0319p3) {
        AbstractC0242c4 abstractC0242c4 = this.f5520b;
        abstractC0242c4.f5539j = c0319p3;
        abstractC0242c4.f(AbstractC0420a.t0("REQUIRES_SECOND_FACTOR_AUTH"));
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void u() {
        AbstractC0242c4 abstractC0242c4 = this.f5520b;
        int i5 = abstractC0242c4.f5531a;
        boolean z4 = i5 == 5;
        StringBuilder sb = new StringBuilder(36);
        sb.append("Unexpected response type ");
        sb.append(i5);
        AbstractC0213D.g(sb.toString(), z4);
        AbstractC0242c4.e(abstractC0242c4);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Q3
    public final void v(C0373y4 c0373y4) {
        AbstractC0242c4 abstractC0242c4 = this.f5520b;
        int i5 = abstractC0242c4.f5531a;
        boolean z4 = i5 == 1;
        StringBuilder sb = new StringBuilder(37);
        sb.append("Unexpected response type: ");
        sb.append(i5);
        AbstractC0213D.g(sb.toString(), z4);
        abstractC0242c4.f5536g = c0373y4;
        AbstractC0242c4.e(abstractC0242c4);
    }
}
