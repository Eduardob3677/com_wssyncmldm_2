package J;

import android.view.View;
import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public final class r implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: c, reason: collision with root package name */
    public final View f1003c;

    /* renamed from: d, reason: collision with root package name */
    public ViewTreeObserver f1004d;

    /* renamed from: e, reason: collision with root package name */
    public final Runnable f1005e;

    public r(View view, Runnable runnable) {
        this.f1003c = view;
        this.f1004d = view.getViewTreeObserver();
        this.f1005e = runnable;
    }

    public static void a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        if (runnable == null) {
            throw new NullPointerException("runnable == null");
        }
        r rVar = new r(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(rVar);
        view.addOnAttachStateChangeListener(rVar);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        boolean zIsAlive = this.f1004d.isAlive();
        View view = this.f1003c;
        if (zIsAlive) {
            this.f1004d.removeOnPreDrawListener(this);
        } else {
            view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view.removeOnAttachStateChangeListener(this);
        this.f1005e.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f1004d = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        boolean zIsAlive = this.f1004d.isAlive();
        View view2 = this.f1003c;
        if (zIsAlive) {
            this.f1004d.removeOnPreDrawListener(this);
        } else {
            view2.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view2.removeOnAttachStateChangeListener(this);
    }
}
