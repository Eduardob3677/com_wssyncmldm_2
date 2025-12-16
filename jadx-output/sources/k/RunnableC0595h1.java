package k;

import androidx.appcompat.widget.SeslProgressBar;

/* renamed from: k.h1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0595h1 implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7859c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ SeslProgressBar f7860d;

    public /* synthetic */ RunnableC0595h1(SeslProgressBar seslProgressBar, int i5) {
        this.f7859c = i5;
        this.f7860d = seslProgressBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7859c) {
            case 0:
                this.f7860d.sendAccessibilityEvent(4);
                return;
            default:
                synchronized (this.f7860d) {
                    try {
                        int size = this.f7860d.f3439W.size();
                        for (int i5 = 0; i5 < size; i5++) {
                            C0610m1 c0610m1 = (C0610m1) this.f7860d.f3439W.get(i5);
                            this.f7860d.e(c0610m1.f7935a, c0610m1.f7936b, c0610m1.f7937c, true, c0610m1.f7938d);
                            C0610m1.f7934e.c(c0610m1);
                        }
                        this.f7860d.f3439W.clear();
                        this.f7860d.f3435R = false;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}
