package androidx.picker.widget;

import android.content.res.Resources;

/* loaded from: classes.dex */
public final class N implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4243c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f4244d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f4245e;

    public /* synthetic */ N(int i5, Object obj) {
        this.f4243c = i5;
        this.f4245e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() throws Resources.NotFoundException {
        switch (this.f4243c) {
            case 0:
                boolean z4 = this.f4244d;
                P p4 = (P) this.f4245e;
                p4.a(z4);
                ((SeslSpinningDatePickerSpinner) p4.f4233b).postDelayed(this, p4.f4305o);
                break;
            default:
                boolean z5 = this.f4244d;
                SeslDatePicker seslDatePicker = (SeslDatePicker) this.f4245e;
                if (z5) {
                    seslDatePicker.f4392R.setCurrentItem(seslDatePicker.f4386K + 1);
                } else {
                    seslDatePicker.f4392R.setCurrentItem(seslDatePicker.f4386K - 1);
                }
                seslDatePicker.postDelayed(this, 300L);
                break;
        }
    }
}
