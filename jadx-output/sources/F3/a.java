package F3;

import d3.i;
import h0.AbstractC0432c;
import h4.AbstractC0472z;
import java.util.Set;
import k.Q0;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f758a;

    /* renamed from: b, reason: collision with root package name */
    public final int f759b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f760c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f761d;

    /* renamed from: e, reason: collision with root package name */
    public final Set f762e;
    public final AbstractC0472z f;

    public a(int i5, int i6, boolean z4, boolean z5, Set set, AbstractC0472z abstractC0472z) {
        B.f.x(i5, "howThisTypeIsUsed");
        B.f.x(i6, "flexibility");
        this.f758a = i5;
        this.f759b = i6;
        this.f760c = z4;
        this.f761d = z5;
        this.f762e = set;
        this.f = abstractC0472z;
    }

    public static a a(a aVar, int i5, boolean z4, Set set, AbstractC0472z abstractC0472z, int i6) {
        int i7 = aVar.f758a;
        if ((i6 & 2) != 0) {
            i5 = aVar.f759b;
        }
        int i8 = i5;
        if ((i6 & 4) != 0) {
            z4 = aVar.f760c;
        }
        boolean z5 = z4;
        boolean z6 = aVar.f761d;
        if ((i6 & 16) != 0) {
            set = aVar.f762e;
        }
        Set set2 = set;
        if ((i6 & 32) != 0) {
            abstractC0472z = aVar.f;
        }
        aVar.getClass();
        B.f.x(i7, "howThisTypeIsUsed");
        B.f.x(i8, "flexibility");
        return new a(i7, i8, z5, z6, set2, abstractC0472z);
    }

    public final a b(int i5) {
        B.f.x(i5, "flexibility");
        return a(this, i5, false, null, null, 61);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (i.a(aVar.f, this.f)) {
            return aVar.f758a == this.f758a && aVar.f759b == this.f759b && aVar.f760c == this.f760c && aVar.f761d == this.f761d;
        }
        return false;
    }

    public final int hashCode() {
        AbstractC0472z abstractC0472z = this.f;
        int iHashCode = abstractC0472z != null ? abstractC0472z.hashCode() : 0;
        int iF = Q0.f(this.f758a) + (iHashCode * 31) + iHashCode;
        int iF2 = Q0.f(this.f759b) + (iF * 31) + iF;
        int i5 = (iF2 * 31) + (this.f760c ? 1 : 0) + iF2;
        return (i5 * 31) + (this.f761d ? 1 : 0) + i5;
    }

    public final String toString() {
        return "JavaTypeAttributes(howThisTypeIsUsed=" + AbstractC0432c.m(this.f758a) + ", flexibility=" + B.f.H(this.f759b) + ", isRaw=" + this.f760c + ", isForAnnotationParameter=" + this.f761d + ", visitedTypeParameters=" + this.f762e + ", defaultType=" + this.f + ')';
    }

    public /* synthetic */ a(int i5, boolean z4, boolean z5, Set set, int i6) {
        this(i5, 1, (i6 & 4) != 0 ? false : z4, (i6 & 8) != 0 ? false : z5, (i6 & 16) != 0 ? null : set, null);
    }
}
