package L0;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class i implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1327c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f1328d;

    public i() {
        this.f1327c = 1;
        this.f1328d = new Handler(Looper.getMainLooper());
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f1327c) {
            case 0:
                ((Executor) this.f1328d).execute(new h(runnable, 0));
                break;
            default:
                ((Handler) this.f1328d).post(runnable);
                break;
        }
    }

    public i(ExecutorService executorService) {
        this.f1327c = 0;
        this.f1328d = executorService;
    }
}
