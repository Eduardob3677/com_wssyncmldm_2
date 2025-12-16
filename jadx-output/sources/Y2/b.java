package Y2;

import d3.i;

/* loaded from: classes.dex */
public class b extends X2.b {
    @Override // X2.b
    public final void a(Throwable th, Throwable th2) {
        i.e("cause", th);
        i.e("exception", th2);
        Integer num = a.f2963a;
        if (num == null || num.intValue() >= 19) {
            th.addSuppressed(th2);
        } else {
            super.a(th, th2);
        }
    }
}
