package J;

import android.view.View;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public final class H implements View.OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0043q f939a;

    public H(View view, InterfaceC0043q interfaceC0043q) {
        this.f939a = interfaceC0043q;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        return this.f939a.Y(view, q0.f(windowInsets, view)).e();
    }
}
