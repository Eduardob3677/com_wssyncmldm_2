package com.google.android.gms.internal.p000firebaseauthapi;

import A.d;
import android.os.RemoteException;
import c1.AbstractC0213D;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public class G3 {

    /* renamed from: a, reason: collision with root package name */
    public final Q3 f5375a;

    /* renamed from: b, reason: collision with root package name */
    public final d f5376b;

    public G3(Q3 q32, d dVar) {
        AbstractC0213D.e(q32);
        this.f5375a = q32;
        AbstractC0213D.e(dVar);
        this.f5376b = dVar;
    }

    public void a(String str) {
        try {
            this.f5375a.d(str);
        } catch (RemoteException e5) {
            this.f5376b.d("RemoteException when sending send verification code response.", e5, new Object[0]);
        }
    }

    public void b(Status status) {
        try {
            this.f5375a.i(status);
        } catch (RemoteException e5) {
            this.f5376b.d("RemoteException when sending failure result.", e5, new Object[0]);
        }
    }

    public final void c(D4 d42) {
        try {
            this.f5375a.m(d42);
        } catch (RemoteException e5) {
            this.f5376b.d("RemoteException when sending password reset response.", e5, new Object[0]);
        }
    }
}
