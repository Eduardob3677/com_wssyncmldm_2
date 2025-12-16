package J;

import android.R;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;

/* renamed from: J.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0051z extends W1.a {

    /* renamed from: b, reason: collision with root package name */
    public final View f1025b;

    /* renamed from: c, reason: collision with root package name */
    public View f1026c;

    /* renamed from: d, reason: collision with root package name */
    public WindowInsetsController f1027d;

    public C0051z(View view) {
        this.f1025b = view;
    }

    public final void o0() {
        View view = this.f1026c;
        WindowInsetsController windowInsetsController = this.f1027d;
        if (windowInsetsController == null) {
            windowInsetsController = view != null ? view.getWindowInsetsController() : null;
        }
        if (windowInsetsController != null) {
            windowInsetsController.show(WindowInsets.Type.ime());
        }
        p0();
    }

    public final void p0() {
        View viewFindViewById;
        View view = this.f1025b;
        if (view == null) {
            return;
        }
        if (view.isInEditMode() || view.onCheckIsTextEditor()) {
            view.requestFocus();
            viewFindViewById = view;
        } else {
            viewFindViewById = view.getRootView().findFocus();
        }
        if (viewFindViewById == null) {
            viewFindViewById = view.getRootView().findViewById(R.id.content);
        }
        if (viewFindViewById == null || !viewFindViewById.hasWindowFocus()) {
            return;
        }
        viewFindViewById.post(new D1.b(1, viewFindViewById));
    }
}
