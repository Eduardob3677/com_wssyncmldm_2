package androidx.activity;

import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.fragment.app.G;

/* loaded from: classes.dex */
public final class k implements j, ViewTreeObserver.OnDrawListener, Runnable {

    /* renamed from: d, reason: collision with root package name */
    public Runnable f3162d;
    public final /* synthetic */ ComponentActivity f;

    /* renamed from: c, reason: collision with root package name */
    public final long f3161c = SystemClock.uptimeMillis() + 10000;

    /* renamed from: e, reason: collision with root package name */
    public boolean f3163e = false;

    public k(G g5) {
        this.f = g5;
    }

    @Override // androidx.activity.j
    public final void a(View view) {
        if (this.f3163e) {
            return;
        }
        this.f3163e = true;
        view.getViewTreeObserver().addOnDrawListener(this);
    }

    public final void b() {
        ComponentActivity componentActivity = this.f;
        componentActivity.getWindow().getDecorView().removeCallbacks(this);
        componentActivity.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f3162d = runnable;
        View decorView = this.f.getWindow().getDecorView();
        if (!this.f3163e) {
            decorView.postOnAnimation(new D1.b(8, this));
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            decorView.invalidate();
        } else {
            decorView.postInvalidate();
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        boolean z4;
        Runnable runnable = this.f3162d;
        if (runnable == null) {
            if (SystemClock.uptimeMillis() > this.f3161c) {
                this.f3163e = false;
                this.f.getWindow().getDecorView().post(this);
                return;
            }
            return;
        }
        runnable.run();
        this.f3162d = null;
        m mVar = this.f.mFullyDrawnReporter;
        synchronized (mVar.f3167a) {
            z4 = mVar.f3168b;
        }
        if (z4) {
            this.f3163e = false;
            this.f.getWindow().getDecorView().post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
    }
}
