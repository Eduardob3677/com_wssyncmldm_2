package k;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;

/* renamed from: k.L, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0566L implements PopupWindow.OnDismissListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f7713c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0567M f7714d;

    public C0566L(C0567M c0567m, ViewTreeObserverOnGlobalLayoutListenerC0559E viewTreeObserverOnGlobalLayoutListenerC0559E) {
        this.f7714d = c0567m;
        this.f7713c = viewTreeObserverOnGlobalLayoutListenerC0559E;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.f7714d.f7719G.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f7713c);
        }
    }
}
