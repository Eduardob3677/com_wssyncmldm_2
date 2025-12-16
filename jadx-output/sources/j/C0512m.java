package j;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;
import i.InterfaceC0475c;

/* renamed from: j.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0512m extends FrameLayout implements InterfaceC0475c {

    /* renamed from: c, reason: collision with root package name */
    public final CollapsibleActionView f7284c;

    /* JADX WARN: Multi-variable type inference failed */
    public C0512m(View view) {
        super(view.getContext());
        this.f7284c = (CollapsibleActionView) view;
        addView(view);
    }

    @Override // i.InterfaceC0475c
    public final void c() {
        this.f7284c.onActionViewExpanded();
    }

    @Override // i.InterfaceC0475c
    public final void e() {
        this.f7284c.onActionViewCollapsed();
    }
}
