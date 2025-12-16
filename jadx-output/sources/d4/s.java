package d4;

import L3.C0061j;
import L3.EnumC0060i;
import com.google.android.gms.internal.p000firebaseauthapi.X;
import r3.InterfaceC0786N;
import s2.C0837c;

/* loaded from: classes.dex */
public final class s extends X {

    /* renamed from: e, reason: collision with root package name */
    public final C0061j f6571e;
    public final s f;

    /* renamed from: g, reason: collision with root package name */
    public final Q3.b f6572g;

    /* renamed from: h, reason: collision with root package name */
    public final EnumC0060i f6573h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f6574i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(C0061j c0061j, N3.f fVar, C0837c c0837c, InterfaceC0786N interfaceC0786N, s sVar) {
        super(fVar, c0837c, interfaceC0786N);
        d3.i.e("classProto", c0061j);
        d3.i.e("nameResolver", fVar);
        d3.i.e("typeTable", c0837c);
        this.f6571e = c0061j;
        this.f = sVar;
        this.f6572g = L2.b.l(fVar, c0061j.f1689g);
        EnumC0060i enumC0060i = (EnumC0060i) N3.e.f.c(c0061j.f);
        this.f6573h = enumC0060i == null ? EnumC0060i.CLASS : enumC0060i;
        this.f6574i = N3.e.f1890g.c(c0061j.f).booleanValue();
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final Q3.c j() {
        Q3.c cVarB = this.f6572g.b();
        d3.i.d("classId.asSingleFqName()", cVarB);
        return cVarB;
    }
}
