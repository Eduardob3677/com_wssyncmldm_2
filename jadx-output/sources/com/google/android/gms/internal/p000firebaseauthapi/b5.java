package com.google.android.gms.internal.p000firebaseauthapi;

import J.Q;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import j0.J;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class b5 {

    /* renamed from: a, reason: collision with root package name */
    public int f5521a;

    /* renamed from: b, reason: collision with root package name */
    public int f5522b;

    /* renamed from: c, reason: collision with root package name */
    public int f5523c = 0;

    /* renamed from: d, reason: collision with root package name */
    public Object f5524d;

    public b5(a5 a5Var) {
        Charset charset = AbstractC0243d.f5546a;
        this.f5524d = a5Var;
        a5Var.f5516g = this;
    }

    public void A(List list) throws C0255f {
        int iF;
        int i5 = this.f5521a & 7;
        a5 a5Var = (a5) this.f5524d;
        if (i5 == 1) {
            do {
                list.add(Double.valueOf(Double.longBitsToDouble(a5Var.g())));
                if (a5Var.j()) {
                    return;
                } else {
                    iF = a5Var.f();
                }
            } while (iF == this.f5521a);
            this.f5523c = iF;
            return;
        }
        if (i5 != 2) {
            throw C0255f.a();
        }
        int iE = a5Var.e();
        if ((iE & 7) != 0) {
            throw C0255f.d();
        }
        int i6 = a5Var.f5514d + iE;
        do {
            list.add(Double.valueOf(Double.longBitsToDouble(a5Var.g())));
        } while (a5Var.f5514d < i6);
    }

    public void B(List list) throws C0255f {
        int iF;
        int i5 = this.f5521a & 7;
        a5 a5Var = (a5) this.f5524d;
        if (i5 == 0) {
            do {
                list.add(Integer.valueOf(a5Var.e()));
                if (a5Var.j()) {
                    return;
                } else {
                    iF = a5Var.f();
                }
            } while (iF == this.f5521a);
            this.f5523c = iF;
            return;
        }
        if (i5 != 2) {
            throw C0255f.a();
        }
        int iE = a5Var.f5514d + a5Var.e();
        do {
            list.add(Integer.valueOf(a5Var.e()));
        } while (a5Var.f5514d < iE);
        s(iE);
    }

    public void C(List list) throws C0255f {
        int iF;
        int i5 = this.f5521a & 7;
        a5 a5Var = (a5) this.f5524d;
        if (i5 == 2) {
            int iE = a5Var.e();
            if ((iE & 3) != 0) {
                throw C0255f.d();
            }
            int i6 = a5Var.f5514d + iE;
            do {
                list.add(Integer.valueOf(a5Var.d()));
            } while (a5Var.f5514d < i6);
            return;
        }
        if (i5 != 5) {
            throw C0255f.a();
        }
        do {
            list.add(Integer.valueOf(a5Var.d()));
            if (a5Var.j()) {
                return;
            } else {
                iF = a5Var.f();
            }
        } while (iF == this.f5521a);
        this.f5523c = iF;
    }

    public void a(int i5, int i6) {
        if (i5 < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i6 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i7 = this.f5523c;
        int i8 = i7 * 2;
        int[] iArr = (int[]) this.f5524d;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.f5524d = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i8 >= iArr.length) {
            int[] iArr3 = new int[i7 * 4];
            this.f5524d = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = (int[]) this.f5524d;
        iArr4[i8] = i5;
        iArr4[i8 + 1] = i6;
        this.f5523c++;
    }

    public void b() {
        int i5 = this.f5523c;
        View view = (View) this.f5524d;
        int top = i5 - (view.getTop() - this.f5521a);
        WeakHashMap weakHashMap = Q.f940a;
        view.offsetTopAndBottom(top);
        view.offsetLeftAndRight(0 - (view.getLeft() - this.f5522b));
    }

    public void c(RecyclerView recyclerView, boolean z4) {
        this.f5523c = 0;
        int[] iArr = (int[]) this.f5524d;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        J j3 = recyclerView.f4884p;
        if (recyclerView.f4883o == null || j3 == null || !j3.f7346i) {
            return;
        }
        if (z4) {
            if (!recyclerView.f4860g.g()) {
                j3.i(recyclerView.f4883o.a(), this);
            }
        } else if (!recyclerView.Z()) {
            j3.h(this.f5521a, this.f5522b, recyclerView.l0, this);
        }
        int i5 = this.f5523c;
        if (i5 > j3.f7347j) {
            j3.f7347j = i5;
            j3.f7348k = z4;
            recyclerView.f4855e.m();
        }
    }

    public void d(List list) throws C0255f {
        int iF;
        int i5 = this.f5521a & 7;
        a5 a5Var = (a5) this.f5524d;
        if (i5 == 1) {
            do {
                list.add(Long.valueOf(a5Var.g()));
                if (a5Var.j()) {
                    return;
                } else {
                    iF = a5Var.f();
                }
            } while (iF == this.f5521a);
            this.f5523c = iF;
            return;
        }
        if (i5 != 2) {
            throw C0255f.a();
        }
        int iE = a5Var.e();
        if ((iE & 7) != 0) {
            throw C0255f.d();
        }
        int i6 = a5Var.f5514d + iE;
        do {
            list.add(Long.valueOf(a5Var.g()));
        } while (a5Var.f5514d < i6);
    }

    public void e(List list) throws C0255f {
        int iF;
        int i5 = this.f5521a & 7;
        a5 a5Var = (a5) this.f5524d;
        if (i5 == 2) {
            int iE = a5Var.e();
            if ((iE & 3) != 0) {
                throw C0255f.d();
            }
            int i6 = a5Var.f5514d + iE;
            do {
                list.add(Float.valueOf(Float.intBitsToFloat(a5Var.d())));
            } while (a5Var.f5514d < i6);
            return;
        }
        if (i5 != 5) {
            throw C0255f.a();
        }
        do {
            list.add(Float.valueOf(Float.intBitsToFloat(a5Var.d())));
            if (a5Var.j()) {
                return;
            } else {
                iF = a5Var.f();
            }
        } while (iF == this.f5521a);
        this.f5523c = iF;
    }

    public void f(List list, A a3, g5 g5Var) throws C0255f {
        int iF;
        int i5 = this.f5521a;
        if ((i5 & 7) != 3) {
            throw C0255f.a();
        }
        do {
            list.add(q(a3, g5Var));
            a5 a5Var = (a5) this.f5524d;
            if (a5Var.j() || this.f5523c != 0) {
                return;
            } else {
                iF = a5Var.f();
            }
        } while (iF == i5);
        this.f5523c = iF;
    }

    public void g(List list) throws C0255f {
        int iF;
        int i5 = this.f5521a & 7;
        a5 a5Var = (a5) this.f5524d;
        if (i5 == 0) {
            do {
                list.add(Integer.valueOf(a5Var.e()));
                if (a5Var.j()) {
                    return;
                } else {
                    iF = a5Var.f();
                }
            } while (iF == this.f5521a);
            this.f5523c = iF;
            return;
        }
        if (i5 != 2) {
            throw C0255f.a();
        }
        int iE = a5Var.f5514d + a5Var.e();
        do {
            list.add(Integer.valueOf(a5Var.e()));
        } while (a5Var.f5514d < iE);
        s(iE);
    }

    public void h(List list) throws C0255f {
        int iF;
        int i5 = this.f5521a & 7;
        a5 a5Var = (a5) this.f5524d;
        if (i5 == 0) {
            do {
                list.add(Long.valueOf(a5Var.h()));
                if (a5Var.j()) {
                    return;
                } else {
                    iF = a5Var.f();
                }
            } while (iF == this.f5521a);
            this.f5523c = iF;
            return;
        }
        if (i5 != 2) {
            throw C0255f.a();
        }
        int iE = a5Var.f5514d + a5Var.e();
        do {
            list.add(Long.valueOf(a5Var.h()));
        } while (a5Var.f5514d < iE);
        s(iE);
    }

    public void i(List list, A a3, g5 g5Var) throws C0255f {
        int iF;
        int i5 = this.f5521a;
        if ((i5 & 7) != 2) {
            throw C0255f.a();
        }
        do {
            list.add(r(a3, g5Var));
            a5 a5Var = (a5) this.f5524d;
            if (a5Var.j() || this.f5523c != 0) {
                return;
            } else {
                iF = a5Var.f();
            }
        } while (iF == i5);
        this.f5523c = iF;
    }

    public void j(List list) throws C0255f {
        int iF;
        int i5 = this.f5521a & 7;
        a5 a5Var = (a5) this.f5524d;
        if (i5 == 2) {
            int iE = a5Var.e();
            if ((iE & 3) != 0) {
                throw C0255f.d();
            }
            int i6 = a5Var.f5514d + iE;
            do {
                list.add(Integer.valueOf(a5Var.d()));
            } while (a5Var.f5514d < i6);
            return;
        }
        if (i5 != 5) {
            throw C0255f.a();
        }
        do {
            list.add(Integer.valueOf(a5Var.d()));
            if (a5Var.j()) {
                return;
            } else {
                iF = a5Var.f();
            }
        } while (iF == this.f5521a);
        this.f5523c = iF;
    }

    public void k(List list) throws C0255f {
        int iF;
        int i5 = this.f5521a & 7;
        a5 a5Var = (a5) this.f5524d;
        if (i5 == 1) {
            do {
                list.add(Long.valueOf(a5Var.g()));
                if (a5Var.j()) {
                    return;
                } else {
                    iF = a5Var.f();
                }
            } while (iF == this.f5521a);
            this.f5523c = iF;
            return;
        }
        if (i5 != 2) {
            throw C0255f.a();
        }
        int iE = a5Var.e();
        if ((iE & 7) != 0) {
            throw C0255f.d();
        }
        int i6 = a5Var.f5514d + iE;
        do {
            list.add(Long.valueOf(a5Var.g()));
        } while (a5Var.f5514d < i6);
    }

    public void l(List list) throws C0255f {
        int iF;
        int i5 = this.f5521a & 7;
        a5 a5Var = (a5) this.f5524d;
        if (i5 == 0) {
            do {
                list.add(Integer.valueOf(a5.k(a5Var.e())));
                if (a5Var.j()) {
                    return;
                } else {
                    iF = a5Var.f();
                }
            } while (iF == this.f5521a);
            this.f5523c = iF;
            return;
        }
        if (i5 != 2) {
            throw C0255f.a();
        }
        int iE = a5Var.f5514d + a5Var.e();
        do {
            list.add(Integer.valueOf(a5.k(a5Var.e())));
        } while (a5Var.f5514d < iE);
        s(iE);
    }

    public void m(List list) throws C0255f {
        int iF;
        int i5 = this.f5521a & 7;
        a5 a5Var = (a5) this.f5524d;
        if (i5 == 0) {
            do {
                list.add(Long.valueOf(a5.l(a5Var.h())));
                if (a5Var.j()) {
                    return;
                } else {
                    iF = a5Var.f();
                }
            } while (iF == this.f5521a);
            this.f5523c = iF;
            return;
        }
        if (i5 != 2) {
            throw C0255f.a();
        }
        int iE = a5Var.f5514d + a5Var.e();
        do {
            list.add(Long.valueOf(a5.l(a5Var.h())));
        } while (a5Var.f5514d < iE);
        s(iE);
    }

    public void n(List list, boolean z4) throws C0255f {
        int iF;
        int iF2;
        if ((this.f5521a & 7) != 2) {
            throw C0255f.a();
        }
        boolean z5 = list instanceof InterfaceC0273i;
        a5 a5Var = (a5) this.f5524d;
        if (!z5 || z4) {
            do {
                list.add(z4 ? x() : w());
                if (a5Var.j()) {
                    return;
                } else {
                    iF = a5Var.f();
                }
            } while (iF == this.f5521a);
            this.f5523c = iF;
            return;
        }
        InterfaceC0273i interfaceC0273i = (InterfaceC0273i) list;
        do {
            interfaceC0273i.e(v());
            if (a5Var.j()) {
                return;
            } else {
                iF2 = a5Var.f();
            }
        } while (iF2 == this.f5521a);
        this.f5523c = iF2;
    }

    public void o(List list) throws C0255f {
        int iF;
        int i5 = this.f5521a & 7;
        a5 a5Var = (a5) this.f5524d;
        if (i5 == 0) {
            do {
                list.add(Integer.valueOf(a5Var.e()));
                if (a5Var.j()) {
                    return;
                } else {
                    iF = a5Var.f();
                }
            } while (iF == this.f5521a);
            this.f5523c = iF;
            return;
        }
        if (i5 != 2) {
            throw C0255f.a();
        }
        int iE = a5Var.f5514d + a5Var.e();
        do {
            list.add(Integer.valueOf(a5Var.e()));
        } while (a5Var.f5514d < iE);
        s(iE);
    }

    public void p(List list) throws C0255f {
        int iF;
        int i5 = this.f5521a & 7;
        a5 a5Var = (a5) this.f5524d;
        if (i5 == 0) {
            do {
                list.add(Long.valueOf(a5Var.h()));
                if (a5Var.j()) {
                    return;
                } else {
                    iF = a5Var.f();
                }
            } while (iF == this.f5521a);
            this.f5523c = iF;
            return;
        }
        if (i5 != 2) {
            throw C0255f.a();
        }
        int iE = a5Var.f5514d + a5Var.e();
        do {
            list.add(Long.valueOf(a5Var.h()));
        } while (a5Var.f5514d < iE);
        s(iE);
    }

    public Object q(A a3, g5 g5Var) {
        int i5 = this.f5522b;
        this.f5522b = ((this.f5521a >>> 3) << 3) | 4;
        try {
            Object objA = a3.a();
            a3.c(objA, this, g5Var);
            a3.b(objA);
            if (this.f5521a == this.f5522b) {
                return objA;
            }
            throw C0255f.d();
        } finally {
            this.f5522b = i5;
        }
    }

    public Object r(A a3, g5 g5Var) throws C0255f {
        a5 a5Var = (a5) this.f5524d;
        int iE = a5Var.e();
        if (a5Var.f5511a >= 100) {
            throw new C0255f("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iC = a5Var.c(iE);
        Object objA = a3.a();
        a5Var.f5511a++;
        a3.c(objA, this, g5Var);
        a3.b(objA);
        if (a5Var.f5515e != 0) {
            throw new C0255f("Protocol message end-group tag did not match expected tag.");
        }
        a5Var.f5511a--;
        a5Var.f = iC;
        int i5 = a5Var.f5512b + a5Var.f5513c;
        a5Var.f5512b = i5;
        if (i5 > iC) {
            int i6 = i5 - iC;
            a5Var.f5513c = i6;
            a5Var.f5512b = i5 - i6;
        } else {
            a5Var.f5513c = 0;
        }
        return objA;
    }

    public void s(int i5) throws C0255f {
        if (((a5) this.f5524d).f5514d != i5) {
            throw C0255f.e();
        }
    }

    public void t(int i5) throws C0249e {
        if ((this.f5521a & 7) != i5) {
            throw C0255f.a();
        }
    }

    public int u() throws C0255f {
        int iF = this.f5523c;
        if (iF != 0) {
            this.f5521a = iF;
            this.f5523c = 0;
        } else {
            iF = ((a5) this.f5524d).f();
            this.f5521a = iF;
        }
        if (iF == 0 || iF == this.f5522b) {
            return Integer.MAX_VALUE;
        }
        return iF >>> 3;
    }

    public Y4 v() throws C0255f {
        t(2);
        a5 a5Var = (a5) this.f5524d;
        int iE = a5Var.e();
        byte[] bArr = (byte[]) a5Var.f5517h;
        if (iE > 0) {
            int i5 = a5Var.f5512b;
            int i6 = a5Var.f5514d;
            if (iE <= i5 - i6) {
                Y4 y4Q = Z4.q(bArr, i6, iE);
                a5Var.f5514d += iE;
                return y4Q;
            }
        }
        if (iE == 0) {
            return Z4.f5499d;
        }
        if (iE > 0) {
            int i7 = a5Var.f5512b;
            int i8 = a5Var.f5514d;
            if (iE <= i7 - i8) {
                int i9 = iE + i8;
                a5Var.f5514d = i9;
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i8, i9);
                Y4 y4 = Z4.f5499d;
                return new Y4(bArrCopyOfRange);
            }
        }
        if (iE <= 0) {
            throw C0255f.c();
        }
        throw C0255f.e();
    }

    public String w() throws C0255f {
        t(2);
        a5 a5Var = (a5) this.f5524d;
        int iE = a5Var.e();
        if (iE > 0) {
            int i5 = a5Var.f5512b;
            int i6 = a5Var.f5514d;
            if (iE <= i5 - i6) {
                String str = new String((byte[]) a5Var.f5517h, i6, iE, AbstractC0243d.f5546a);
                a5Var.f5514d += iE;
                return str;
            }
        }
        if (iE == 0) {
            return "";
        }
        if (iE < 0) {
            throw C0255f.c();
        }
        throw C0255f.e();
    }

    public String x() throws C0255f {
        t(2);
        a5 a5Var = (a5) this.f5524d;
        int iE = a5Var.e();
        if (iE > 0) {
            int i5 = a5Var.f5512b;
            int i6 = a5Var.f5514d;
            if (iE <= i5 - i6) {
                String strD = O.d((byte[]) a5Var.f5517h, i6, iE);
                a5Var.f5514d += iE;
                return strD;
            }
        }
        if (iE == 0) {
            return "";
        }
        if (iE <= 0) {
            throw C0255f.c();
        }
        throw C0255f.e();
    }

    public void y(List list) throws C0255f {
        int iF;
        int i5 = this.f5521a & 7;
        a5 a5Var = (a5) this.f5524d;
        if (i5 != 0) {
            if (i5 != 2) {
                throw C0255f.a();
            }
            int iE = a5Var.f5514d + a5Var.e();
            do {
                list.add(Boolean.valueOf(a5Var.h() != 0));
            } while (a5Var.f5514d < iE);
            s(iE);
            return;
        }
        do {
            list.add(Boolean.valueOf(a5Var.h() != 0));
            if (a5Var.j()) {
                return;
            } else {
                iF = a5Var.f();
            }
        } while (iF == this.f5521a);
        this.f5523c = iF;
    }

    public void z(List list) throws C0255f {
        int iF;
        if ((this.f5521a & 7) != 2) {
            throw C0255f.a();
        }
        do {
            list.add(v());
            a5 a5Var = (a5) this.f5524d;
            if (a5Var.j()) {
                return;
            } else {
                iF = a5Var.f();
            }
        } while (iF == this.f5521a);
        this.f5523c = iF;
    }
}
