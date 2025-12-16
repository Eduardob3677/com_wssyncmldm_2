package e;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class J implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6661c;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f6661c) {
            case 0:
                new Thread(runnable).start();
                break;
            default:
                runnable.run();
                break;
        }
    }
}
