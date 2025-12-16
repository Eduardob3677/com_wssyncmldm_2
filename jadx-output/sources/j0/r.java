package j0;

import android.view.View;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public androidx.emoji2.text.f f7557a;

    /* renamed from: b, reason: collision with root package name */
    public int f7558b;

    /* renamed from: c, reason: collision with root package name */
    public int f7559c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f7560d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7561e;

    public r() {
        d();
    }

    public final void a() {
        this.f7559c = this.f7560d ? this.f7557a.g() : this.f7557a.k();
    }

    public final void b(int i5, View view) {
        if (this.f7560d) {
            this.f7559c = this.f7557a.m() + this.f7557a.b(view);
        } else {
            this.f7559c = this.f7557a.e(view);
        }
        this.f7558b = i5;
    }

    public final void c(int i5, View view) {
        int iM = this.f7557a.m();
        if (iM >= 0) {
            b(i5, view);
            return;
        }
        this.f7558b = i5;
        if (!this.f7560d) {
            int iE = this.f7557a.e(view);
            int iK = iE - this.f7557a.k();
            this.f7559c = iE;
            if (iK > 0) {
                int iG = (this.f7557a.g() - Math.min(0, (this.f7557a.g() - iM) - this.f7557a.b(view))) - (this.f7557a.c(view) + iE);
                if (iG < 0) {
                    this.f7559c -= Math.min(iK, -iG);
                    return;
                }
                return;
            }
            return;
        }
        int iG2 = (this.f7557a.g() - iM) - this.f7557a.b(view);
        this.f7559c = this.f7557a.g() - iG2;
        if (iG2 > 0) {
            int iC = this.f7559c - this.f7557a.c(view);
            int iK2 = this.f7557a.k();
            int iMin = iC - (Math.min(this.f7557a.e(view) - iK2, 0) + iK2);
            if (iMin < 0) {
                this.f7559c = Math.min(iG2, -iMin) + this.f7559c;
            }
        }
    }

    public final void d() {
        this.f7558b = -1;
        this.f7559c = Integer.MIN_VALUE;
        this.f7560d = false;
        this.f7561e = false;
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.f7558b + ", mCoordinate=" + this.f7559c + ", mLayoutFromEnd=" + this.f7560d + ", mValid=" + this.f7561e + '}';
    }
}
