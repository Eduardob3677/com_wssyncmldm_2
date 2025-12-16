package i3;

import h0.AbstractC0432c;
import k.Q0;
import l3.l0;

/* renamed from: i3.r, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0497r {

    /* renamed from: c, reason: collision with root package name */
    public static final C0497r f7153c = new C0497r(0, null);

    /* renamed from: a, reason: collision with root package name */
    public final int f7154a;

    /* renamed from: b, reason: collision with root package name */
    public final d3.j f7155b;

    public C0497r(int i5, l0 l0Var) {
        String str;
        this.f7154a = i5;
        this.f7155b = l0Var;
        if ((i5 == 0) == (l0Var == null)) {
            return;
        }
        if (i5 == 0) {
            str = "Star projection must have no type specified.";
        } else {
            str = "The projection variance " + AbstractC0432c.o(i5) + " requires type to be specified.";
        }
        throw new IllegalArgumentException(str.toString());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0497r)) {
            return false;
        }
        C0497r c0497r = (C0497r) obj;
        return this.f7154a == c0497r.f7154a && d3.i.a(this.f7155b, c0497r.f7155b);
    }

    public final int hashCode() {
        int i5 = this.f7154a;
        int iF = (i5 == 0 ? 0 : Q0.f(i5)) * 31;
        d3.j jVar = this.f7155b;
        return iF + (jVar != null ? jVar.hashCode() : 0);
    }

    public final String toString() {
        int i5 = this.f7154a;
        int i6 = i5 == 0 ? -1 : AbstractC0496q.f7152a[Q0.f(i5)];
        if (i6 == -1) {
            return "*";
        }
        d3.j jVar = this.f7155b;
        if (i6 == 1) {
            return String.valueOf(jVar);
        }
        if (i6 == 2) {
            return "in " + jVar;
        }
        if (i6 != 3) {
            throw new A0.c();
        }
        return "out " + jVar;
    }
}
