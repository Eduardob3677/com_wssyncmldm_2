package S1;

import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f2496a;

    public l(n nVar) {
        this.f2496a = nVar;
    }

    public final void a(TextInputLayout textInputLayout) {
        n nVar = this.f2496a;
        if (nVar.f2515u == textInputLayout.getEditText()) {
            return;
        }
        EditText editText = nVar.f2515u;
        k kVar = nVar.f2518x;
        if (editText != null) {
            editText.removeTextChangedListener(kVar);
            if (nVar.f2515u.getOnFocusChangeListener() == nVar.b().e()) {
                nVar.f2515u.setOnFocusChangeListener(null);
            }
        }
        EditText editText2 = textInputLayout.getEditText();
        nVar.f2515u = editText2;
        if (editText2 != null) {
            editText2.addTextChangedListener(kVar);
        }
        nVar.b().m(nVar.f2515u);
        nVar.j(nVar.b());
    }
}
