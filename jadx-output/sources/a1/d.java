package a1;

import A3.D;
import R3.C0091m;
import android.content.Context;
import b1.C0195a;
import b1.C0201g;
import b1.l;
import b1.s;
import c1.AbstractC0213D;
import com.google.android.gms.internal.p000firebaseauthapi.Q1;
import com.google.android.gms.internal.p000firebaseauthapi.W3;
import com.google.firebase.messaging.p;
import java.util.Collections;
import java.util.Set;
import o.C0714c;
import u1.n;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3034a;

    /* renamed from: b, reason: collision with root package name */
    public final D f3035b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0104a f3036c;

    /* renamed from: d, reason: collision with root package name */
    public final C0195a f3037d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3038e;
    public final l f;

    /* renamed from: g, reason: collision with root package name */
    public final C0201g f3039g;

    public d(Context context, D d2, W3 w32, c cVar) {
        AbstractC0213D.f("Null context is not permitted.", context);
        AbstractC0213D.f("Api must not be null.", d2);
        AbstractC0213D.f("Settings must not be null; use Settings.DEFAULT_SETTINGS instead.", cVar);
        Context applicationContext = context.getApplicationContext();
        this.f3034a = applicationContext;
        this.f3035b = d2;
        this.f3036c = w32;
        this.f3037d = new C0195a(d2, w32);
        C0201g c0201gA = C0201g.a(applicationContext);
        this.f3039g = c0201gA;
        this.f3038e = c0201gA.f5088e.getAndIncrement();
        this.f = cVar.f3033a;
        Q1 q12 = c0201gA.f5091i;
        q12.sendMessage(q12.obtainMessage(7, this));
    }

    public final p a() {
        p pVar = new p(9);
        pVar.f6259e = null;
        Set setEmptySet = Collections.emptySet();
        if (((C0714c) pVar.f) == null) {
            pVar.f = new C0714c(0);
        }
        ((C0714c) pVar.f).addAll(setEmptySet);
        Context context = this.f3034a;
        pVar.f6260g = context.getClass().getName();
        pVar.f6258d = context.getPackageName();
        return pVar;
    }

    public final n b(int i5, C0091m c0091m) {
        u1.i iVar = new u1.i();
        C0201g c0201g = this.f3039g;
        c0201g.getClass();
        s sVar = new s(c0091m, iVar, this.f);
        Q1 q12 = c0201g.f5091i;
        q12.sendMessage(q12.obtainMessage(4, new b1.p(sVar, c0201g.f.get(), this)));
        return iVar.f9320a;
    }
}
