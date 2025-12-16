package k;

import java.util.WeakHashMap;

/* renamed from: k.u0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0627u0 implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8010c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0633x0 f8011d;

    public /* synthetic */ RunnableC0627u0(C0633x0 c0633x0, int i5) {
        this.f8010c = i5;
        this.f8011d = c0633x0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0633x0 c0633x0 = this.f8011d;
        switch (this.f8010c) {
            case 0:
                C0606l0 c0606l0 = c0633x0.f8031e;
                if (c0606l0 != null) {
                    c0606l0.setListSelectionHidden(true);
                    c0606l0.requestLayout();
                    break;
                }
                break;
            default:
                C0606l0 c0606l02 = c0633x0.f8031e;
                if (c0606l02 != null) {
                    WeakHashMap weakHashMap = J.Q.f940a;
                    if (c0606l02.isAttachedToWindow() && c0633x0.f8031e.getCount() > c0633x0.f8031e.getChildCount() && c0633x0.f8031e.getChildCount() <= c0633x0.f8038m) {
                        c0633x0.f8050z.setInputMethodMode(2);
                        c0633x0.r();
                        break;
                    }
                }
                break;
        }
    }
}
