package P1;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class b implements c {

    /* renamed from: a, reason: collision with root package name */
    public final c f2052a;

    /* renamed from: b, reason: collision with root package name */
    public final float f2053b;

    public b(float f, c cVar) {
        while (cVar instanceof b) {
            cVar = ((b) cVar).f2052a;
            f += ((b) cVar).f2053b;
        }
        this.f2052a = cVar;
        this.f2053b = f;
    }

    @Override // P1.c
    public final float a(RectF rectF) {
        return Math.max(0.0f, this.f2052a.a(rectF) + this.f2053b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f2052a.equals(bVar.f2052a) && this.f2053b == bVar.f2053b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2052a, Float.valueOf(this.f2053b)});
    }
}
