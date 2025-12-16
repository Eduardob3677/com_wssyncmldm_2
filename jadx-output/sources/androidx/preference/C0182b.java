package androidx.preference;

import android.view.View;
import android.widget.AdapterView;

/* renamed from: androidx.preference.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0182b implements AdapterView.OnItemSelectedListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DropDownPreference f4704c;

    public C0182b(DropDownPreference dropDownPreference) {
        this.f4704c = dropDownPreference;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i5, long j3) {
        if (i5 >= 0) {
            DropDownPreference dropDownPreference = this.f4704c;
            String string = dropDownPreference.f4621e0[i5].toString();
            if (string.equals(dropDownPreference.f4622f0)) {
                return;
            }
            dropDownPreference.a(string);
            dropDownPreference.F(string);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
