package androidx.activity;

import android.window.BackEvent;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final float f3150a;

    /* renamed from: b, reason: collision with root package name */
    public final float f3151b;

    /* renamed from: c, reason: collision with root package name */
    public final float f3152c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3153d;

    public b(BackEvent backEvent) {
        d3.i.e("backEvent", backEvent);
        a aVar = a.f3149a;
        float fD = aVar.d(backEvent);
        float fE = aVar.e(backEvent);
        float fB = aVar.b(backEvent);
        int iC = aVar.c(backEvent);
        this.f3150a = fD;
        this.f3151b = fE;
        this.f3152c = fB;
        this.f3153d = iC;
    }

    public final String toString() {
        return "BackEventCompat{touchX=" + this.f3150a + ", touchY=" + this.f3151b + ", progress=" + this.f3152c + ", swipeEdge=" + this.f3153d + '}';
    }
}
