package androidx.preference;

import android.content.DialogInterface;

/* renamed from: androidx.preference.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC0187g implements DialogInterface.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0188h f4711c;

    public DialogInterfaceOnClickListenerC0187g(C0188h c0188h) {
        this.f4711c = c0188h;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i5) {
        C0188h c0188h = this.f4711c;
        c0188h.f4712k = i5;
        c0188h.f4731j = -1;
        dialogInterface.dismiss();
    }
}
