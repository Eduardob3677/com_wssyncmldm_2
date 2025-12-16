package Q0;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Objects;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ j f2180c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ L0.b f2181d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f2182e;
    public final /* synthetic */ Runnable f;

    public /* synthetic */ f(j jVar, L0.b bVar, int i5, Runnable runnable) {
        this.f2180c = jVar;
        this.f2181d = bVar;
        this.f2182e = i5;
        this.f = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final L0.b bVar = this.f2181d;
        final int i5 = this.f2182e;
        Runnable runnable = this.f;
        final j jVar = this.f2180c;
        S0.c cVar = jVar.f;
        try {
            try {
                R0.c cVar2 = jVar.f2194c;
                Objects.requireNonNull(cVar2);
                ((R0.h) cVar).m(new A2.b(1, cVar2));
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) jVar.f2192a.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    ((R0.h) cVar).m(new S0.b() { // from class: Q0.g
                        @Override // S0.b
                        public final Object execute() {
                            jVar.f2195d.a(bVar, i5 + 1, false);
                            return null;
                        }
                    });
                } else {
                    jVar.a(bVar, i5);
                }
            } catch (S0.a unused) {
                jVar.f2195d.a(bVar, i5 + 1, false);
            }
            runnable.run();
        } catch (Throwable th) {
            runnable.run();
            throw th;
        }
    }
}
