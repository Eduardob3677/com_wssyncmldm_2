package b1;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.internal.p000firebaseauthapi.Q1;
import java.util.Set;
import org.json.JSONException;
import r1.AbstractC0767b;
import s1.AbstractBinderC0831d;
import s1.C0828a;
import s1.C0832e;
import s1.C0833f;
import s1.C0834g;

/* loaded from: classes.dex */
public final class q extends AbstractBinderC0831d implements a1.e, a1.f {

    /* renamed from: h, reason: collision with root package name */
    public static final V0.b f5097h = AbstractC0767b.f8755a;

    /* renamed from: a, reason: collision with root package name */
    public final Context f5098a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f5099b;

    /* renamed from: c, reason: collision with root package name */
    public final W1.a f5100c;

    /* renamed from: d, reason: collision with root package name */
    public final Set f5101d;

    /* renamed from: e, reason: collision with root package name */
    public final J3.c f5102e;
    public C0828a f;

    /* renamed from: g, reason: collision with root package name */
    public C0199e f5103g;

    public q(Context context, Q1 q12, J3.c cVar) {
        V0.b bVar = f5097h;
        attachInterface(this, "com.google.android.gms.signin.internal.ISignInCallbacks");
        this.f5098a = context;
        this.f5099b = q12;
        this.f5102e = cVar;
        this.f5101d = (Set) cVar.f1139e;
        this.f5100c = bVar;
    }

    @Override // a1.e
    public final void f() {
        this.f.d();
    }

    @Override // a1.e
    public final void q() {
        GoogleSignInAccount googleSignInAccountD;
        C0828a c0828a = this.f;
        c0828a.getClass();
        try {
            Account account = (Account) c0828a.f9006y.f1138d;
            if (account == null) {
                account = new Account("<<default account>>", "com.google");
            }
            if ("<<default account>>".equals(account.name)) {
                X0.a aVarA = X0.a.a(c0828a.f5225b);
                String strB = aVarA.b("defaultGoogleSignInAccount");
                if (!TextUtils.isEmpty(strB)) {
                    StringBuilder sb = new StringBuilder(String.valueOf(strB).length() + 20);
                    sb.append("googleSignInAccount:");
                    sb.append(strB);
                    String strB2 = aVarA.b(sb.toString());
                    if (strB2 != null) {
                        try {
                            googleSignInAccountD = GoogleSignInAccount.d(strB2);
                        } catch (JSONException unused) {
                        }
                    }
                }
                googleSignInAccountD = null;
            } else {
                googleSignInAccountD = null;
            }
            ((C0832e) c0828a.h()).f(new C0833f(1, new c1.t(2, account, c0828a.f9004A.intValue(), googleSignInAccountD)), this);
        } catch (RemoteException e5) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                this.f5099b.post(new G.a(this, new C0834g(1, new Z0.a(8, null), null), 6, false));
            } catch (RemoteException unused2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e5);
            }
        }
    }

    @Override // a1.f
    public final void s(Z0.a aVar) {
        this.f5103g.b(aVar);
    }
}
