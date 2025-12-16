package S1;

import J.Q;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import j.ViewOnKeyListenerC0525z;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class m implements View.OnAttachStateChangeListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2497c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f2498d;

    public /* synthetic */ m(int i5, Object obj) {
        this.f2497c = i5;
        this.f2498d = obj;
    }

    private final void a(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        AccessibilityManager accessibilityManager;
        switch (this.f2497c) {
            case 0:
                n nVar = (n) this.f2498d;
                if (nVar.f2517w != null && (accessibilityManager = nVar.f2516v) != null) {
                    WeakHashMap weakHashMap = Q.f940a;
                    if (nVar.isAttachedToWindow()) {
                        accessibilityManager.addTouchExplorationStateChangeListener(new K.b(nVar.f2517w));
                        break;
                    }
                }
                break;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        AccessibilityManager accessibilityManager;
        switch (this.f2497c) {
            case 0:
                n nVar = (n) this.f2498d;
                A2.b bVar = nVar.f2517w;
                if (bVar != null && (accessibilityManager = nVar.f2516v) != null) {
                    accessibilityManager.removeTouchExplorationStateChangeListener(new K.b(bVar));
                    break;
                }
                break;
            default:
                ViewOnKeyListenerC0525z viewOnKeyListenerC0525z = (ViewOnKeyListenerC0525z) this.f2498d;
                ViewTreeObserver viewTreeObserver = viewOnKeyListenerC0525z.f7321u;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        viewOnKeyListenerC0525z.f7321u = view.getViewTreeObserver();
                    }
                    viewOnKeyListenerC0525z.f7321u.removeGlobalOnLayoutListener(viewOnKeyListenerC0525z.f7315o);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
        }
    }
}
