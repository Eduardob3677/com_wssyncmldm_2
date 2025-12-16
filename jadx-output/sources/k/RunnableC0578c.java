package k;

import androidx.appcompat.widget.ActionBarOverlayLayout;

/* renamed from: k.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0578c implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7843c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f7844d;

    public /* synthetic */ RunnableC0578c(ActionBarOverlayLayout actionBarOverlayLayout, int i5) {
        this.f7843c = i5;
        this.f7844d = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7843c) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = this.f7844d;
                actionBarOverlayLayout.h();
                actionBarOverlayLayout.f3319y = actionBarOverlayLayout.f.animate().translationY(0.0f).setListener(actionBarOverlayLayout.f3320z);
                break;
            default:
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.f7844d;
                actionBarOverlayLayout2.h();
                actionBarOverlayLayout2.f3319y = actionBarOverlayLayout2.f.animate().translationY(-actionBarOverlayLayout2.f.getHeight()).setListener(actionBarOverlayLayout2.f3320z);
                break;
        }
    }
}
