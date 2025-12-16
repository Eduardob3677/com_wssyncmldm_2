package w1;

import android.animation.TimeInterpolator;

/* renamed from: w1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0901c {

    /* renamed from: a, reason: collision with root package name */
    public long f9602a;

    /* renamed from: b, reason: collision with root package name */
    public long f9603b;

    /* renamed from: c, reason: collision with root package name */
    public TimeInterpolator f9604c;

    /* renamed from: d, reason: collision with root package name */
    public int f9605d;

    /* renamed from: e, reason: collision with root package name */
    public int f9606e;

    public final TimeInterpolator a() {
        TimeInterpolator timeInterpolator = this.f9604c;
        return timeInterpolator != null ? timeInterpolator : AbstractC0899a.f9597b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0901c)) {
            return false;
        }
        C0901c c0901c = (C0901c) obj;
        if (this.f9602a == c0901c.f9602a && this.f9603b == c0901c.f9603b && this.f9605d == c0901c.f9605d && this.f9606e == c0901c.f9606e) {
            return a().getClass().equals(c0901c.a().getClass());
        }
        return false;
    }

    public final int hashCode() {
        long j3 = this.f9602a;
        long j5 = this.f9603b;
        return ((((a().getClass().hashCode() + (((((int) (j3 ^ (j3 >>> 32))) * 31) + ((int) ((j5 >>> 32) ^ j5))) * 31)) * 31) + this.f9605d) * 31) + this.f9606e;
    }

    public final String toString() {
        return "\n" + C0901c.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + this.f9602a + " duration: " + this.f9603b + " interpolator: " + a().getClass() + " repeatCount: " + this.f9605d + " repeatMode: " + this.f9606e + "}\n";
    }
}
