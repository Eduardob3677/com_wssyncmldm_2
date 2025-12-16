package S1;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class f extends P1.f {

    /* renamed from: v, reason: collision with root package name */
    public final RectF f2478v;

    public f(P1.k kVar, RectF rectF) {
        super(kVar);
        this.f2478v = rectF;
    }

    @Override // P1.f, android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        g gVar = new g(this);
        gVar.invalidateSelf();
        return gVar;
    }

    public f(f fVar) {
        super(fVar);
        this.f2478v = fVar.f2478v;
    }
}
