package j;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import e.DialogInterfaceC0407k;

/* renamed from: j.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterfaceOnKeyListenerC0509j implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, InterfaceC0519t {

    /* renamed from: c, reason: collision with root package name */
    public MenuC0508i f7251c;

    /* renamed from: d, reason: collision with root package name */
    public DialogInterfaceC0407k f7252d;

    /* renamed from: e, reason: collision with root package name */
    public C0504e f7253e;

    @Override // j.InterfaceC0519t
    public final void a(MenuC0508i menuC0508i, boolean z4) {
        DialogInterfaceC0407k dialogInterfaceC0407k;
        if ((z4 || menuC0508i == this.f7251c) && (dialogInterfaceC0407k = this.f7252d) != null) {
            dialogInterfaceC0407k.dismiss();
        }
    }

    @Override // j.InterfaceC0519t
    public final boolean b(MenuC0508i menuC0508i) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i5) {
        C0504e c0504e = this.f7253e;
        if (c0504e.f7220h == null) {
            c0504e.f7220h = new C0503d(c0504e);
        }
        this.f7251c.q(c0504e.f7220h.getItem(i5), null, 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f7253e.a(this.f7251c, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i5, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        MenuC0508i menuC0508i = this.f7251c;
        if (i5 == 82 || i5 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f7252d.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f7252d.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                menuC0508i.c(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return menuC0508i.performShortcut(i5, keyEvent, 0);
    }
}
