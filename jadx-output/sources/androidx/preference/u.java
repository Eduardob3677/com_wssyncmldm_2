package androidx.preference;

import android.view.View;
import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public final class u implements View.OnAttachStateChangeListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ z f4734c;

    public u(z zVar) {
        this.f4734c = zVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        z zVar = this.f4734c;
        viewTreeObserver.removeOnPreDrawListener(zVar.mOnPreDrawListener);
        view.removeOnAttachStateChangeListener(this);
        zVar.mOnPreDrawListener = null;
    }
}
