package androidx.picker.widget;

import android.view.ViewConfiguration;

/* loaded from: classes.dex */
public final class O implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4246c;

    /* renamed from: d, reason: collision with root package name */
    public int f4247d;

    /* renamed from: e, reason: collision with root package name */
    public int f4248e;
    public final /* synthetic */ Object f;

    public /* synthetic */ O(int i5, Object obj) {
        this.f4246c = i5;
        this.f = obj;
    }

    public final void a() {
        switch (this.f4246c) {
            case 0:
                P p4 = (P) this.f;
                int right = ((SeslSpinningDatePickerSpinner) p4.f4233b).getRight();
                int bottom = ((SeslSpinningDatePickerSpinner) p4.f4233b).getBottom();
                this.f4248e = 0;
                this.f4247d = 0;
                ((SeslSpinningDatePickerSpinner) p4.f4233b).removeCallbacks(this);
                if (p4.f4277R) {
                    p4.f4277R = false;
                    ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate(0, p4.f4274O, right, bottom);
                }
                if (p4.f4278S) {
                    p4.f4278S = false;
                    ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate(0, 0, right, p4.f4273N);
                    break;
                }
                break;
            default:
                D d2 = (D) this.f;
                int right2 = ((SeslNumberPicker) d2.f4233b).getRight();
                int bottom2 = ((SeslNumberPicker) d2.f4233b).getBottom();
                this.f4248e = 0;
                this.f4247d = 0;
                ((SeslNumberPicker) d2.f4233b).removeCallbacks(this);
                if (d2.f4137a0) {
                    d2.f4137a0 = false;
                    ((SeslNumberPicker) d2.f4233b).invalidate(0, d2.f4133Y, right2, bottom2);
                }
                if (d2.f4139b0) {
                    d2.f4139b0 = false;
                    ((SeslNumberPicker) d2.f4233b).invalidate(0, 0, right2, d2.f4131X);
                    break;
                }
                break;
        }
    }

    /* JADX WARN: Type inference failed for: r9v13, types: [boolean, byte] */
    /* JADX WARN: Type inference failed for: r9v8, types: [boolean, byte] */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4246c) {
            case 0:
                P p4 = (P) this.f;
                int right = ((SeslSpinningDatePickerSpinner) p4.f4233b).getRight();
                int bottom = ((SeslSpinningDatePickerSpinner) p4.f4233b).getBottom();
                int i5 = this.f4248e;
                if (i5 == 1) {
                    int i6 = this.f4247d;
                    if (i6 == 1) {
                        p4.f4277R = true;
                        ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate(0, p4.f4274O, right, bottom);
                        break;
                    } else if (i6 == 2) {
                        p4.f4278S = true;
                        ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate(0, 0, right, p4.f4273N);
                        break;
                    }
                } else if (i5 == 2) {
                    int i7 = this.f4247d;
                    if (i7 == 1) {
                        if (!p4.f4277R) {
                            ((SeslSpinningDatePickerSpinner) p4.f4233b).postDelayed(this, ViewConfiguration.getPressedStateDuration());
                        }
                        p4.f4277R = (byte) (!p4.f4277R ? 1 : 0);
                        ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate(0, p4.f4274O, right, bottom);
                        break;
                    } else if (i7 == 2) {
                        if (!p4.f4278S) {
                            ((SeslSpinningDatePickerSpinner) p4.f4233b).postDelayed(this, ViewConfiguration.getPressedStateDuration());
                        }
                        p4.f4278S = (byte) (!p4.f4278S ? 1 : 0);
                        ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate(0, 0, right, p4.f4273N);
                        break;
                    }
                }
                break;
            default:
                D d2 = (D) this.f;
                int right2 = ((SeslNumberPicker) d2.f4233b).getRight();
                int bottom2 = ((SeslNumberPicker) d2.f4233b).getBottom();
                int i8 = this.f4248e;
                if (i8 == 1) {
                    int i9 = this.f4247d;
                    if (i9 == 1) {
                        d2.f4137a0 = true;
                        ((SeslNumberPicker) d2.f4233b).invalidate(0, d2.f4133Y, right2, bottom2);
                        break;
                    } else if (i9 == 2) {
                        d2.f4139b0 = true;
                        ((SeslNumberPicker) d2.f4233b).invalidate(0, 0, right2, d2.f4131X);
                        break;
                    }
                } else if (i8 == 2) {
                    int i10 = this.f4247d;
                    if (i10 == 1) {
                        if (!d2.f4137a0) {
                            ((SeslNumberPicker) d2.f4233b).postDelayed(this, ViewConfiguration.getPressedStateDuration());
                        }
                        d2.f4137a0 = !d2.f4137a0;
                        ((SeslNumberPicker) d2.f4233b).invalidate(0, d2.f4133Y, right2, bottom2);
                        break;
                    } else if (i10 == 2) {
                        if (!d2.f4139b0) {
                            ((SeslNumberPicker) d2.f4233b).postDelayed(this, ViewConfiguration.getPressedStateDuration());
                        }
                        d2.f4139b0 = !d2.f4139b0;
                        ((SeslNumberPicker) d2.f4233b).invalidate(0, 0, right2, d2.f4131X);
                        break;
                    }
                }
                break;
        }
    }
}
