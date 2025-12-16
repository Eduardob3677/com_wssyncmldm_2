package androidx.fragment.app;

import android.content.DialogInterface;

/* renamed from: androidx.fragment.app.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterfaceOnDismissListenerC0123o implements DialogInterface.OnDismissListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f3930c;

    public DialogInterfaceOnDismissListenerC0123o(r rVar) {
        this.f3930c = rVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        r rVar = this.f3930c;
        if (rVar.mDialog != null) {
            rVar.onDismiss(rVar.mDialog);
        }
    }
}
