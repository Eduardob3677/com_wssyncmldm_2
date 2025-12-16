package J3;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: k, reason: collision with root package name */
    public static final t f1175k = new t(false, false, false, false, false, new t(false, false, false, false, false, null, false, null, null, false, 1023), false, null, null, false, 988);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f1176a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f1177b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1178c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f1179d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f1180e;
    public final t f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f1181g;

    /* renamed from: h, reason: collision with root package name */
    public final t f1182h;

    /* renamed from: i, reason: collision with root package name */
    public final t f1183i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f1184j;

    public t(boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, t tVar, boolean z9, t tVar2, t tVar3, boolean z10, int i5) {
        z4 = (i5 & 1) != 0 ? true : z4;
        z5 = (i5 & 2) != 0 ? true : z5;
        z6 = (i5 & 4) != 0 ? false : z6;
        z7 = (i5 & 8) != 0 ? false : z7;
        z8 = (i5 & 16) != 0 ? false : z8;
        tVar = (i5 & 32) != 0 ? null : tVar;
        z9 = (i5 & 64) != 0 ? true : z9;
        tVar2 = (i5 & 128) != 0 ? tVar : tVar2;
        tVar3 = (i5 & 256) != 0 ? tVar : tVar3;
        z10 = (i5 & 512) != 0 ? false : z10;
        this.f1176a = z4;
        this.f1177b = z5;
        this.f1178c = z6;
        this.f1179d = z7;
        this.f1180e = z8;
        this.f = tVar;
        this.f1181g = z9;
        this.f1182h = tVar2;
        this.f1183i = tVar3;
        this.f1184j = z10;
    }
}
