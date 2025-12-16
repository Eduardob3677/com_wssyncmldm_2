package b2;

import com.google.android.gms.internal.p000firebaseauthapi.AbstractC0280j0;
import com.google.android.gms.internal.p000firebaseauthapi.AbstractC0292l0;
import com.google.android.gms.internal.p000firebaseauthapi.AbstractC0351v0;
import com.google.android.gms.internal.p000firebaseauthapi.C0255f;
import com.google.android.gms.internal.p000firebaseauthapi.C0269h1;
import com.google.android.gms.internal.p000firebaseauthapi.C0281j1;
import com.google.android.gms.internal.p000firebaseauthapi.C0317p1;
import com.google.android.gms.internal.p000firebaseauthapi.C0328r1;
import com.google.android.gms.internal.p000firebaseauthapi.R0;
import com.google.android.gms.internal.p000firebaseauthapi.T0;
import com.google.android.gms.internal.p000firebaseauthapi.U1;
import com.google.android.gms.internal.p000firebaseauthapi.g5;
import i3.x;
import java.io.Serializable;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public int f5111a;

    /* renamed from: b, reason: collision with root package name */
    public int f5112b;

    /* renamed from: c, reason: collision with root package name */
    public final Serializable f5113c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f5114d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f5115e;
    public Object f;

    public b(U1 u12) throws GeneralSecurityException {
        String strQ = u12.q();
        this.f5113c = strQ;
        if (strQ.equals(AbstractC0292l0.f5639b)) {
            try {
                C0281j1 c0281j1O = C0281j1.o(u12.p(), g5.a());
                this.f5114d = (C0269h1) AbstractC0280j0.b(u12);
                this.f5111a = c0281j1O.m();
                return;
            } catch (C0255f e5) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e5);
            }
        }
        if (strQ.equals(AbstractC0292l0.f5638a)) {
            try {
                T0 t0N = T0.n(u12.p(), g5.a());
                this.f5115e = (R0) AbstractC0280j0.b(u12);
                int iM = t0N.o().m();
                this.f5112b = iM;
                this.f5111a = iM + t0N.p().m();
                return;
            } catch (C0255f e6) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e6);
            }
        }
        if (!strQ.equals(AbstractC0351v0.f5746a)) {
            String strValueOf = String.valueOf(strQ);
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(strValueOf) : new String("unsupported AEAD DEM key type: "));
        }
        try {
            C0328r1 c0328r1O = C0328r1.o(u12.p(), g5.a());
            this.f = (C0317p1) AbstractC0280j0.b(u12);
            this.f5111a = c0328r1O.m();
        } catch (C0255f e7) {
            throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e7);
        }
    }

    public void a(l lVar) {
        if (!(!((HashSet) this.f5113c).contains(lVar.f5134a))) {
            throw new IllegalArgumentException("Components are not allowed to depend on interfaces they themselves provide.");
        }
        ((HashSet) this.f5114d).add(lVar);
    }

    public c b() {
        if (((f) this.f) != null) {
            return new c(new HashSet((HashSet) this.f5113c), new HashSet((HashSet) this.f5114d), this.f5111a, this.f5112b, (f) this.f, (HashSet) this.f5115e);
        }
        throw new IllegalStateException("Missing required property: factory.");
    }

    public b(Class cls, Class[] clsArr) {
        HashSet hashSet = new HashSet();
        this.f5113c = hashSet;
        this.f5114d = new HashSet();
        this.f5111a = 0;
        this.f5112b = 0;
        this.f5115e = new HashSet();
        hashSet.add(cls);
        for (Class cls2 : clsArr) {
            x.q("Null interface", cls2);
        }
        Collections.addAll((HashSet) this.f5113c, clsArr);
    }
}
