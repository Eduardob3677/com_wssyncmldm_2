package com.google.android.gms.internal.p000firebaseauthapi;

import Z0.e;
import a1.c;
import android.content.Context;
import android.os.Looper;
import c1.AbstractC0213D;
import e4.d;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class F3 implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final W3 f5370a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f5371b;

    public F3(Context context, W3 w32) {
        this.f5370a = w32;
        this.f5371b = context;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        e eVar = e.f3005c;
        Context context = this.f5371b;
        eVar.b(context, 12451000);
        String str = this.f5370a.f5484d;
        AbstractC0213D.c(str);
        W3 w32 = new W3(str);
        w32.f5483c = true;
        return new C0348u3(new C0354v3(context, AbstractC0332s.f5710c, w32, new c(new d(6), Looper.getMainLooper())));
    }
}
