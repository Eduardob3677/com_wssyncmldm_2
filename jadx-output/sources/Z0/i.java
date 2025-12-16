package Z0;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.Z;
import androidx.fragment.app.r;

/* loaded from: classes.dex */
public class i extends r {

    /* renamed from: c, reason: collision with root package name */
    public Dialog f3014c = null;

    /* renamed from: d, reason: collision with root package name */
    public DialogInterface.OnCancelListener f3015d = null;

    @Override // androidx.fragment.app.r, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f3015d;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.r
    public final Dialog onCreateDialog(Bundle bundle) {
        if (this.f3014c == null) {
            setShowsDialog(false);
        }
        return this.f3014c;
    }

    @Override // androidx.fragment.app.r
    public final void show(Z z4, String str) {
        super.show(z4, str);
    }
}
