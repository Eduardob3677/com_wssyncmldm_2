package M1;

import Z0.j;
import android.graphics.Typeface;
import s2.C0837c;

/* loaded from: classes.dex */
public final class a extends j {

    /* renamed from: b, reason: collision with root package name */
    public final Typeface f1825b;

    /* renamed from: c, reason: collision with root package name */
    public final C0837c f1826c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1827d;

    public a(C0837c c0837c, Typeface typeface) {
        this.f1825b = typeface;
        this.f1826c = c0837c;
    }

    @Override // Z0.j
    public final void W(int i5) {
        if (this.f1827d) {
            return;
        }
        J1.b bVar = (J1.b) this.f1826c.f9022c;
        if (bVar.j(this.f1825b)) {
            bVar.h(false);
        }
    }

    @Override // Z0.j
    public final void X(Typeface typeface, boolean z4) {
        if (this.f1827d) {
            return;
        }
        J1.b bVar = (J1.b) this.f1826c.f9022c;
        if (bVar.j(typeface)) {
            bVar.h(false);
        }
    }
}
