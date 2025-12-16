package n2;

import Z0.h;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import l2.j;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: d, reason: collision with root package name */
    public static final long f8329d = TimeUnit.HOURS.toMillis(24);

    /* renamed from: e, reason: collision with root package name */
    public static final long f8330e = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: a, reason: collision with root package name */
    public final j f8331a;

    /* renamed from: b, reason: collision with root package name */
    public long f8332b;

    /* renamed from: c, reason: collision with root package name */
    public int f8333c;

    public d() {
        if (h.f3012g == null) {
            Pattern pattern = j.f8099c;
            h.f3012g = new h(16);
        }
        h hVar = h.f3012g;
        if (j.f8100d == null) {
            j.f8100d = new j(hVar);
        }
        this.f8331a = j.f8100d;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized boolean a() {
        boolean z4;
        if (this.f8333c != 0) {
            this.f8331a.f8101a.getClass();
            z4 = System.currentTimeMillis() > this.f8332b;
        }
        return z4;
    }

    public final synchronized void b(int i5) {
        long jMin;
        if ((i5 >= 200 && i5 < 300) || i5 == 401 || i5 == 404) {
            synchronized (this) {
                this.f8333c = 0;
            }
            return;
        }
        this.f8333c++;
        synchronized (this) {
            if (i5 == 429 || (i5 >= 500 && i5 < 600)) {
                double dPow = Math.pow(2.0d, this.f8333c);
                this.f8331a.getClass();
                jMin = (long) Math.min(dPow + ((long) (Math.random() * 1000.0d)), f8330e);
            } else {
                jMin = f8329d;
            }
            this.f8331a.f8101a.getClass();
            this.f8332b = System.currentTimeMillis() + jMin;
        }
        return;
    }
}
