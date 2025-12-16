package M1;

import Z0.j;
import android.graphics.Typeface;

/* loaded from: classes.dex */
public final class b extends A.b {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ j f1828e;
    public final /* synthetic */ d f;

    public b(d dVar, j jVar) {
        this.f = dVar;
        this.f1828e = jVar;
    }

    @Override // A.b
    public final void h(int i5) {
        this.f.f1844m = true;
        this.f1828e.W(i5);
    }

    @Override // A.b
    public final void i(Typeface typeface) {
        d dVar = this.f;
        dVar.n = Typeface.create(typeface, dVar.f1835c);
        dVar.f1844m = true;
        this.f1828e.X(dVar.n, false);
    }
}
