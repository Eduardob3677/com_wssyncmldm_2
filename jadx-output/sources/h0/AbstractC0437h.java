package h0;

import android.view.Choreographer;

/* renamed from: h0.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0437h {
    public static void a(final Runnable runnable) {
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: h0.g
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j3) {
                runnable.run();
            }
        });
    }
}
