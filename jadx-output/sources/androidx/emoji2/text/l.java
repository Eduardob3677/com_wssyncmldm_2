package androidx.emoji2.text;

import android.os.Trace;

/* loaded from: classes.dex */
public final class l implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        try {
            Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
            if (j.f3695j != null) {
                j.a().c();
            }
        } finally {
            Trace.endSection();
        }
    }
}
