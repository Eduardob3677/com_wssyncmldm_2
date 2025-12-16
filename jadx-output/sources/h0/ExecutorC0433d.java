package h0;

import java.util.concurrent.Executor;
import l.C0640a;

/* renamed from: h0.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class ExecutorC0433d implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6968c;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f6968c) {
            case 0:
                runnable.run();
                break;
            default:
                C0640a.R().f.f8072g.execute(runnable);
                break;
        }
    }
}
