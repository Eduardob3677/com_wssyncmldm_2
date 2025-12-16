package j;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import e.C0403g;
import e.C0406j;
import e.DialogInterfaceC0407k;

/* renamed from: j.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0504e implements InterfaceC0520u, AdapterView.OnItemClickListener {

    /* renamed from: c, reason: collision with root package name */
    public Context f7216c;

    /* renamed from: d, reason: collision with root package name */
    public LayoutInflater f7217d;

    /* renamed from: e, reason: collision with root package name */
    public MenuC0508i f7218e;
    public ExpandedMenuView f;

    /* renamed from: g, reason: collision with root package name */
    public InterfaceC0519t f7219g;

    /* renamed from: h, reason: collision with root package name */
    public C0503d f7220h;

    public C0504e(Context context) {
        this.f7216c = context;
        this.f7217d = LayoutInflater.from(context);
    }

    @Override // j.InterfaceC0520u
    public final void a(MenuC0508i menuC0508i, boolean z4) {
        InterfaceC0519t interfaceC0519t = this.f7219g;
        if (interfaceC0519t != null) {
            interfaceC0519t.a(menuC0508i, z4);
        }
    }

    @Override // j.InterfaceC0520u
    public final void c(Context context, MenuC0508i menuC0508i) {
        if (this.f7216c != null) {
            this.f7216c = context;
            if (this.f7217d == null) {
                this.f7217d = LayoutInflater.from(context);
            }
        }
        this.f7218e = menuC0508i;
        C0503d c0503d = this.f7220h;
        if (c0503d != null) {
            c0503d.notifyDataSetChanged();
        }
    }

    @Override // j.InterfaceC0520u
    public final boolean d() {
        return false;
    }

    @Override // j.InterfaceC0520u
    public final boolean e(C0510k c0510k) {
        return false;
    }

    @Override // j.InterfaceC0520u
    public final void f() {
        C0503d c0503d = this.f7220h;
        if (c0503d != null) {
            c0503d.notifyDataSetChanged();
        }
    }

    @Override // j.InterfaceC0520u
    public final boolean g(C0510k c0510k) {
        return false;
    }

    @Override // j.InterfaceC0520u
    public final boolean h(SubMenuC0499A subMenuC0499A) {
        if (!subMenuC0499A.hasVisibleItems()) {
            return false;
        }
        DialogInterfaceOnKeyListenerC0509j dialogInterfaceOnKeyListenerC0509j = new DialogInterfaceOnKeyListenerC0509j();
        dialogInterfaceOnKeyListenerC0509j.f7251c = subMenuC0499A;
        Context context = subMenuC0499A.f7229a;
        C0406j c0406j = new C0406j(context);
        C0403g c0403g = c0406j.f6773a;
        C0504e c0504e = new C0504e(c0403g.f6715a);
        dialogInterfaceOnKeyListenerC0509j.f7253e = c0504e;
        c0504e.f7219g = dialogInterfaceOnKeyListenerC0509j;
        subMenuC0499A.b(c0504e, context);
        C0504e c0504e2 = dialogInterfaceOnKeyListenerC0509j.f7253e;
        if (c0504e2.f7220h == null) {
            c0504e2.f7220h = new C0503d(c0504e2);
        }
        c0403g.f6727o = c0504e2.f7220h;
        c0403g.f6728p = dialogInterfaceOnKeyListenerC0509j;
        View view = subMenuC0499A.f7241o;
        if (view != null) {
            c0403g.f6719e = view;
        } else {
            c0403g.f6717c = subMenuC0499A.n;
            c0403g.f6718d = subMenuC0499A.f7240m;
        }
        c0403g.f6726m = dialogInterfaceOnKeyListenerC0509j;
        DialogInterfaceC0407k dialogInterfaceC0407kA = c0406j.a();
        dialogInterfaceOnKeyListenerC0509j.f7252d = dialogInterfaceC0407kA;
        dialogInterfaceC0407kA.setOnDismissListener(dialogInterfaceOnKeyListenerC0509j);
        WindowManager.LayoutParams attributes = dialogInterfaceOnKeyListenerC0509j.f7252d.getWindow().getAttributes();
        attributes.type = IDMCallbackStatusInterface.IDM_STATUS_START;
        attributes.flags |= NetworkAnalyticsConstants.DataPoints.FLAG_PPID;
        dialogInterfaceOnKeyListenerC0509j.f7252d.show();
        InterfaceC0519t interfaceC0519t = this.f7219g;
        if (interfaceC0519t == null) {
            return true;
        }
        interfaceC0519t.b(subMenuC0499A);
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i5, long j3) {
        this.f7218e.q(this.f7220h.getItem(i5), this, 0);
    }
}
