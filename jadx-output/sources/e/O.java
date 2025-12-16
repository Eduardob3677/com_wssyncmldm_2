package e;

import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import i.InterfaceC0473a;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class O extends Z0.j {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6676b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Q f6677c;

    public /* synthetic */ O(Q q2, int i5) {
        this.f6676b = i5;
        this.f6677c = q2;
    }

    @Override // J.b0
    public final void c() {
        View view;
        Q q2 = this.f6677c;
        switch (this.f6676b) {
            case 0:
                if (q2.f6696o && (view = q2.f6689g) != null) {
                    view.setTranslationY(0.0f);
                    q2.f6687d.setTranslationY(0.0f);
                }
                q2.f6687d.setVisibility(8);
                q2.f6687d.setTransitioning(false);
                q2.f6700s = null;
                InterfaceC0473a interfaceC0473a = q2.f6693k;
                if (interfaceC0473a != null) {
                    interfaceC0473a.n(q2.f6692j);
                    q2.f6692j = null;
                    q2.f6693k = null;
                }
                ActionBarOverlayLayout actionBarOverlayLayout = q2.f6686c;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = J.Q.f940a;
                    J.G.c(actionBarOverlayLayout);
                    break;
                }
                break;
            default:
                q2.f6700s = null;
                q2.f6687d.requestLayout();
                break;
        }
    }
}
