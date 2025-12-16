package w;

import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes.dex */
public final class e implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout f9572c;

    public e(CoordinatorLayout coordinatorLayout) {
        this.f9572c = coordinatorLayout;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        this.f9572c.p(0);
        return true;
    }
}
