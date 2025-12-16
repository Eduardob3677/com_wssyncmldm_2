package k;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.appcompat.widget.AppCompatSpinner;
import e.C0403g;
import e.C0406j;
import e.DialogInterfaceC0407k;

/* renamed from: k.I, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC0563I implements InterfaceC0569O, DialogInterface.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public DialogInterfaceC0407k f7689c;

    /* renamed from: d, reason: collision with root package name */
    public ListAdapter f7690d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f7691e;
    public final /* synthetic */ AppCompatSpinner f;

    public DialogInterfaceOnClickListenerC0563I(AppCompatSpinner appCompatSpinner) {
        this.f = appCompatSpinner;
    }

    @Override // k.InterfaceC0569O
    public final boolean b() {
        DialogInterfaceC0407k dialogInterfaceC0407k = this.f7689c;
        if (dialogInterfaceC0407k != null) {
            return dialogInterfaceC0407k.isShowing();
        }
        return false;
    }

    @Override // k.InterfaceC0569O
    public final void c(int i5) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // k.InterfaceC0569O
    public final int d() {
        return 0;
    }

    @Override // k.InterfaceC0569O
    public final void dismiss() {
        DialogInterfaceC0407k dialogInterfaceC0407k = this.f7689c;
        if (dialogInterfaceC0407k != null) {
            dialogInterfaceC0407k.dismiss();
            this.f7689c = null;
        }
    }

    @Override // k.InterfaceC0569O
    public final void e(int i5, int i6) {
        if (this.f7690d == null) {
            return;
        }
        AppCompatSpinner appCompatSpinner = this.f;
        C0406j c0406j = new C0406j(appCompatSpinner.getPopupContext());
        CharSequence charSequence = this.f7691e;
        C0403g c0403g = c0406j.f6773a;
        if (charSequence != null) {
            c0403g.f6718d = charSequence;
        }
        ListAdapter listAdapter = this.f7690d;
        int selectedItemPosition = appCompatSpinner.getSelectedItemPosition();
        c0403g.f6727o = listAdapter;
        c0403g.f6728p = this;
        c0403g.f6733u = selectedItemPosition;
        c0403g.f6732t = true;
        DialogInterfaceC0407k dialogInterfaceC0407kA = c0406j.a();
        this.f7689c = dialogInterfaceC0407kA;
        AlertController$RecycleListView alertController$RecycleListView = dialogInterfaceC0407kA.f6776h.f6754g;
        AbstractC0561G.d(alertController$RecycleListView, i5);
        AbstractC0561G.c(alertController$RecycleListView, i6);
        this.f7689c.show();
    }

    @Override // k.InterfaceC0569O
    public final int g() {
        return 0;
    }

    @Override // k.InterfaceC0569O
    public final Drawable h() {
        return null;
    }

    @Override // k.InterfaceC0569O
    public final CharSequence i() {
        return this.f7691e;
    }

    @Override // k.InterfaceC0569O
    public final void k(CharSequence charSequence) {
        this.f7691e = charSequence;
    }

    @Override // k.InterfaceC0569O
    public final void l(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // k.InterfaceC0569O
    public final void m(int i5) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // k.InterfaceC0569O
    public final void n(ListAdapter listAdapter) {
        this.f7690d = listAdapter;
    }

    @Override // k.InterfaceC0569O
    public final void o(int i5) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i5) {
        AppCompatSpinner appCompatSpinner = this.f;
        appCompatSpinner.setSelection(i5);
        if (appCompatSpinner.getOnItemClickListener() != null) {
            appCompatSpinner.performItemClick(null, i5, this.f7690d.getItemId(i5));
        }
        dismiss();
    }
}
