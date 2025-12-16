package s1;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import c1.k;
import r1.C0766a;

/* renamed from: s1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0828a extends k implements a1.b {

    /* renamed from: A, reason: collision with root package name */
    public final Integer f9004A;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f9005x;

    /* renamed from: y, reason: collision with root package name */
    public final J3.c f9006y;

    /* renamed from: z, reason: collision with root package name */
    public final Bundle f9007z;

    public C0828a(Context context, Looper looper, J3.c cVar, a1.e eVar, a1.f fVar) {
        C0766a c0766a = (C0766a) cVar.f1142i;
        Integer num = (Integer) cVar.f1143j;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", (Account) cVar.f1138d);
        if (num != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", num.intValue());
        }
        if (c0766a != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
            bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
        }
        super(context, looper, 44, cVar, eVar, fVar);
        this.f9005x = true;
        this.f9006y = cVar;
        this.f9007z = bundle;
        this.f9004A = (Integer) cVar.f1143j;
    }

    @Override // c1.k, a1.b
    public final boolean a() {
        return this.f9005x;
    }

    @Override // c1.k
    public final /* synthetic */ IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof C0832e ? (C0832e) iInterfaceQueryLocalInterface : new C0832e(iBinder);
    }

    @Override // c1.k
    public final Bundle f() {
        J3.c cVar = this.f9006y;
        boolean zEquals = this.f5225b.getPackageName().equals((String) cVar.f1140g);
        Bundle bundle = this.f9007z;
        if (!zEquals) {
            bundle.putString("com.google.android.gms.signin.internal.realClientPackageName", (String) cVar.f1140g);
        }
        return bundle;
    }

    @Override // c1.k
    public final String i() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // c1.k
    public final String j() {
        return "com.google.android.gms.signin.service.START";
    }
}
