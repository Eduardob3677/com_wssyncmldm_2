package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import androidx.lifecycle.InterfaceC0155w;

/* renamed from: androidx.fragment.app.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0124p implements androidx.lifecycle.G {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f3932a;

    public C0124p(r rVar) {
        this.f3932a = rVar;
    }

    @Override // androidx.lifecycle.G
    public final void c(Object obj) {
        if (((InterfaceC0155w) obj) != null) {
            r rVar = this.f3932a;
            if (rVar.mShowsDialog) {
                View viewRequireView = rVar.requireView();
                if (viewRequireView.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                if (rVar.mDialog != null) {
                    if (Log.isLoggable("FragmentManager", 3)) {
                        Log.d("SeslDialogFragment", "DialogFragment " + this + " setting the content view on " + rVar.mDialog);
                    }
                    rVar.mDialog.setContentView(viewRequireView);
                }
            }
        }
    }
}
