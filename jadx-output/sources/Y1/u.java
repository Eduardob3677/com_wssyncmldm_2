package Y1;

import c1.AbstractC0213D;
import com.google.android.gms.internal.p000firebaseauthapi.C0373y4;
import com.google.firebase.auth.FirebaseAuth;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class u implements a2.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FirebaseAuth f2961a;

    public u(a2.r rVar) {
        this.f2961a = rVar;
    }

    @Override // a2.l
    public final void a(C0373y4 c0373y4, a2.s sVar) throws JSONException {
        AbstractC0213D.e(c0373y4);
        AbstractC0213D.e(sVar);
        sVar.f3078c = c0373y4;
        FirebaseAuth firebaseAuth = this.f2961a;
        firebaseAuth.getClass();
        FirebaseAuth.d(firebaseAuth, sVar, c0373y4, true, false);
    }
}
