package j4;

import R2.u;
import h4.J;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import o3.AbstractC0732i;
import o3.C0728e;
import r3.InterfaceC0804g;

/* loaded from: classes.dex */
public final class g implements J {

    /* renamed from: a, reason: collision with root package name */
    public final h f7615a;

    /* renamed from: b, reason: collision with root package name */
    public final String[] f7616b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7617c;

    public g(h hVar, String... strArr) {
        d3.i.e("formatParams", strArr);
        this.f7615a = hVar;
        this.f7616b = strArr;
        Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length);
        this.f7617c = String.format("[Error type: %s]", Arrays.copyOf(new Object[]{String.format(hVar.f7645c, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length))}, 1));
    }

    @Override // h4.J
    public final AbstractC0732i g() {
        C0728e c0728e = C0728e.f;
        return C0728e.f;
    }

    @Override // h4.J
    public final boolean h() {
        return false;
    }

    @Override // h4.J
    public final InterfaceC0804g i() {
        i.f7647a.getClass();
        return i.f7649c;
    }

    @Override // h4.J
    public final Collection j() {
        return u.f2325c;
    }

    @Override // h4.J
    public final List k() {
        return u.f2325c;
    }

    public final String toString() {
        return this.f7617c;
    }
}
