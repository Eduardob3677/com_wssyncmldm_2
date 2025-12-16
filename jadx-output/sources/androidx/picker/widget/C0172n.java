package androidx.picker.widget;

import android.content.res.Resources;
import java.util.Calendar;

/* renamed from: androidx.picker.widget.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0172n implements InterfaceC0177t, InterfaceC0179v, r {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SeslDatePickerSpinnerLayout f4528a;

    public /* synthetic */ C0172n(SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout) {
        this.f4528a = seslDatePickerSpinnerLayout;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    @Override // androidx.picker.widget.InterfaceC0179v
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(SeslNumberPicker seslNumberPicker, int i5, int i6) throws Resources.NotFoundException {
        boolean z4;
        boolean z5;
        C0164f c0164f;
        SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout = this.f4528a;
        seslDatePickerSpinnerLayout.f4432e.setTimeInMillis(seslDatePickerSpinnerLayout.f4434h.getTimeInMillis());
        if (seslNumberPicker.equals(seslDatePickerSpinnerLayout.f4438l)) {
            int actualMaximum = seslDatePickerSpinnerLayout.f4432e.getActualMaximum(5);
            if ((i5 == actualMaximum && i6 == 1) || (i5 == 1 && i6 == actualMaximum)) {
                seslDatePickerSpinnerLayout.f4432e.set(5, i6);
            } else {
                seslDatePickerSpinnerLayout.f4432e.add(5, i6 - i5);
            }
            z4 = false;
        } else {
            if (seslNumberPicker.equals(seslDatePickerSpinnerLayout.f4439m)) {
                if ((i5 == 11 && i6 == 0) || (i5 == 0 && i6 == 11)) {
                    seslDatePickerSpinnerLayout.f4432e.set(2, i6);
                } else {
                    seslDatePickerSpinnerLayout.f4432e.add(2, i6 - i5);
                }
                z4 = false;
                z5 = true;
                seslDatePickerSpinnerLayout.c(seslDatePickerSpinnerLayout.f4432e.get(1), seslDatePickerSpinnerLayout.f4432e.get(2), seslDatePickerSpinnerLayout.f4432e.get(5));
                if (!z4 || z5) {
                    seslDatePickerSpinnerLayout.j(false, false, z4, z5);
                }
                c0164f = seslDatePickerSpinnerLayout.f4449x;
                if (c0164f == null) {
                    int i7 = seslDatePickerSpinnerLayout.f4434h.get(1);
                    int i8 = seslDatePickerSpinnerLayout.f4434h.get(2);
                    int i9 = seslDatePickerSpinnerLayout.f4434h.get(5);
                    SeslDatePicker seslDatePicker = (SeslDatePicker) c0164f.f4514a;
                    seslDatePicker.f4415m.set(1, i7);
                    Calendar calendar = seslDatePicker.f4415m;
                    calendar.set(2, i8);
                    calendar.set(5, i9);
                    int i10 = seslDatePicker.f4388M;
                    Calendar calendar2 = seslDatePicker.f4416o;
                    Calendar calendar3 = seslDatePicker.n;
                    if (i10 == 1) {
                        if (calendar3.compareTo(calendar2) == 0 || calendar.compareTo(calendar2) > 0) {
                            SeslDatePicker.e(calendar2, i7, i8, i9);
                        }
                        SeslDatePicker.e(calendar3, i7, i8, i9);
                    } else if (i10 != 2) {
                        SeslDatePicker.e(calendar3, i7, i8, i9);
                        SeslDatePicker.e(calendar2, i7, i8, i9);
                    } else {
                        if (calendar.compareTo(calendar3) < 0) {
                            SeslDatePicker.e(calendar3, i7, i8, i9);
                        }
                        SeslDatePicker.e(calendar2, i7, i8, i9);
                    }
                    calendar3.after(calendar2);
                    seslDatePicker.n(false);
                    if (seslDatePicker.f4388M == 3 && seslDatePicker.f4414l) {
                        seslDatePicker.o(seslDatePicker.getDayOffset(), i7, i8, i9);
                        return;
                    }
                    return;
                }
                return;
            }
            if (!seslNumberPicker.equals(seslDatePickerSpinnerLayout.n)) {
                throw new IllegalArgumentException();
            }
            seslDatePickerSpinnerLayout.f4432e.add(1, i6 - i5);
            z4 = true;
        }
        z5 = z4;
        seslDatePickerSpinnerLayout.c(seslDatePickerSpinnerLayout.f4432e.get(1), seslDatePickerSpinnerLayout.f4432e.get(2), seslDatePickerSpinnerLayout.f4432e.get(5));
        if (!z4) {
            seslDatePickerSpinnerLayout.j(false, false, z4, z5);
        }
        c0164f = seslDatePickerSpinnerLayout.f4449x;
        if (c0164f == null) {
        }
    }

    @Override // androidx.picker.widget.InterfaceC0177t
    public void b(boolean z4) {
        SeslDatePickerSpinnerLayout seslDatePickerSpinnerLayout = this.f4528a;
        seslDatePickerSpinnerLayout.d(z4);
        if (seslDatePickerSpinnerLayout.f4430c == z4 || z4) {
            return;
        }
        SeslNumberPicker seslNumberPicker = seslDatePickerSpinnerLayout.f4438l;
        if (seslNumberPicker.f4453c.f4152h0) {
            seslNumberPicker.setEditTextMode(false);
        }
        SeslNumberPicker seslNumberPicker2 = seslDatePickerSpinnerLayout.f4439m;
        if (seslNumberPicker2.f4453c.f4152h0) {
            seslNumberPicker2.setEditTextMode(false);
        }
        SeslNumberPicker seslNumberPicker3 = seslDatePickerSpinnerLayout.n;
        if (seslNumberPicker3.f4453c.f4152h0) {
            seslNumberPicker3.setEditTextMode(false);
        }
    }
}
