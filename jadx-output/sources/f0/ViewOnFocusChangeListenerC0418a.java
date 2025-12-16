package f0;

import android.view.View;
import androidx.picker.widget.SeslTimePicker;

/* renamed from: f0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnFocusChangeListenerC0418a implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DialogInterfaceOnClickListenerC0419b f6818a;

    public ViewOnFocusChangeListenerC0418a(DialogInterfaceOnClickListenerC0419b dialogInterfaceOnClickListenerC0419b) {
        this.f6818a = dialogInterfaceOnClickListenerC0419b;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z4) {
        SeslTimePicker seslTimePicker = this.f6818a.f6819i;
        if (seslTimePicker.f4459c.f4497y && z4) {
            seslTimePicker.setEditTextMode(false);
        }
    }
}
