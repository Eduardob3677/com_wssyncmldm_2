package androidx.preference;

import android.content.DialogInterface;

/* renamed from: androidx.preference.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterfaceOnMultiChoiceClickListenerC0190j implements DialogInterface.OnMultiChoiceClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0191k f4718a;

    public DialogInterfaceOnMultiChoiceClickListenerC0190j(C0191k c0191k) {
        this.f4718a = c0191k;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public final void onClick(DialogInterface dialogInterface, int i5, boolean z4) {
        C0191k c0191k = this.f4718a;
        if (z4) {
            c0191k.f4720l |= c0191k.f4719k.add(c0191k.n[i5].toString());
        } else {
            c0191k.f4720l |= c0191k.f4719k.remove(c0191k.n[i5].toString());
        }
    }
}
