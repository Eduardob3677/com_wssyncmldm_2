package androidx.picker.widget;

import android.animation.ObjectAnimator;
import android.view.View;

/* renamed from: androidx.picker.widget.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC0163e implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SeslDatePicker f4513c;

    public ViewOnClickListenerC0163e(SeslDatePicker seslDatePicker) {
        this.f4513c = seslDatePicker;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SeslDatePicker seslDatePicker = this.f4513c;
        seslDatePicker.setCurrentViewType((seslDatePicker.f4422t + 1) % 2);
        int i5 = seslDatePicker.f4422t;
        ObjectAnimator objectAnimator = seslDatePicker.l0;
        ObjectAnimator objectAnimator2 = seslDatePicker.m0;
        if (i5 == 0) {
            if (objectAnimator2.isRunning()) {
                objectAnimator2.cancel();
            }
            objectAnimator.start();
        } else {
            if (objectAnimator.isRunning()) {
                objectAnimator.cancel();
            }
            objectAnimator2.start();
        }
    }
}
