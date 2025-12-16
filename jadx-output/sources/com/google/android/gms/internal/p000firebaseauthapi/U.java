package com.google.android.gms.internal.p000firebaseauthapi;

import W1.g;
import W1.h;
import Y1.f;
import Y1.k;
import a2.s;
import android.os.RemoteException;
import android.util.Pair;
import android.util.SparseArray;
import c1.AbstractC0213D;
import com.google.android.gms.common.api.Status;
import com.google.firebase.auth.FirebaseAuth;
import i3.x;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import u1.i;

/* loaded from: classes.dex */
public class U implements InterfaceC0248d4 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5471c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f5472d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f5473e;

    public U(Q q2) {
        this.f5471c = 2;
        this.f5473e = q2;
        this.f5472d = null;
    }

    public S1 a(Z4 z4) throws GeneralSecurityException {
        X x4 = (X) this.f5473e;
        try {
            C0322q0 c0322q0N = x4.n();
            U4 u4A = c0322q0N.a(z4);
            c0322q0N.e(u4A);
            U4 u42 = (U4) c0322q0N.b(u4A);
            R1 r1M = S1.m();
            String strR = x4.r();
            if (r1M.f5646e) {
                r1M.d();
                r1M.f5646e = false;
            }
            ((S1) r1M.f5645d).zze = strR;
            Y4 y4B = u42.b();
            if (r1M.f5646e) {
                r1M.d();
                r1M.f5646e = false;
            }
            ((S1) r1M.f5645d).zzf = y4B;
            int iO = x4.o();
            if (r1M.f5646e) {
                r1M.d();
                r1M.f5646e = false;
            }
            S1.t((S1) r1M.f5645d, iO);
            return (S1) r1M.b();
        } catch (C0255f e5) {
            throw new GeneralSecurityException("Unexpected proto", e5);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public void b(String str) {
        int i5 = this.f5471c;
        InterfaceC0248d4 interfaceC0248d4 = (InterfaceC0248d4) this.f5473e;
        switch (i5) {
            case 3:
                interfaceC0248d4.b(str);
                break;
            default:
                interfaceC0248d4.b(str);
                break;
        }
    }

    public void c(Object obj, Status status) {
        h fVar;
        i iVar = (i) this.f5472d;
        AbstractC0213D.f("completion source cannot be null", iVar);
        if (status == null) {
            iVar.b(obj);
            return;
        }
        AbstractC0242c4 abstractC0242c4 = (AbstractC0242c4) this.f5473e;
        if (abstractC0242c4.f5539j == null) {
            if (abstractC0242c4.f5538i == null) {
                iVar.a(J3.a(status));
                return;
            }
            SparseArray sparseArray = J3.f5398a;
            int i5 = status.f5309d;
            if (i5 == 17012 || i5 == 17007 || i5 == 17025) {
                Pair pair = (Pair) J3.f5398a.get(i5);
                fVar = new f(J3.b(i5), J3.c(pair != null ? (String) pair.second : "An internal error has occurred.", status));
            } else {
                fVar = J3.a(status);
            }
            iVar.a(fVar);
            return;
        }
        FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(abstractC0242c4.f5533c);
        C0319p3 c0319p3 = abstractC0242c4.f5539j;
        if ("reauthenticateWithCredential".equals(abstractC0242c4.b()) || "reauthenticateWithCredentialWithData".equals(abstractC0242c4.b())) {
            s sVar = abstractC0242c4.f5534d;
        }
        SparseArray sparseArray2 = J3.f5398a;
        firebaseAuth.getClass();
        c0319p3.getClass();
        Pair pair2 = (Pair) J3.f5398a.get(17078);
        String str = (String) pair2.first;
        String str2 = (String) pair2.second;
        List list = c0319p3.f5684d;
        ArrayList arrayListU1 = x.u1(list);
        ArrayList arrayList = new ArrayList();
        Iterator it = arrayListU1.iterator();
        while (it.hasNext()) {
            k kVar = (k) it.next();
            if (kVar instanceof k) {
                arrayList.add(kVar);
            }
        }
        ArrayList arrayListU12 = x.u1(list);
        AbstractC0213D.c(c0319p3.f5683c);
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayListU12.iterator();
        while (it2.hasNext()) {
            k kVar2 = (k) it2.next();
            if (kVar2 instanceof k) {
                arrayList2.add(kVar2);
            }
        }
        g gVar = firebaseAuth.f6182a;
        gVar.a();
        ArrayList arrayList3 = new ArrayList();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            k kVar3 = (k) it3.next();
            if (kVar3 instanceof k) {
                arrayList3.add(kVar3);
            }
        }
        AbstractC0213D.c(gVar.f2824b);
        iVar.a(new f(str, str2));
    }

    public U4 d(Z4 z4) throws GeneralSecurityException {
        X x4 = (X) this.f5473e;
        try {
            C0322q0 c0322q0N = x4.n();
            U4 u4A = c0322q0N.a(z4);
            c0322q0N.e(u4A);
            return (U4) c0322q0N.b(u4A);
        } catch (C0255f e5) {
            String name = x4.n().f5693a.getName();
            throw new GeneralSecurityException(name.length() != 0 ? "Failures parsing proto of type ".concat(name) : new String("Failures parsing proto of type "), e5);
        }
    }

    public Object e(Z4 z4) {
        X x4 = (X) this.f5473e;
        try {
            U4 u4P = x4.p(z4);
            Class cls = (Class) this.f5472d;
            if (Void.class.equals(cls)) {
                throw new GeneralSecurityException("Cannot create a primitive for Void");
            }
            x4.s(u4P);
            return x4.q(u4P, cls);
        } catch (C0255f e5) {
            String name = ((Class) x4.f5487b).getName();
            throw new GeneralSecurityException(name.length() != 0 ? "Failures parsing proto of type ".concat(name) : new String("Failures parsing proto of type "), e5);
        }
    }

    public List f(byte[] bArr) {
        List list = (List) ((ConcurrentHashMap) this.f5473e).get(new C0244d0(bArr));
        return list != null ? list : Collections.emptyList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0248d4
    public void k(Y3 y3) {
        switch (this.f5471c) {
            case 3:
                B.f.B(y3);
                Object obj = ((C0377z2) this.f5472d).f;
                throw null;
            default:
                G3 g32 = ((C0336s3) this.f5472d).f5715d;
                g32.getClass();
                try {
                    g32.f5375a.u();
                    return;
                } catch (RemoteException e5) {
                    g32.f5376b.d("RemoteException when sending delete account response.", e5, new Object[0]);
                    return;
                }
        }
    }

    public U(S s5) {
        this.f5471c = 2;
        this.f5473e = null;
        this.f5472d = s5;
    }

    public U(X x4, Class cls) {
        this.f5471c = 0;
        if (((Map) x4.f5489d).keySet().contains(cls) || Void.class.equals(cls)) {
            this.f5473e = x4;
            this.f5472d = cls;
            return;
        }
        throw new IllegalArgumentException("Given internalKeyMananger " + x4.toString() + " does not support primitive class " + cls.getName());
    }

    public U(AbstractC0242c4 abstractC0242c4, i iVar) {
        this.f5471c = 5;
        this.f5473e = abstractC0242c4;
        this.f5472d = iVar;
    }

    public /* synthetic */ U(InterfaceC0248d4 interfaceC0248d4, InterfaceC0248d4 interfaceC0248d42, int i5) {
        this.f5471c = i5;
        this.f5472d = interfaceC0248d4;
        this.f5473e = interfaceC0248d42;
    }

    public U(Class cls) {
        this.f5471c = 1;
        this.f5473e = new ConcurrentHashMap();
        this.f5472d = cls;
    }
}
