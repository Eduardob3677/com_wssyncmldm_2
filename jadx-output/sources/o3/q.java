package o3;

/* loaded from: classes.dex */
public enum q {
    /* JADX INFO: Fake field, exist only in values array */
    UBYTE(Q3.b.f("kotlin/UByte", false)),
    /* JADX INFO: Fake field, exist only in values array */
    USHORT(Q3.b.f("kotlin/UShort", false)),
    /* JADX INFO: Fake field, exist only in values array */
    UINT(Q3.b.f("kotlin/UInt", false)),
    /* JADX INFO: Fake field, exist only in values array */
    ULONG(Q3.b.f("kotlin/ULong", false));


    /* renamed from: c, reason: collision with root package name */
    public final Q3.b f8549c;

    /* renamed from: d, reason: collision with root package name */
    public final Q3.f f8550d;

    /* renamed from: e, reason: collision with root package name */
    public final Q3.b f8551e;

    q(Q3.b bVar) {
        this.f8549c = bVar;
        Q3.f fVarJ = bVar.j();
        d3.i.d("classId.shortClassName", fVarJ);
        this.f8550d = fVarJ;
        this.f8551e = new Q3.b(bVar.h(), Q3.f.e(fVarJ.b() + "Array"));
    }
}
