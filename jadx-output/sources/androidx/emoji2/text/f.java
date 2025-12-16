package androidx.emoji2.text;

import android.graphics.Rect;
import android.view.View;
import j0.C0550w;
import j0.J;

/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public int f3691a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3692b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f3693c;

    public f(J j3) {
        this.f3691a = Integer.MIN_VALUE;
        this.f3693c = new Rect();
        this.f3692b = j3;
    }

    public static f a(J j3, int i5) {
        if (i5 == 0) {
            return new C0550w(j3, 0);
        }
        if (i5 == 1) {
            return new C0550w(j3, 1);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public int m() {
        if (Integer.MIN_VALUE == this.f3691a) {
            return 0;
        }
        return l() - this.f3691a;
    }

    public abstract int n(View view);

    public abstract int o(View view);

    public abstract void p(int i5);

    public f(i iVar) {
        this.f3691a = 0;
        this.f3693c = new c();
        this.f3692b = iVar;
    }
}
