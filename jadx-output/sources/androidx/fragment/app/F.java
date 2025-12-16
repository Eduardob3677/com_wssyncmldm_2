package androidx.fragment.app;

import J.InterfaceC0032f;
import J.InterfaceC0038l;
import android.view.View;
import android.view.Window;
import z.InterfaceC0937e;
import z.InterfaceC0938f;

/* loaded from: classes.dex */
public final class F extends L implements InterfaceC0937e, InterfaceC0938f, y.y, y.z, androidx.lifecycle.d0, androidx.activity.w, androidx.activity.result.i, x0.f, d0, InterfaceC0032f {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ G f3738g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F(G g5) {
        super(g5);
        this.f3738g = g5;
    }

    @Override // androidx.fragment.app.d0
    public final void a(Fragment fragment) {
        this.f3738g.onAttachFragment(fragment);
    }

    @Override // J.InterfaceC0032f
    public final void addMenuProvider(InterfaceC0038l interfaceC0038l) {
        this.f3738g.addMenuProvider(interfaceC0038l);
    }

    @Override // z.InterfaceC0937e
    public final void addOnConfigurationChangedListener(I.a aVar) {
        this.f3738g.addOnConfigurationChangedListener(aVar);
    }

    @Override // y.y
    public final void addOnMultiWindowModeChangedListener(I.a aVar) {
        this.f3738g.addOnMultiWindowModeChangedListener(aVar);
    }

    @Override // y.z
    public final void addOnPictureInPictureModeChangedListener(I.a aVar) {
        this.f3738g.addOnPictureInPictureModeChangedListener(aVar);
    }

    @Override // z.InterfaceC0938f
    public final void addOnTrimMemoryListener(I.a aVar) {
        this.f3738g.addOnTrimMemoryListener(aVar);
    }

    @Override // androidx.fragment.app.J
    public final View b(int i5) {
        return this.f3738g.findViewById(i5);
    }

    @Override // androidx.fragment.app.J
    public final boolean c() {
        Window window = this.f3738g.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // androidx.activity.result.i
    public final androidx.activity.result.h getActivityResultRegistry() {
        return this.f3738g.getActivityResultRegistry();
    }

    @Override // androidx.lifecycle.InterfaceC0155w
    public final androidx.lifecycle.r getLifecycle() {
        return this.f3738g.mFragmentLifecycleRegistry;
    }

    @Override // androidx.activity.w
    public final androidx.activity.v getOnBackPressedDispatcher() {
        return this.f3738g.getOnBackPressedDispatcher();
    }

    @Override // x0.f
    public final x0.d getSavedStateRegistry() {
        return this.f3738g.getSavedStateRegistry();
    }

    @Override // androidx.lifecycle.d0
    public final androidx.lifecycle.c0 getViewModelStore() {
        return this.f3738g.getViewModelStore();
    }

    @Override // J.InterfaceC0032f
    public final void removeMenuProvider(InterfaceC0038l interfaceC0038l) {
        this.f3738g.removeMenuProvider(interfaceC0038l);
    }

    @Override // z.InterfaceC0937e
    public final void removeOnConfigurationChangedListener(I.a aVar) {
        this.f3738g.removeOnConfigurationChangedListener(aVar);
    }

    @Override // y.y
    public final void removeOnMultiWindowModeChangedListener(I.a aVar) {
        this.f3738g.removeOnMultiWindowModeChangedListener(aVar);
    }

    @Override // y.z
    public final void removeOnPictureInPictureModeChangedListener(I.a aVar) {
        this.f3738g.removeOnPictureInPictureModeChangedListener(aVar);
    }

    @Override // z.InterfaceC0938f
    public final void removeOnTrimMemoryListener(I.a aVar) {
        this.f3738g.removeOnTrimMemoryListener(aVar);
    }
}
