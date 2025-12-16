package k;

import android.view.View;
import androidx.appcompat.widget.AppCompatSpinner;
import j.InterfaceC0524y;

/* renamed from: k.D, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0558D extends AbstractViewOnTouchListenerC0615o0 {

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ C0567M f7664l;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ AppCompatSpinner f7665m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0558D(AppCompatSpinner appCompatSpinner, View view, C0567M c0567m) {
        super(view);
        this.f7665m = appCompatSpinner;
        this.f7664l = c0567m;
    }

    @Override // k.AbstractViewOnTouchListenerC0615o0
    public final InterfaceC0524y b() {
        return this.f7664l;
    }

    @Override // k.AbstractViewOnTouchListenerC0615o0
    public final boolean c() {
        AppCompatSpinner appCompatSpinner = this.f7665m;
        if (appCompatSpinner.getInternalPopup().b()) {
            return true;
        }
        appCompatSpinner.f3349h.e(AbstractC0561G.b(appCompatSpinner), AbstractC0561G.a(appCompatSpinner));
        return true;
    }
}
