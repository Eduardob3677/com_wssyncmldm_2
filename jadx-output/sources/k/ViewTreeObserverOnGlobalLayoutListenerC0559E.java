package k;

import android.view.ViewTreeObserver;
import androidx.appcompat.widget.AppCompatSpinner;

/* renamed from: k.E, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC0559E implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7674c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f7675d;

    public /* synthetic */ ViewTreeObserverOnGlobalLayoutListenerC0559E(int i5, Object obj) {
        this.f7674c = i5;
        this.f7675d = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        switch (this.f7674c) {
            case 0:
                AppCompatSpinner appCompatSpinner = (AppCompatSpinner) this.f7675d;
                if (!appCompatSpinner.getInternalPopup().b()) {
                    appCompatSpinner.f3349h.e(AbstractC0561G.b(appCompatSpinner), AbstractC0561G.a(appCompatSpinner));
                }
                ViewTreeObserver viewTreeObserver = appCompatSpinner.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    AbstractC0560F.a(viewTreeObserver, this);
                    break;
                }
                break;
            default:
                C0567M c0567m = (C0567M) this.f7675d;
                c0567m.s();
                c0567m.r();
                break;
        }
    }
}
