package j;

import android.widget.PopupWindow;

/* renamed from: j.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0516q implements PopupWindow.OnDismissListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0518s f7291c;

    public C0516q(C0518s c0518s) {
        this.f7291c = c0518s;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f7291c.c();
    }
}
