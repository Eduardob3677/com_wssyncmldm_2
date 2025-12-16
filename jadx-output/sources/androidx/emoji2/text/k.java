package androidx.emoji2.text;

import f1.AbstractC0420a;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes.dex */
public final class k extends AbstractC0420a {
    public final /* synthetic */ AbstractC0420a f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ ThreadPoolExecutor f3703g;

    public k(AbstractC0420a abstractC0420a, ThreadPoolExecutor threadPoolExecutor) {
        this.f = abstractC0420a;
        this.f3703g = threadPoolExecutor;
    }

    @Override // f1.AbstractC0420a
    public final void Z(Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.f3703g;
        try {
            this.f.Z(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // f1.AbstractC0420a
    public final void a0(com.google.firebase.messaging.p pVar) {
        ThreadPoolExecutor threadPoolExecutor = this.f3703g;
        try {
            this.f.a0(pVar);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
