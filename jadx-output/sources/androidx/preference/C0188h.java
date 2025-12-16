package androidx.preference;

import android.os.Bundle;
import e.C0403g;
import e.C0406j;

/* renamed from: androidx.preference.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0188h extends s {

    /* renamed from: k, reason: collision with root package name */
    public int f4712k;

    /* renamed from: l, reason: collision with root package name */
    public CharSequence[] f4713l;

    /* renamed from: m, reason: collision with root package name */
    public CharSequence[] f4714m;

    @Override // androidx.preference.s
    public final void i(boolean z4) {
        int i5;
        if (!z4 || (i5 = this.f4712k) < 0) {
            return;
        }
        String string = this.f4714m[i5].toString();
        ListPreference listPreference = (ListPreference) g();
        listPreference.a(string);
        listPreference.F(string);
    }

    @Override // androidx.preference.s
    public final void j(C0406j c0406j) {
        CharSequence[] charSequenceArr = this.f4713l;
        int i5 = this.f4712k;
        DialogInterfaceOnClickListenerC0187g dialogInterfaceOnClickListenerC0187g = new DialogInterfaceOnClickListenerC0187g(this);
        C0403g c0403g = c0406j.f6773a;
        c0403g.n = charSequenceArr;
        c0403g.f6728p = dialogInterfaceOnClickListenerC0187g;
        c0403g.f6733u = i5;
        c0403g.f6732t = true;
        c0403g.f6720g = null;
        c0403g.f6721h = null;
    }

    @Override // androidx.preference.s, androidx.fragment.app.r, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        CharSequence[] charSequenceArr;
        super.onCreate(bundle);
        if (bundle != null) {
            this.f4712k = bundle.getInt("ListPreferenceDialogFragment.index", 0);
            this.f4713l = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
            this.f4714m = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
            return;
        }
        ListPreference listPreference = (ListPreference) g();
        if (listPreference.f4620d0 == null || (charSequenceArr = listPreference.f4621e0) == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.f4712k = listPreference.D(listPreference.f4622f0);
        this.f4713l = listPreference.f4620d0;
        this.f4714m = charSequenceArr;
    }

    @Override // androidx.preference.s, androidx.fragment.app.r, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.f4712k);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.f4713l);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.f4714m);
    }
}
