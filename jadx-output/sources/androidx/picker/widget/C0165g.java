package androidx.picker.widget;

import android.util.SparseArray;

/* renamed from: androidx.picker.widget.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0165g extends F0.a {

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f4515c = new SparseArray();

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ SeslDatePicker f4516d;

    public C0165g(SeslDatePicker seslDatePicker) {
        this.f4516d = seslDatePicker;
    }

    @Override // F0.a
    public final int b() {
        SeslDatePicker seslDatePicker = this.f4516d;
        int maxYear = ((seslDatePicker.getMaxYear() - seslDatePicker.getMinYear()) * 12) + (seslDatePicker.getMaxMonth() - seslDatePicker.getMinMonth()) + 1;
        seslDatePicker.f4387L = maxYear;
        return maxYear;
    }
}
