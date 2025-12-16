package u;

import android.util.AttributeSet;
import s.C0824a;
import s.C0827d;

/* renamed from: u.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0862a extends c {

    /* renamed from: j, reason: collision with root package name */
    public int f9143j;

    /* renamed from: k, reason: collision with root package name */
    public int f9144k;

    /* renamed from: l, reason: collision with root package name */
    public C0824a f9145l;

    @Override // u.c
    public final void f(AttributeSet attributeSet) {
        C0824a c0824a = new C0824a();
        c0824a.m0 = 0;
        c0824a.n0 = true;
        c0824a.o0 = 0;
        c0824a.f8869p0 = false;
        this.f9145l = c0824a;
        this.f = c0824a;
        h();
    }

    @Override // u.c
    public final void g(C0827d c0827d, boolean z4) {
        int i5 = this.f9143j;
        this.f9144k = i5;
        if (z4) {
            if (i5 == 5) {
                this.f9144k = 1;
            } else if (i5 == 6) {
                this.f9144k = 0;
            }
        } else if (i5 == 5) {
            this.f9144k = 0;
        } else if (i5 == 6) {
            this.f9144k = 1;
        }
        if (c0827d instanceof C0824a) {
            ((C0824a) c0827d).m0 = this.f9144k;
        }
    }

    public int getMargin() {
        return this.f9145l.o0;
    }

    public int getType() {
        return this.f9143j;
    }

    public void setAllowsGoneWidget(boolean z4) {
        this.f9145l.n0 = z4;
    }

    public void setDpMargin(int i5) {
        this.f9145l.o0 = (int) ((i5 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i5) {
        this.f9145l.o0 = i5;
    }

    public void setType(int i5) {
        this.f9143j = i5;
    }
}
