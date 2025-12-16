package j;

import androidx.appcompat.view.menu.ActionMenuItemView;
import k.AbstractViewOnTouchListenerC0615o0;
import k.C0587f;
import k.C0590g;

/* renamed from: j.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0501b extends AbstractViewOnTouchListenerC0615o0 {

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ ActionMenuItemView f7213l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0501b(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.f7213l = actionMenuItemView;
    }

    @Override // k.AbstractViewOnTouchListenerC0615o0
    public final InterfaceC0524y b() {
        C0587f c0587f;
        AbstractC0502c abstractC0502c = this.f7213l.f3236o;
        if (abstractC0502c == null || (c0587f = ((C0590g) abstractC0502c).f7855a.f7896v) == null) {
            return null;
        }
        return c0587f.a();
    }

    @Override // k.AbstractViewOnTouchListenerC0615o0
    public final boolean c() {
        InterfaceC0524y interfaceC0524yB;
        ActionMenuItemView actionMenuItemView = this.f7213l;
        InterfaceC0507h interfaceC0507h = actionMenuItemView.f3235m;
        return interfaceC0507h != null && interfaceC0507h.b(actionMenuItemView.f3232j) && (interfaceC0524yB = b()) != null && ((ViewOnKeyListenerC0525z) interfaceC0524yB).b();
    }
}
