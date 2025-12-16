package Z0;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class b extends DialogFragment {

    /* renamed from: c, reason: collision with root package name */
    public Dialog f2997c;

    /* renamed from: d, reason: collision with root package name */
    public DialogInterface.OnCancelListener f2998d;

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f2998d;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        if (this.f2997c == null) {
            setShowsDialog(false);
        }
        return this.f2997c;
    }

    @Override // android.app.DialogFragment
    public final void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
