package androidx.fragment.app;

import android.content.DialogInterface;

/* renamed from: androidx.fragment.app.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0122n implements DialogInterface.OnCancelListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f3923c;

    public DialogInterfaceOnCancelListenerC0122n(r rVar) {
        this.f3923c = rVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        r rVar = this.f3923c;
        if (rVar.mDialog != null) {
            rVar.onCancel(rVar.mDialog);
        }
    }
}
