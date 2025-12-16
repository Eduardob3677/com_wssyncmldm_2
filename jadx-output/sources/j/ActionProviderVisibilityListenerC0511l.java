package j;

import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;

/* renamed from: j.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ActionProviderVisibilityListenerC0511l implements ActionProvider.VisibilityListener {

    /* renamed from: a, reason: collision with root package name */
    public final ActionProvider f7281a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MenuItemC0515p f7282b;

    /* renamed from: c, reason: collision with root package name */
    public c1.w f7283c;

    public ActionProviderVisibilityListenerC0511l(MenuItemC0515p menuItemC0515p, ActionProvider actionProvider) {
        this.f7282b = menuItemC0515p;
        this.f7281a = actionProvider;
    }

    public final boolean a() {
        return this.f7281a.isVisible();
    }

    public final View b(MenuItem menuItem) {
        return this.f7281a.onCreateActionView(menuItem);
    }

    public final boolean c() {
        return this.f7281a.overridesItemVisibility();
    }

    public final void d(c1.w wVar) {
        this.f7283c = wVar;
        this.f7281a.setVisibilityListener(this);
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z4) {
        c1.w wVar = this.f7283c;
        if (wVar != null) {
            MenuC0508i menuC0508i = ((C0510k) wVar.f5265c).n;
            menuC0508i.f7235h = true;
            menuC0508i.p(true);
        }
    }
}
