package M1;

import Z0.j;
import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;

/* loaded from: classes.dex */
public final class c extends j {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f1829b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextPaint f1830c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ j f1831d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ d f1832e;

    public c(d dVar, Context context, TextPaint textPaint, j jVar) {
        this.f1832e = dVar;
        this.f1829b = context;
        this.f1830c = textPaint;
        this.f1831d = jVar;
    }

    @Override // Z0.j
    public final void W(int i5) {
        this.f1831d.W(i5);
    }

    @Override // Z0.j
    public final void X(Typeface typeface, boolean z4) {
        this.f1832e.g(this.f1829b, this.f1830c, typeface);
        this.f1831d.X(typeface, z4);
    }
}
