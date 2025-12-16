package G;

import android.os.Process;

/* loaded from: classes.dex */
public final class j extends Thread {

    /* renamed from: c, reason: collision with root package name */
    public final int f799c;

    public j(Runnable runnable, String str, int i5) {
        super(runnable, str);
        this.f799c = i5;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws SecurityException, IllegalArgumentException {
        Process.setThreadPriority(this.f799c);
        super.run();
    }
}
