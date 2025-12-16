package androidx.lifecycle;

/* loaded from: classes.dex */
public abstract class B {

    /* renamed from: a, reason: collision with root package name */
    public final G f3987a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3988b;

    /* renamed from: c, reason: collision with root package name */
    public int f3989c = -1;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C f3990d;

    public B(C c2, G g5) {
        this.f3990d = c2;
        this.f3987a = g5;
    }

    public final void b(boolean z4) {
        if (z4 == this.f3988b) {
            return;
        }
        this.f3988b = z4;
        int i5 = z4 ? 1 : -1;
        C c2 = this.f3990d;
        int i6 = c2.f3994c;
        c2.f3994c = i5 + i6;
        if (!c2.f3995d) {
            c2.f3995d = true;
            while (true) {
                try {
                    int i7 = c2.f3994c;
                    if (i6 == i7) {
                        break;
                    }
                    boolean z5 = i6 == 0 && i7 > 0;
                    boolean z6 = i6 > 0 && i7 == 0;
                    if (z5) {
                        c2.g();
                    } else if (z6) {
                        c2.h();
                    }
                    i6 = i7;
                } catch (Throwable th) {
                    c2.f3995d = false;
                    throw th;
                }
            }
            c2.f3995d = false;
        }
        if (this.f3988b) {
            c2.c(this);
        }
    }

    public void c() {
    }

    public boolean d(InterfaceC0155w interfaceC0155w) {
        return false;
    }

    public abstract boolean e();
}
