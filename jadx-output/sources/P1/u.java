package P1;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public float f2147a;

    /* renamed from: b, reason: collision with root package name */
    public float f2148b;

    /* renamed from: c, reason: collision with root package name */
    public float f2149c;

    /* renamed from: d, reason: collision with root package name */
    public float f2150d;

    /* renamed from: e, reason: collision with root package name */
    public float f2151e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f2152g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f2153h = new ArrayList();

    public u() {
        d(0.0f, 270.0f, 0.0f);
    }

    public final void a(float f) {
        float f5 = this.f2151e;
        if (f5 == f) {
            return;
        }
        float f6 = ((f - f5) + 360.0f) % 360.0f;
        if (f6 > 180.0f) {
            return;
        }
        float f7 = this.f2149c;
        float f8 = this.f2150d;
        q qVar = new q(f7, f8, f7, f8);
        qVar.f = this.f2151e;
        qVar.f2141g = f6;
        this.f2153h.add(new o(qVar));
        this.f2151e = f;
    }

    public final void b(Matrix matrix, Path path) {
        ArrayList arrayList = this.f2152g;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((s) arrayList.get(i5)).a(matrix, path);
        }
    }

    public final void c(float f, float f5) {
        r rVar = new r();
        rVar.f2142b = f;
        rVar.f2143c = f5;
        this.f2152g.add(rVar);
        p pVar = new p(rVar, this.f2149c, this.f2150d);
        float fB = pVar.b() + 270.0f;
        float fB2 = pVar.b() + 270.0f;
        a(fB);
        this.f2153h.add(pVar);
        this.f2151e = fB2;
        this.f2149c = f;
        this.f2150d = f5;
    }

    public final void d(float f, float f5, float f6) {
        this.f2147a = 0.0f;
        this.f2148b = f;
        this.f2149c = 0.0f;
        this.f2150d = f;
        this.f2151e = f5;
        this.f = (f5 + f6) % 360.0f;
        this.f2152g.clear();
        this.f2153h.clear();
    }
}
