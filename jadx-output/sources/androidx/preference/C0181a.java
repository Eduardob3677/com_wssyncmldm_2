package androidx.preference;

import android.widget.CompoundButton;

/* renamed from: androidx.preference.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0181a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4702a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TwoStatePreference f4703b;

    public /* synthetic */ C0181a(TwoStatePreference twoStatePreference, int i5) {
        this.f4702a = i5;
        this.f4703b = twoStatePreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z4) {
        switch (this.f4702a) {
            case 0:
                Boolean boolValueOf = Boolean.valueOf(z4);
                CheckBoxPreference checkBoxPreference = (CheckBoxPreference) this.f4703b;
                checkBoxPreference.a(boolValueOf);
                checkBoxPreference.D(z4);
                break;
            case 1:
                Boolean boolValueOf2 = Boolean.valueOf(z4);
                SwitchPreference switchPreference = (SwitchPreference) this.f4703b;
                switchPreference.a(boolValueOf2);
                switchPreference.D(z4);
                break;
            default:
                Boolean boolValueOf3 = Boolean.valueOf(z4);
                SwitchPreferenceCompat switchPreferenceCompat = (SwitchPreferenceCompat) this.f4703b;
                switchPreferenceCompat.a(boolValueOf3);
                switchPreferenceCompat.D(z4);
                break;
        }
    }
}
