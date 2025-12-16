package com.google.android.material.timepicker;

import J1.l;
import android.text.Editable;
import android.text.TextUtils;
import com.google.android.material.chip.Chip;

/* loaded from: classes.dex */
public final class a extends l {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ChipTextInputComboView f6172c;

    public a(ChipTextInputComboView chipTextInputComboView) {
        this.f6172c = chipTextInputComboView;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        boolean zIsEmpty = TextUtils.isEmpty(editable);
        ChipTextInputComboView chipTextInputComboView = this.f6172c;
        if (zIsEmpty) {
            chipTextInputComboView.f6143c.setText(ChipTextInputComboView.a(chipTextInputComboView, "00"));
            return;
        }
        String strA = ChipTextInputComboView.a(chipTextInputComboView, editable);
        Chip chip = chipTextInputComboView.f6143c;
        if (TextUtils.isEmpty(strA)) {
            strA = ChipTextInputComboView.a(chipTextInputComboView, "00");
        }
        chip.setText(strA);
    }
}
