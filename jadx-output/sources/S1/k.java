package S1;

import android.text.Editable;

/* loaded from: classes.dex */
public final class k extends J1.l {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ n f2495c;

    public k(n nVar) {
        this.f2495c = nVar;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.f2495c.b().a();
    }

    @Override // J1.l, android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
        this.f2495c.b().b();
    }
}
