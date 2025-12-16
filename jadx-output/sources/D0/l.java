package D0;

/* loaded from: classes.dex */
public abstract class l extends k {

    /* renamed from: a, reason: collision with root package name */
    public B.g[] f416a;

    /* renamed from: b, reason: collision with root package name */
    public String f417b;

    /* renamed from: c, reason: collision with root package name */
    public int f418c;

    /* renamed from: d, reason: collision with root package name */
    public final int f419d;

    public l() {
        this.f416a = null;
        this.f418c = 0;
    }

    public B.g[] getPathData() {
        return this.f416a;
    }

    public String getPathName() {
        return this.f417b;
    }

    public void setPathData(B.g[] gVarArr) {
        if (!W1.a.i(this.f416a, gVarArr)) {
            this.f416a = W1.a.w(gVarArr);
            return;
        }
        B.g[] gVarArr2 = this.f416a;
        for (int i5 = 0; i5 < gVarArr.length; i5++) {
            gVarArr2[i5].f187a = gVarArr[i5].f187a;
            int i6 = 0;
            while (true) {
                float[] fArr = gVarArr[i5].f188b;
                if (i6 < fArr.length) {
                    gVarArr2[i5].f188b[i6] = fArr[i6];
                    i6++;
                }
            }
        }
    }

    public l(l lVar) {
        this.f416a = null;
        this.f418c = 0;
        this.f417b = lVar.f417b;
        this.f419d = lVar.f419d;
        this.f416a = W1.a.w(lVar.f416a);
    }
}
