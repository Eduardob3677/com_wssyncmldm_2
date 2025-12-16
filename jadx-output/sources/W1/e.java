package W1;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class e implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public static final Handler f2817c = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        f2817c.post(runnable);
    }
}
