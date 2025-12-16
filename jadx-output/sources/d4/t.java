package d4;

import com.google.android.gms.internal.p000firebaseauthapi.X;
import s2.C0837c;

/* loaded from: classes.dex */
public final class t extends X {

    /* renamed from: e, reason: collision with root package name */
    public final Q3.c f6575e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(Q3.c cVar, N3.f fVar, C0837c c0837c, f4.j jVar) {
        super(fVar, c0837c, jVar);
        d3.i.e("fqName", cVar);
        d3.i.e("nameResolver", fVar);
        d3.i.e("typeTable", c0837c);
        this.f6575e = cVar;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final Q3.c j() {
        return this.f6575e;
    }
}
