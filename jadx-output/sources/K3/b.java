package K3;

import d3.i;
import h0.AbstractC0432c;
import java.io.Serializable;
import m2.C0707a;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1286a = 1;

    /* renamed from: b, reason: collision with root package name */
    public String f1287b;

    /* renamed from: c, reason: collision with root package name */
    public int f1288c;

    /* renamed from: d, reason: collision with root package name */
    public Object f1289d;

    /* renamed from: e, reason: collision with root package name */
    public Object f1290e;
    public Serializable f;

    /* renamed from: g, reason: collision with root package name */
    public Serializable f1291g;

    /* renamed from: h, reason: collision with root package name */
    public Serializable f1292h;

    public /* synthetic */ b() {
    }

    public C0707a a() {
        String strH = this.f1288c == 0 ? " registrationStatus" : "";
        if (((Long) this.f) == null) {
            strH = strH.concat(" expiresInSecs");
        }
        if (((Long) this.f1291g) == null) {
            strH = AbstractC0432c.h(strH, " tokenCreationEpochInSecs");
        }
        if (strH.isEmpty()) {
            return new C0707a(this.f1287b, this.f1288c, (String) this.f1289d, (String) this.f1290e, ((Long) this.f).longValue(), ((Long) this.f1291g).longValue(), (String) this.f1292h);
        }
        throw new IllegalStateException("Missing required properties:".concat(strH));
    }

    public void b(int i5) {
        if (i5 == 0) {
            throw new NullPointerException("Null registrationStatus");
        }
        this.f1288c = i5;
    }

    public String toString() {
        switch (this.f1286a) {
            case 0:
                return ((a) this.f1289d) + " version=" + ((P3.f) this.f1290e);
            default:
                return super.toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(a aVar, P3.f fVar, String[] strArr, String[] strArr2, String[] strArr3, String str, int i5) {
        i.e("kind", aVar);
        this.f1289d = aVar;
        this.f1290e = fVar;
        this.f = strArr;
        this.f1291g = strArr2;
        this.f1292h = strArr3;
        this.f1287b = str;
        this.f1288c = i5;
    }
}
