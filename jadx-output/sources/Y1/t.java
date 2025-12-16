package Y1;

import c1.AbstractC0213D;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p000firebaseauthapi.C0373y4;
import com.google.firebase.auth.FirebaseAuth;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class t implements a2.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2959a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FirebaseAuth f2960b;

    public /* synthetic */ t(FirebaseAuth firebaseAuth, int i5) {
        this.f2959a = i5;
        this.f2960b = firebaseAuth;
    }

    @Override // a2.l
    public final void a(C0373y4 c0373y4, a2.s sVar) throws JSONException {
        switch (this.f2959a) {
            case 0:
                FirebaseAuth.d(this.f2960b, sVar, c0373y4, true, true);
                break;
            default:
                AbstractC0213D.e(c0373y4);
                AbstractC0213D.e(sVar);
                sVar.f3078c = c0373y4;
                FirebaseAuth.d(this.f2960b, sVar, c0373y4, true, true);
                break;
        }
    }

    public final void b(Status status) {
        switch (this.f2959a) {
            case 0:
                int i5 = status.f5309d;
                if (i5 == 17011 || i5 == 17021 || i5 == 17005) {
                    this.f2960b.a();
                    break;
                }
                break;
            default:
                int i6 = status.f5309d;
                if (i6 == 17011 || i6 == 17021 || i6 == 17005 || i6 == 17091) {
                    this.f2960b.a();
                    break;
                }
                break;
        }
    }
}
