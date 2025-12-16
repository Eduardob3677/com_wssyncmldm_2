package L0;

import android.os.Process;
import android.util.Log;

/* loaded from: classes.dex */
public final class h implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1325c;

    /* renamed from: d, reason: collision with root package name */
    public final Runnable f1326d;

    public /* synthetic */ h(Runnable runnable, int i5) {
        this.f1325c = i5;
        this.f1326d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() throws SecurityException, IllegalArgumentException {
        switch (this.f1325c) {
            case 0:
                try {
                    this.f1326d.run();
                    break;
                } catch (Exception e5) {
                    Log.e("TransportRuntime.".concat("Executor"), "Background execution failure.", e5);
                    return;
                }
            default:
                Process.setThreadPriority(0);
                this.f1326d.run();
                break;
        }
    }
}
