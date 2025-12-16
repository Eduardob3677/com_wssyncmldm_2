package X;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;

/* loaded from: classes.dex */
public final class i implements TextWatcher {

    /* renamed from: c, reason: collision with root package name */
    public final EditText f2857c;

    /* renamed from: e, reason: collision with root package name */
    public h f2859e;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f2858d = false;
    public boolean f = true;

    public i(EditText editText) {
        this.f2857c = editText;
    }

    public static void a(EditText editText, int i5) {
        int length;
        if (i5 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            androidx.emoji2.text.j jVarA = androidx.emoji2.text.j.a();
            if (editableText == null) {
                length = 0;
            } else {
                jVarA.getClass();
                length = editableText.length();
            }
            jVarA.f(editableText, 0, length);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
        EditText editText = this.f2857c;
        if (editText.isInEditMode() || !this.f) {
            return;
        }
        if ((this.f2858d || androidx.emoji2.text.j.f3695j != null) && i6 <= i7 && (charSequence instanceof Spannable)) {
            int iB = androidx.emoji2.text.j.a().b();
            if (iB != 0) {
                if (iB == 1) {
                    androidx.emoji2.text.j.a().f((Spannable) charSequence, i5, i7 + i5);
                    return;
                } else if (iB != 3) {
                    return;
                }
            }
            androidx.emoji2.text.j jVarA = androidx.emoji2.text.j.a();
            if (this.f2859e == null) {
                this.f2859e = new h(editText);
            }
            jVarA.g(this.f2859e);
        }
    }
}
