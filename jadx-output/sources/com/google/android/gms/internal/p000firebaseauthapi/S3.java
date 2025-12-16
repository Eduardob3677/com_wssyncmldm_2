package com.google.android.gms.internal.p000firebaseauthapi;

import J3.c;
import J3.d;
import Y1.a;
import Y1.j;
import Y1.k;
import Y1.o;
import a2.m;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import c1.AbstractC0213D;
import com.google.firebase.messaging.p;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class S3 extends Z implements U3 {
    /* JADX WARN: Removed duplicated region for block: B:147:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x051c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02dd  */
    @Override // com.google.android.gms.internal.p000firebaseauthapi.Z
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean f(int i5, Parcel parcel, Parcel parcel2) throws IOException {
        Q3 p32;
        long j3;
        boolean z4;
        String str;
        long j5;
        boolean z5;
        String str2;
        long j6;
        boolean z6;
        String str3;
        Q3 p33 = null;
        switch (i5) {
            case 101:
                Q2 q2 = (Q2) AbstractC0327r0.a(parcel, Q2.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface : new P3(strongBinder);
                }
                ((K3) this).r(q2, p33);
                break;
            case 102:
                C0241c3 c0241c3 = (C0241c3) AbstractC0327r0.a(parcel, C0241c3.CREATOR);
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface2 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface2 : new P3(strongBinder2);
                }
                AbstractC0213D.e(c0241c3);
                String str4 = c0241c3.f5529c;
                AbstractC0213D.c(str4);
                AbstractC0213D.e(p33);
                C0254e4 c0254e4 = new C0254e4(1, str4, c0241c3.f5530d);
                G3 g32 = new G3(p33, K3.f5402d);
                C0303n c0303n = ((K3) this).f5403b;
                c0303n.getClass();
                C0336s3 c0336s3 = new C0336s3(c0303n, g32, 1);
                c cVar = (c) c0303n.f5655d;
                cVar.getClass();
                V3 v32 = (V3) cVar.f1138d;
                AbstractC0332s.l(v32.j("/verifyCustomToken", (String) cVar.f1142i), c0254e4, c0336s3, P4.class, (C0230a4) v32.f5455b);
                break;
            case 103:
                C0235b3 c0235b3 = (C0235b3) AbstractC0327r0.a(parcel, C0235b3.CREATOR);
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface3 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface3 : new P3(strongBinder3);
                }
                ((K3) this).o(c0235b3, p33);
                break;
            case 104:
                C0295l3 c0295l3 = (C0295l3) AbstractC0327r0.a(parcel, C0295l3.CREATOR);
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface4 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface4 : new P3(strongBinder4);
                }
                AbstractC0213D.e(c0295l3);
                String str5 = c0295l3.f5641d;
                AbstractC0213D.c(str5);
                o oVar = c0295l3.f5640c;
                AbstractC0213D.e(oVar);
                AbstractC0213D.e(p33);
                G3 g33 = new G3(p33, K3.f5402d);
                C0303n c0303n2 = ((K3) this).f5403b;
                c0303n2.getClass();
                AbstractC0213D.c(str5);
                c0303n2.h(str5, new C0377z2(c0303n2, oVar, g33, 8));
                break;
            case 105:
                I2 i22 = (I2) AbstractC0327r0.a(parcel, I2.CREATOR);
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface5 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface5 : new P3(strongBinder5);
                }
                AbstractC0213D.e(i22);
                String str6 = i22.f5390c;
                AbstractC0213D.c(str6);
                String str7 = i22.f5391d;
                AbstractC0213D.c(str7);
                AbstractC0213D.e(p33);
                G3 g34 = new G3(p33, K3.f5402d);
                C0303n c0303n3 = ((K3) this).f5403b;
                c0303n3.getClass();
                AbstractC0213D.c(str6);
                AbstractC0213D.c(str7);
                c0303n3.h(str6, new C0342t3(c0303n3, str7, g34, 2));
                break;
            case 106:
                J2 j22 = (J2) AbstractC0327r0.a(parcel, J2.CREATOR);
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface6 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface6 : new P3(strongBinder6);
                }
                AbstractC0213D.e(j22);
                String str8 = j22.f5396c;
                AbstractC0213D.c(str8);
                String str9 = j22.f5397d;
                AbstractC0213D.c(str9);
                AbstractC0213D.e(p33);
                G3 g35 = new G3(p33, K3.f5402d);
                C0303n c0303n4 = ((K3) this).f5403b;
                c0303n4.getClass();
                AbstractC0213D.c(str8);
                AbstractC0213D.c(str9);
                c0303n4.h(str8, new C0342t3(c0303n4, str9, g35, 3));
                break;
            case 107:
                M2 m22 = (M2) AbstractC0327r0.a(parcel, M2.CREATOR);
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface7 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface7 : new P3(strongBinder7);
                }
                AbstractC0213D.e(m22);
                String str10 = m22.f5424c;
                AbstractC0213D.c(str10);
                String str11 = m22.f5425d;
                AbstractC0213D.c(str11);
                AbstractC0213D.e(p33);
                G3 g36 = new G3(p33, K3.f5402d);
                C0303n c0303n5 = ((K3) this).f5403b;
                c0303n5.getClass();
                AbstractC0213D.c(str10);
                AbstractC0213D.c(str11);
                C0314o4 c0314o4 = new C0314o4(2, str10, str11, m22.f5426e);
                C0325q3 c0325q3 = new C0325q3(c0303n5, g36, 0);
                c cVar2 = (c) c0303n5.f5655d;
                V3 v33 = (V3) cVar2.f1138d;
                AbstractC0332s.l(v33.j("/signupNewUser", (String) cVar2.f1142i), c0314o4, c0325q3, I4.class, (C0230a4) v33.f5455b);
                break;
            case 108:
                C0247d3 c0247d3 = (C0247d3) AbstractC0327r0.a(parcel, C0247d3.CREATOR);
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface8 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface8 : new P3(strongBinder8);
                }
                ((K3) this).j(c0247d3, p33);
                break;
            case 109:
                R2 r22 = (R2) AbstractC0327r0.a(parcel, R2.CREATOR);
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface9 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface9 : new P3(strongBinder9);
                }
                AbstractC0213D.e(r22);
                String str12 = r22.f5463c;
                AbstractC0213D.c(str12);
                G3 g37 = new G3(p33, K3.f5402d);
                C0303n c0303n6 = ((K3) this).f5403b;
                c0303n6.getClass();
                AbstractC0213D.c(str12);
                C0314o4 c0314o42 = new C0314o4(str12, r22.f5464d);
                C0325q3 c0325q32 = new C0325q3(g37, 3);
                c cVar3 = (c) c0303n6.f5655d;
                cVar3.getClass();
                V3 v34 = (V3) cVar3.f1138d;
                AbstractC0332s.l(v34.j("/createAuthUri", (String) cVar3.f1142i), c0314o42, c0325q32, C0320p4.class, (C0230a4) v34.f5455b);
                break;
            case 110:
            case 118:
            case 125:
            default:
                return false;
            case 111:
                S2 s22 = (S2) AbstractC0327r0.a(parcel, S2.CREATOR);
                IBinder strongBinder10 = parcel.readStrongBinder();
                if (strongBinder10 != null) {
                    IInterface iInterfaceQueryLocalInterface10 = strongBinder10.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface10 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface10 : new P3(strongBinder10);
                }
                ((K3) this).k(s22, p33);
                break;
            case 112:
                T2 t2 = (T2) AbstractC0327r0.a(parcel, T2.CREATOR);
                IBinder strongBinder11 = parcel.readStrongBinder();
                if (strongBinder11 != null) {
                    IInterface iInterfaceQueryLocalInterface11 = strongBinder11.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface11 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface11 : new P3(strongBinder11);
                }
                ((K3) this).g(t2, p33);
                break;
            case 113:
                C0283j3 c0283j3 = (C0283j3) AbstractC0327r0.a(parcel, C0283j3.CREATOR);
                IBinder strongBinder12 = parcel.readStrongBinder();
                if (strongBinder12 != null) {
                    IInterface iInterfaceQueryLocalInterface12 = strongBinder12.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface12 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface12 : new P3(strongBinder12);
                }
                AbstractC0213D.e(c0283j3);
                String str13 = c0283j3.f5613c;
                AbstractC0213D.c(str13);
                AbstractC0213D.e(p33);
                G3 g38 = new G3(p33, K3.f5402d);
                C0303n c0303n7 = ((K3) this).f5403b;
                c0303n7.getClass();
                AbstractC0213D.c(str13);
                c0303n7.h(str13, new C0336s3(c0303n7, g38, 0));
                break;
            case 114:
                C0289k3 c0289k3 = (C0289k3) AbstractC0327r0.a(parcel, C0289k3.CREATOR);
                IBinder strongBinder13 = parcel.readStrongBinder();
                if (strongBinder13 != null) {
                    IInterface iInterfaceQueryLocalInterface13 = strongBinder13.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface13 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface13 : new P3(strongBinder13);
                }
                AbstractC0213D.e(c0289k3);
                String str14 = c0289k3.f5628c;
                AbstractC0213D.c(str14);
                String str15 = c0289k3.f5629d;
                AbstractC0213D.c(str15);
                AbstractC0213D.e(p33);
                G3 g39 = new G3(p33, K3.f5402d);
                C0303n c0303n8 = ((K3) this).f5403b;
                c0303n8.getClass();
                AbstractC0213D.c(str14);
                AbstractC0213D.c(str15);
                c0303n8.h(str15, new C0342t3(c0303n8, str14, g39, 0));
                break;
            case 115:
                V2 v22 = (V2) AbstractC0327r0.a(parcel, V2.CREATOR);
                IBinder strongBinder14 = parcel.readStrongBinder();
                if (strongBinder14 != null) {
                    IInterface iInterfaceQueryLocalInterface14 = strongBinder14.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface14 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface14 : new P3(strongBinder14);
                }
                AbstractC0213D.e(v22);
                String str16 = v22.f5477c;
                AbstractC0213D.c(str16);
                AbstractC0213D.e(p33);
                G3 g310 = new G3(p33, K3.f5402d);
                C0303n c0303n9 = ((K3) this).f5403b;
                c0303n9.getClass();
                AbstractC0213D.c(str16);
                c0303n9.h(str16, new C0336s3(c0303n9, g310, 2));
                break;
            case 116:
                C0229a3 c0229a3 = (C0229a3) AbstractC0327r0.a(parcel, C0229a3.CREATOR);
                IBinder strongBinder15 = parcel.readStrongBinder();
                if (strongBinder15 != null) {
                    IInterface iInterfaceQueryLocalInterface15 = strongBinder15.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface15 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface15 : new P3(strongBinder15);
                }
                AbstractC0213D.e(c0229a3);
                AbstractC0213D.e(p33);
                G3 g311 = new G3(p33, K3.f5402d);
                C0303n c0303n10 = ((K3) this).f5403b;
                c0303n10.getClass();
                C0314o4 c0314o43 = new C0314o4(c0229a3.f5505c);
                C0325q3 c0325q33 = new C0325q3(c0303n10, g311, 15);
                c cVar4 = (c) c0303n10.f5655d;
                V3 v35 = (V3) cVar4.f1138d;
                AbstractC0332s.l(v35.j("/signupNewUser", (String) cVar4.f1142i), c0314o43, c0325q33, I4.class, (C0230a4) v35.f5455b);
                break;
            case 117:
                N2 n22 = (N2) AbstractC0327r0.a(parcel, N2.CREATOR);
                IBinder strongBinder16 = parcel.readStrongBinder();
                if (strongBinder16 != null) {
                    IInterface iInterfaceQueryLocalInterface16 = strongBinder16.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface16 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface16 : new P3(strongBinder16);
                }
                AbstractC0213D.e(n22);
                String str17 = n22.f5434c;
                AbstractC0213D.c(str17);
                AbstractC0213D.e(p33);
                G3 g312 = new G3(p33, K3.f5402d);
                C0303n c0303n11 = ((K3) this).f5403b;
                c0303n11.getClass();
                AbstractC0213D.c(str17);
                c0303n11.h(str17, new C0336s3(c0303n11, g312, 3));
                break;
            case 119:
                K2 k22 = (K2) AbstractC0327r0.a(parcel, K2.CREATOR);
                IBinder strongBinder17 = parcel.readStrongBinder();
                if (strongBinder17 == null) {
                    p32 = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface17 = strongBinder17.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p32 = iInterfaceQueryLocalInterface17 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface17 : new P3(strongBinder17);
                }
                AbstractC0213D.e(k22);
                String str18 = k22.f5400c;
                AbstractC0213D.c(str18);
                AbstractC0213D.e(p32);
                G3 g313 = new G3(p32, K3.f5402d);
                C0303n c0303n12 = ((K3) this).f5403b;
                c0303n12.getClass();
                AbstractC0213D.c(str18);
                C0314o4 c0314o44 = new C0314o4(1, str18, null, k22.f5401d);
                C0325q3 c0325q34 = new C0325q3(g313, 5);
                c cVar5 = (c) c0303n12.f5655d;
                V3 v36 = (V3) cVar5.f1138d;
                AbstractC0332s.l(v36.j("/resetPassword", (String) cVar5.f1142i), c0314o44, c0325q34, D4.class, (C0230a4) v36.f5455b);
                break;
            case 120:
                G2 g22 = (G2) AbstractC0327r0.a(parcel, G2.CREATOR);
                IBinder strongBinder18 = parcel.readStrongBinder();
                if (strongBinder18 != null) {
                    IInterface iInterfaceQueryLocalInterface18 = strongBinder18.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface18 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface18 : new P3(strongBinder18);
                }
                AbstractC0213D.e(g22);
                String str19 = g22.f5373c;
                AbstractC0213D.c(str19);
                AbstractC0213D.e(p33);
                G3 g314 = new G3(p33, K3.f5402d);
                C0303n c0303n13 = ((K3) this).f5403b;
                c0303n13.getClass();
                AbstractC0213D.c(str19);
                G4 g42 = new G4();
                AbstractC0213D.c(str19);
                g42.f5380g = str19;
                g42.f5382i = g22.f5374d;
                C0325q3 c0325q35 = new C0325q3(g314, 16);
                c cVar6 = (c) c0303n13.f5655d;
                cVar6.getClass();
                V3 v37 = (V3) cVar6.f1138d;
                AbstractC0332s.l(v37.j("/setAccountInfo", (String) cVar6.f1142i), g42, c0325q35, H4.class, (C0230a4) v37.f5455b);
                break;
            case 121:
                L2 l22 = (L2) AbstractC0327r0.a(parcel, L2.CREATOR);
                IBinder strongBinder19 = parcel.readStrongBinder();
                if (strongBinder19 != null) {
                    IInterface iInterfaceQueryLocalInterface19 = strongBinder19.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface19 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface19 : new P3(strongBinder19);
                }
                AbstractC0213D.e(l22);
                String str20 = l22.f5418c;
                AbstractC0213D.c(str20);
                String str21 = l22.f5419d;
                AbstractC0213D.c(str21);
                AbstractC0213D.e(p33);
                G3 g315 = new G3(p33, K3.f5402d);
                C0303n c0303n14 = ((K3) this).f5403b;
                c0303n14.getClass();
                AbstractC0213D.c(str20);
                AbstractC0213D.c(str21);
                C0314o4 c0314o45 = new C0314o4(1, str20, str21, l22.f5420e);
                C0325q3 c0325q36 = new C0325q3(g315, 7);
                c cVar7 = (c) c0303n14.f5655d;
                V3 v38 = (V3) cVar7.f1138d;
                AbstractC0332s.l(v38.j("/resetPassword", (String) cVar7.f1142i), c0314o45, c0325q36, D4.class, (C0230a4) v38.f5455b);
                break;
            case 122:
                Y2 y22 = (Y2) AbstractC0327r0.a(parcel, Y2.CREATOR);
                IBinder strongBinder20 = parcel.readStrongBinder();
                if (strongBinder20 != null) {
                    IInterface iInterfaceQueryLocalInterface20 = strongBinder20.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface20 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface20 : new P3(strongBinder20);
                }
                K3 k32 = (K3) this;
                AbstractC0213D.e(p33);
                AbstractC0213D.e(y22);
                E4 e42 = y22.f5494c;
                AbstractC0213D.e(e42);
                G3 g316 = new G3(p33, K3.f5402d);
                C0290k4 c0290k4 = k32.f5404c;
                HashMap map = c0290k4.f5633c;
                String str22 = e42.f5360c;
                if (map.get(str22) != null) {
                    if (!e42.f5362e) {
                        c0290k4.c(g316, str22);
                        break;
                    } else {
                        c0290k4.d(str22);
                        j3 = e42.f5361d;
                        z4 = e42.f5365i;
                        if (K3.q(j3, z4)) {
                        }
                        k32.f5404c.e(str22, g316, j3, z4);
                        C0272h4 c0272h4 = new C0272h4(c0290k4, g316, str22);
                        C0303n c0303n15 = k32.f5403b;
                        c0303n15.getClass();
                        AbstractC0213D.c(e42.f5360c);
                        C0325q3 c0325q37 = new C0325q3(c0272h4, 8);
                        c cVar8 = (c) c0303n15.f5655d;
                        cVar8.getClass();
                        str = e42.f;
                        if (!TextUtils.isEmpty(str)) {
                        }
                        V3 v39 = (V3) cVar8.f1138d;
                        AbstractC0332s.l(v39.j("/sendVerificationCode", (String) cVar8.f1142i), e42, c0325q37, F4.class, (C0230a4) v39.f5455b);
                    }
                } else {
                    j3 = e42.f5361d;
                    z4 = e42.f5365i;
                    if (K3.q(j3, z4)) {
                        e42.f5367k = new C0302m4(c0290k4.a(), 0);
                    }
                    k32.f5404c.e(str22, g316, j3, z4);
                    C0272h4 c0272h42 = new C0272h4(c0290k4, g316, str22);
                    C0303n c0303n152 = k32.f5403b;
                    c0303n152.getClass();
                    AbstractC0213D.c(e42.f5360c);
                    C0325q3 c0325q372 = new C0325q3(c0272h42, 8);
                    c cVar82 = (c) c0303n152.f5655d;
                    cVar82.getClass();
                    str = e42.f;
                    if (!TextUtils.isEmpty(str)) {
                        cVar82.t().f5510e = str;
                    }
                    V3 v392 = (V3) cVar82.f1138d;
                    AbstractC0332s.l(v392.j("/sendVerificationCode", (String) cVar82.f1142i), e42, c0325q372, F4.class, (C0230a4) v392.f5455b);
                    break;
                }
            case 123:
                C0259f3 c0259f3 = (C0259f3) AbstractC0327r0.a(parcel, C0259f3.CREATOR);
                IBinder strongBinder21 = parcel.readStrongBinder();
                if (strongBinder21 != null) {
                    IInterface iInterfaceQueryLocalInterface21 = strongBinder21.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface21 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface21 : new P3(strongBinder21);
                }
                ((K3) this).t(c0259f3, p33);
                break;
            case 124:
                U2 u22 = (U2) AbstractC0327r0.a(parcel, U2.CREATOR);
                IBinder strongBinder22 = parcel.readStrongBinder();
                if (strongBinder22 != null) {
                    IInterface iInterfaceQueryLocalInterface22 = strongBinder22.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface22 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface22 : new P3(strongBinder22);
                }
                ((K3) this).x(u22, p33);
                break;
            case 126:
                W2 w2 = (W2) AbstractC0327r0.a(parcel, W2.CREATOR);
                IBinder strongBinder23 = parcel.readStrongBinder();
                if (strongBinder23 != null) {
                    IInterface iInterfaceQueryLocalInterface23 = strongBinder23.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface23 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface23 : new P3(strongBinder23);
                }
                AbstractC0213D.e(w2);
                String str23 = w2.f5481c;
                AbstractC0213D.c(str23);
                AbstractC0213D.e(p33);
                G3 g317 = new G3(p33, K3.f5402d);
                C0303n c0303n16 = ((K3) this).f5403b;
                c0303n16.getClass();
                AbstractC0213D.c(str23);
                d dVar = new d(4);
                AbstractC0213D.c(str23);
                dVar.f = str23;
                a aVar = w2.f5482d;
                if (aVar != null) {
                    dVar.f1147g = aVar;
                }
                ((c) c0303n16.f5655d).s(dVar, new C0325q3(g317, 13));
                break;
            case 127:
                Z2 z22 = (Z2) AbstractC0327r0.a(parcel, Z2.CREATOR);
                IBinder strongBinder24 = parcel.readStrongBinder();
                if (strongBinder24 != null) {
                    IInterface iInterfaceQueryLocalInterface24 = strongBinder24.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface24 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface24 : new P3(strongBinder24);
                }
                AbstractC0213D.e(z22);
                AbstractC0213D.e(p33);
                A.d dVar2 = K3.f5402d;
                AbstractC0213D.e(dVar2);
                C0303n c0303n17 = ((K3) this).f5403b;
                c0303n17.getClass();
                c cVar9 = (c) c0303n17.f5655d;
                cVar9.getClass();
                C0230a4 c0230a4T = cVar9.t();
                c0230a4T.getClass();
                c0230a4T.f5506a = !TextUtils.isEmpty(z22.f5497c);
                try {
                    p33.h();
                    break;
                } catch (RemoteException e5) {
                    dVar2.d("RemoteException when setting FirebaseUI Version", e5, new Object[0]);
                    break;
                }
            case 128:
                X2 x22 = (X2) AbstractC0327r0.a(parcel, X2.CREATOR);
                IBinder strongBinder25 = parcel.readStrongBinder();
                if (strongBinder25 != null) {
                    IInterface iInterfaceQueryLocalInterface25 = strongBinder25.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface25 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface25 : new P3(strongBinder25);
                }
                AbstractC0213D.e(x22);
                String str24 = x22.f5490c;
                AbstractC0213D.c(str24);
                AbstractC0213D.e(p33);
                G3 g318 = new G3(p33, K3.f5402d);
                C0303n c0303n18 = ((K3) this).f5403b;
                c0303n18.getClass();
                AbstractC0213D.c(str24);
                a aVar2 = x22.f5491d;
                d dVar3 = new d(aVar2.f2921k);
                AbstractC0213D.c(str24);
                dVar3.f1145d = str24;
                dVar3.f1147g = aVar2;
                dVar3.f1148h = x22.f5492e;
                ((c) c0303n18.f5655d).s(dVar3, new C0325q3(g318, 4));
                break;
            case 129:
                C0253e3 c0253e3 = (C0253e3) AbstractC0327r0.a(parcel, C0253e3.CREATOR);
                IBinder strongBinder26 = parcel.readStrongBinder();
                if (strongBinder26 != null) {
                    IInterface iInterfaceQueryLocalInterface26 = strongBinder26.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface26 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface26 : new P3(strongBinder26);
                }
                ((K3) this).b(c0253e3, p33);
                break;
            case 130:
                C0265g3 c0265g3 = (C0265g3) AbstractC0327r0.a(parcel, C0265g3.CREATOR);
                IBinder strongBinder27 = parcel.readStrongBinder();
                if (strongBinder27 != null) {
                    IInterface iInterfaceQueryLocalInterface27 = strongBinder27.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface27 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface27 : new P3(strongBinder27);
                }
                K3 k33 = (K3) this;
                AbstractC0213D.e(c0265g3);
                AbstractC0213D.e(p33);
                G3 g319 = new G3(p33, K3.f5402d);
                C0290k4 c0290k42 = k33.f5404c;
                HashMap map2 = c0290k42.f5633c;
                String str25 = c0265g3.f5577d;
                if (map2.get(str25) != null) {
                    if (!c0265g3.f5579g) {
                        c0290k42.c(g319, str25);
                        break;
                    } else {
                        c0290k42.d(str25);
                        String str26 = c0265g3.f5577d;
                        AbstractC0213D.c(str26);
                        c cVar10 = new c(c0265g3.f5576c, str26, c0265g3.f5578e, c0265g3.f5582j, c0265g3.f5581i);
                        j5 = c0265g3.f;
                        z5 = c0265g3.f5583k;
                        if (K3.q(j5, z5)) {
                        }
                        k33.f5404c.e(str25, g319, j5, z5);
                        C0272h4 c0272h43 = new C0272h4(c0290k42, g319, str25);
                        C0303n c0303n19 = k33.f5403b;
                        c0303n19.getClass();
                        C0325q3 c0325q38 = new C0325q3(c0272h43, 10);
                        c cVar11 = (c) c0303n19.f5655d;
                        cVar11.getClass();
                        str2 = (String) cVar10.f1140g;
                        if (!TextUtils.isEmpty(str2)) {
                        }
                        V3 v310 = (V3) cVar11.f1139e;
                        AbstractC0332s.l(v310.j("/mfaEnrollment:start", (String) cVar11.f1142i), cVar10, c0325q38, J4.class, (C0230a4) v310.f5455b);
                    }
                } else {
                    String str262 = c0265g3.f5577d;
                    AbstractC0213D.c(str262);
                    c cVar102 = new c(c0265g3.f5576c, str262, c0265g3.f5578e, c0265g3.f5582j, c0265g3.f5581i);
                    j5 = c0265g3.f;
                    z5 = c0265g3.f5583k;
                    if (K3.q(j5, z5)) {
                        cVar102.f1143j = new C0302m4(c0290k42.a(), 0);
                    }
                    k33.f5404c.e(str25, g319, j5, z5);
                    C0272h4 c0272h432 = new C0272h4(c0290k42, g319, str25);
                    C0303n c0303n192 = k33.f5403b;
                    c0303n192.getClass();
                    C0325q3 c0325q382 = new C0325q3(c0272h432, 10);
                    c cVar112 = (c) c0303n192.f5655d;
                    cVar112.getClass();
                    str2 = (String) cVar102.f1140g;
                    if (!TextUtils.isEmpty(str2)) {
                        cVar112.t().f5510e = str2;
                    }
                    V3 v3102 = (V3) cVar112.f1139e;
                    AbstractC0332s.l(v3102.j("/mfaEnrollment:start", (String) cVar112.f1142i), cVar102, c0325q382, J4.class, (C0230a4) v3102.f5455b);
                    break;
                }
            case 131:
                C0277i3 c0277i3 = (C0277i3) AbstractC0327r0.a(parcel, C0277i3.CREATOR);
                IBinder strongBinder28 = parcel.readStrongBinder();
                if (strongBinder28 != null) {
                    IInterface iInterfaceQueryLocalInterface28 = strongBinder28.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface28 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface28 : new P3(strongBinder28);
                }
                AbstractC0213D.e(c0277i3);
                AbstractC0213D.e(p33);
                G3 g320 = new G3(p33, K3.f5402d);
                C0303n c0303n20 = ((K3) this).f5403b;
                c0303n20.getClass();
                String str27 = c0277i3.f5601c;
                AbstractC0213D.c(str27);
                String str28 = c0277i3.f5602d;
                AbstractC0213D.c(str28);
                c0303n20.h(str27, new C0342t3(c0303n20, str28, g320, 1));
                break;
            case 132:
                O2 o2 = (O2) AbstractC0327r0.a(parcel, O2.CREATOR);
                IBinder strongBinder29 = parcel.readStrongBinder();
                if (strongBinder29 != null) {
                    IInterface iInterfaceQueryLocalInterface29 = strongBinder29.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface29 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface29 : new P3(strongBinder29);
                }
                AbstractC0213D.e(o2);
                AbstractC0213D.e(p33);
                j jVar = o2.f5451c;
                String str29 = jVar.f2934c;
                String str30 = jVar.f2935d;
                AbstractC0213D.c(str30);
                AbstractC0213D.c(str29);
                String str31 = o2.f5453e;
                String str32 = o2.f5452d;
                m mVar = new m(str32, str29, str30, str31);
                G3 g321 = new G3(p33, K3.f5402d);
                C0303n c0303n21 = ((K3) this).f5403b;
                c0303n21.getClass();
                c0303n21.h(str32, new C0377z2(c0303n21, mVar, g321, 6));
                break;
            case 133:
                C0271h3 c0271h3 = (C0271h3) AbstractC0327r0.a(parcel, C0271h3.CREATOR);
                IBinder strongBinder30 = parcel.readStrongBinder();
                if (strongBinder30 != null) {
                    IInterface iInterfaceQueryLocalInterface30 = strongBinder30.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface30 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface30 : new P3(strongBinder30);
                }
                K3 k34 = (K3) this;
                AbstractC0213D.e(c0271h3);
                AbstractC0213D.e(p33);
                k kVar = c0271h3.f5591c;
                String str33 = kVar.f;
                G3 g322 = new G3(p33, K3.f5402d);
                C0290k4 c0290k43 = k34.f5404c;
                if (c0290k43.f5633c.get(str33) != null) {
                    if (!c0271h3.f5594g) {
                        c0290k43.c(g322, str33);
                        break;
                    } else {
                        c0290k43.d(str33);
                        String str34 = kVar.f;
                        AbstractC0213D.c(str34);
                        K4 k42 = new K4(c0271h3.f5592d, kVar.f2940c, str34, c0271h3.f5593e, c0271h3.f5597j, c0271h3.f5596i);
                        j6 = c0271h3.f;
                        z6 = c0271h3.f5598k;
                        if (K3.q(j6, z6)) {
                        }
                        k34.f5404c.e(str33, g322, j6, z6);
                        C0272h4 c0272h44 = new C0272h4(c0290k43, g322, str33);
                        C0303n c0303n22 = k34.f5403b;
                        c0303n22.getClass();
                        C0325q3 c0325q39 = new C0325q3(c0272h44, 12);
                        c cVar12 = (c) c0303n22.f5655d;
                        cVar12.getClass();
                        str3 = k42.f;
                        if (!TextUtils.isEmpty(str3)) {
                        }
                        V3 v311 = (V3) cVar12.f1139e;
                        AbstractC0332s.l(v311.j("/mfaSignIn:start", (String) cVar12.f1142i), k42, c0325q39, L4.class, (C0230a4) v311.f5455b);
                    }
                } else {
                    String str342 = kVar.f;
                    AbstractC0213D.c(str342);
                    K4 k422 = new K4(c0271h3.f5592d, kVar.f2940c, str342, c0271h3.f5593e, c0271h3.f5597j, c0271h3.f5596i);
                    j6 = c0271h3.f;
                    z6 = c0271h3.f5598k;
                    if (K3.q(j6, z6)) {
                        k422.f5411j = new C0302m4(c0290k43.a(), 0);
                    }
                    k34.f5404c.e(str33, g322, j6, z6);
                    C0272h4 c0272h442 = new C0272h4(c0290k43, g322, str33);
                    C0303n c0303n222 = k34.f5403b;
                    c0303n222.getClass();
                    C0325q3 c0325q392 = new C0325q3(c0272h442, 12);
                    c cVar122 = (c) c0303n222.f5655d;
                    cVar122.getClass();
                    str3 = k422.f;
                    if (!TextUtils.isEmpty(str3)) {
                        cVar122.t().f5510e = str3;
                    }
                    V3 v3112 = (V3) cVar122.f1139e;
                    AbstractC0332s.l(v3112.j("/mfaSignIn:start", (String) cVar122.f1142i), k422, c0325q392, L4.class, (C0230a4) v3112.f5455b);
                    break;
                }
            case 134:
                P2 p22 = (P2) AbstractC0327r0.a(parcel, P2.CREATOR);
                IBinder strongBinder31 = parcel.readStrongBinder();
                if (strongBinder31 != null) {
                    IInterface iInterfaceQueryLocalInterface31 = strongBinder31.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface31 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface31 : new P3(strongBinder31);
                }
                AbstractC0213D.e(p22);
                AbstractC0213D.e(p33);
                j jVar2 = p22.f5456c;
                String str35 = jVar2.f2934c;
                String str36 = jVar2.f2935d;
                AbstractC0213D.c(str36);
                AbstractC0213D.c(str35);
                p pVar = new p(p22.f5457d, str35, str36);
                G3 g323 = new G3(p33, K3.f5402d);
                C0303n c0303n23 = ((K3) this).f5403b;
                c0303n23.getClass();
                C0325q3 c0325q310 = new C0325q3(c0303n23, g323, 11);
                c cVar13 = (c) c0303n23.f5655d;
                cVar13.getClass();
                V3 v312 = (V3) cVar13.f1139e;
                AbstractC0332s.l(v312.j("/mfaSignIn:finalize", (String) cVar13.f1142i), pVar, c0325q310, AbstractC0343t4.class, (C0230a4) v312.f5455b);
                break;
            case 135:
                C0307n3 c0307n3 = (C0307n3) AbstractC0327r0.a(parcel, C0307n3.CREATOR);
                IBinder strongBinder32 = parcel.readStrongBinder();
                if (strongBinder32 != null) {
                    IInterface iInterfaceQueryLocalInterface32 = strongBinder32.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    p33 = iInterfaceQueryLocalInterface32 instanceof Q3 ? (Q3) iInterfaceQueryLocalInterface32 : new P3(strongBinder32);
                }
                AbstractC0213D.e(c0307n3);
                String str37 = c0307n3.f5658c;
                AbstractC0213D.c(str37);
                String str38 = c0307n3.f5659d;
                AbstractC0213D.c(str38);
                a aVar3 = c0307n3.f5660e;
                AbstractC0213D.e(aVar3);
                d dVar4 = new d();
                dVar4.f1144c = "VERIFY_AND_CHANGE_EMAIL";
                dVar4.f1147g = aVar3;
                dVar4.f1145d = null;
                dVar4.f1146e = str38;
                dVar4.f = str37;
                dVar4.f1148h = null;
                G3 g324 = new G3(p33, K3.f5402d);
                C0303n c0303n24 = ((K3) this).f5403b;
                c0303n24.getClass();
                ((c) c0303n24.f5655d).s(dVar4, new C0325q3(g324, 13));
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
