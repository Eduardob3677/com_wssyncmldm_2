package c0;

import B.f;
import Z0.h;
import androidx.lifecycle.Y;
import o.C0723l;

/* renamed from: c0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0208b extends Y {

    /* renamed from: b, reason: collision with root package name */
    public static final h f5185b = new h(12);

    /* renamed from: a, reason: collision with root package name */
    public final C0723l f5186a = new C0723l();

    @Override // androidx.lifecycle.Y
    public final void onCleared() {
        super.onCleared();
        C0723l c0723l = this.f5186a;
        int i5 = c0723l.f8443e;
        if (i5 > 0) {
            f.F(c0723l.f8442d[0]);
            throw null;
        }
        Object[] objArr = c0723l.f8442d;
        for (int i6 = 0; i6 < i5; i6++) {
            objArr[i6] = null;
        }
        c0723l.f8443e = 0;
    }
}
