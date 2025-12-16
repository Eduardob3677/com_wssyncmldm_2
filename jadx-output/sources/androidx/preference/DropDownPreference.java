package androidx.preference;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.SpinnerAdapter;
import androidx.appcompat.widget.AppCompatSpinner;
import com.wssyncmldm.R;
import k.Y0;

/* loaded from: classes.dex */
public class DropDownPreference extends ListPreference {

    /* renamed from: i0, reason: collision with root package name */
    public final Y0 f4574i0;

    /* renamed from: j0, reason: collision with root package name */
    public AppCompatSpinner f4575j0;
    public final C0182b k0;

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.dropdownPreferenceStyle);
        this.k0 = new C0182b(this);
        Y0 y02 = new Y0(context, R.layout.support_simple_spinner_dropdown_item);
        this.f4574i0 = y02;
        y02.clear();
        CharSequence[] charSequenceArr = this.f4620d0;
        if (charSequenceArr != null) {
            for (CharSequence charSequence : charSequenceArr) {
                y02.add(charSequence.toString());
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void j() {
        super.j();
        Y0 y02 = this.f4574i0;
        if (y02 != null) {
            y02.notifyDataSetChanged();
        }
    }

    @Override // androidx.preference.Preference
    public final void n(H h5) {
        int length;
        CharSequence[] charSequenceArr;
        AppCompatSpinner appCompatSpinner = (AppCompatSpinner) h5.f7406a.findViewById(R.id.spinner);
        this.f4575j0 = appCompatSpinner;
        appCompatSpinner.setSoundEffectsEnabled(false);
        SpinnerAdapter adapter = this.f4575j0.getAdapter();
        Y0 y02 = this.f4574i0;
        if (!y02.equals(adapter)) {
            this.f4575j0.setAdapter((SpinnerAdapter) y02);
        }
        this.f4575j0.setOnItemSelectedListener(this.k0);
        AppCompatSpinner appCompatSpinner2 = this.f4575j0;
        String str = this.f4622f0;
        if (str == null || (charSequenceArr = this.f4621e0) == null) {
            length = -1;
        } else {
            length = charSequenceArr.length - 1;
            while (length >= 0) {
                if (TextUtils.equals(charSequenceArr[length].toString(), str)) {
                    break;
                } else {
                    length--;
                }
            }
            length = -1;
        }
        appCompatSpinner2.setSelection(length);
        super.n(h5);
    }

    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    public final void o() {
        this.f4575j0.performClick();
    }
}
