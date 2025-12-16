package androidx.preference;

import android.os.Bundle;
import e.C0403g;
import e.C0406j;
import java.util.ArrayList;
import java.util.HashSet;

/* renamed from: androidx.preference.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0191k extends s {

    /* renamed from: k, reason: collision with root package name */
    public final HashSet f4719k = new HashSet();

    /* renamed from: l, reason: collision with root package name */
    public boolean f4720l;

    /* renamed from: m, reason: collision with root package name */
    public CharSequence[] f4721m;
    public CharSequence[] n;

    @Override // androidx.preference.s
    public final void i(boolean z4) {
        if (z4 && this.f4720l) {
            MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) g();
            HashSet hashSet = this.f4719k;
            multiSelectListPreference.a(hashSet);
            multiSelectListPreference.D(hashSet);
        }
        this.f4720l = false;
    }

    @Override // androidx.preference.s
    public final void j(C0406j c0406j) {
        int length = this.n.length;
        boolean[] zArr = new boolean[length];
        for (int i5 = 0; i5 < length; i5++) {
            zArr[i5] = this.f4719k.contains(this.n[i5].toString());
        }
        CharSequence[] charSequenceArr = this.f4721m;
        DialogInterfaceOnMultiChoiceClickListenerC0190j dialogInterfaceOnMultiChoiceClickListenerC0190j = new DialogInterfaceOnMultiChoiceClickListenerC0190j(this);
        C0403g c0403g = c0406j.f6773a;
        c0403g.n = charSequenceArr;
        c0403g.f6734v = dialogInterfaceOnMultiChoiceClickListenerC0190j;
        c0403g.f6730r = zArr;
        c0403g.f6731s = true;
    }

    @Override // androidx.preference.s, androidx.fragment.app.r, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        CharSequence[] charSequenceArr;
        super.onCreate(bundle);
        HashSet hashSet = this.f4719k;
        if (bundle != null) {
            hashSet.clear();
            hashSet.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values"));
            this.f4720l = bundle.getBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", false);
            this.f4721m = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries");
            this.n = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues");
            return;
        }
        MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) g();
        if (multiSelectListPreference.f4625d0 == null || (charSequenceArr = multiSelectListPreference.f4626e0) == null) {
            throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
        }
        hashSet.clear();
        hashSet.addAll(multiSelectListPreference.f4627f0);
        this.f4720l = false;
        this.f4721m = multiSelectListPreference.f4625d0;
        this.n = charSequenceArr;
    }

    @Override // androidx.preference.s, androidx.fragment.app.r, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values", new ArrayList<>(this.f4719k));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", this.f4720l);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries", this.f4721m);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues", this.n);
    }
}
