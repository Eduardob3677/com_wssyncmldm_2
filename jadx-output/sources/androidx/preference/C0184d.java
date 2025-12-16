package androidx.preference;

import android.R;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

/* renamed from: androidx.preference.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0184d extends s {

    /* renamed from: k, reason: collision with root package name */
    public EditText f4706k;

    /* renamed from: l, reason: collision with root package name */
    public CharSequence f4707l;

    /* renamed from: m, reason: collision with root package name */
    public final t f4708m = new t(1, this);
    public long n = -1;

    @Override // androidx.preference.s
    public final void h(View view) {
        super.h(view);
        EditText editText = (EditText) view.findViewById(R.id.edit);
        this.f4706k = editText;
        if (editText == null) {
            throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
        }
        editText.requestFocus();
        this.f4706k.setText(this.f4707l);
        EditText editText2 = this.f4706k;
        editText2.setSelection(editText2.getText().length());
        ((EditTextPreference) g()).getClass();
    }

    @Override // androidx.preference.s
    public final void i(boolean z4) {
        if (z4) {
            String string = this.f4706k.getText().toString();
            EditTextPreference editTextPreference = (EditTextPreference) g();
            editTextPreference.a(string);
            editTextPreference.D(string);
        }
    }

    public final void k() {
        long j3 = this.n;
        if (j3 == -1 || j3 + 1000 <= SystemClock.currentThreadTimeMillis()) {
            return;
        }
        EditText editText = this.f4706k;
        if (editText == null || !editText.isFocused()) {
            this.n = -1L;
            return;
        }
        if (((InputMethodManager) this.f4706k.getContext().getSystemService("input_method")).showSoftInput(this.f4706k, 0)) {
            this.n = -1L;
            return;
        }
        EditText editText2 = this.f4706k;
        t tVar = this.f4708m;
        editText2.removeCallbacks(tVar);
        this.f4706k.postDelayed(tVar, 50L);
    }

    @Override // androidx.preference.s, androidx.fragment.app.r, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.f4707l = ((EditTextPreference) g()).f4581d0;
        } else {
            this.f4707l = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    @Override // androidx.preference.s, androidx.fragment.app.r, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.f4707l);
    }
}
