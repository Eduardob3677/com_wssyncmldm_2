package f0;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import androidx.fragment.app.G;
import androidx.picker.widget.S;
import androidx.picker.widget.SeslNumberPicker;
import androidx.picker.widget.SeslTimePicker;
import androidx.picker.widget.W;
import c1.w;
import com.idm.fotaagent.enabler.ui.postpone.PostponeDialog;
import com.samsung.android.knox.ex.KnoxContract;
import com.wssyncmldm.R;
import e.C0405i;
import e.DialogInterfaceC0407k;

/* renamed from: f0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC0419b extends DialogInterfaceC0407k implements DialogInterface.OnClickListener, S {

    /* renamed from: i, reason: collision with root package name */
    public final SeslTimePicker f6819i;

    /* renamed from: j, reason: collision with root package name */
    public final A2.b f6820j;

    /* renamed from: k, reason: collision with root package name */
    public final ViewOnFocusChangeListenerC0418a f6821k;

    /* renamed from: l, reason: collision with root package name */
    public final InputMethodManager f6822l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f6823m;

    public DialogInterfaceOnClickListenerC0419b(G g5, A2.b bVar, int i5, int i6, boolean z4) {
        super(g5, W1.a.S(g5) ? R.style.Theme_AppCompat_Light_PickerDialog_TimePicker : R.style.Theme_AppCompat_PickerDialog_TimePicker);
        this.f6821k = new ViewOnFocusChangeListenerC0418a(this);
        this.f6820j = bVar;
        Context context = getContext();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.sesl_time_picker_spinner_dialog, (ViewGroup) null);
        C0405i c0405i = this.f6776h;
        c0405i.f6755h = viewInflate;
        c0405i.f6756i = 0;
        c0405i.f6757j = false;
        this.f6776h.d(-1, context.getString(R.string.sesl_picker_done), this);
        this.f6776h.d(-2, context.getString(R.string.sesl_picker_cancel), this);
        SeslTimePicker seslTimePicker = (SeslTimePicker) viewInflate.findViewById(R.id.timePicker);
        this.f6819i = seslTimePicker;
        seslTimePicker.setIs24HourView(Boolean.valueOf(z4));
        seslTimePicker.setHour(i5);
        seslTimePicker.setMinute(i6);
        seslTimePicker.setOnTimeChangedListener(this);
        setTitle(R.string.sesl_time_picker_set_title);
        this.f6822l = (InputMethodManager) getContext().getSystemService("input_method");
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i5) {
        InputMethodManager inputMethodManager = this.f6822l;
        if (i5 == -2) {
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(getWindow().getDecorView().getWindowToken(), 0);
            }
            cancel();
        } else if (i5 == -1 && !this.f6823m) {
            A2.b bVar = this.f6820j;
            if (bVar != null) {
                SeslTimePicker seslTimePicker = this.f6819i;
                seslTimePicker.clearFocus();
                ((PostponeDialog) bVar.f58d).lambda$onCreateDialog$0(seslTimePicker, seslTimePicker.getHour(), seslTimePicker.getMinute());
            }
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(getWindow().getDecorView().getWindowToken(), 0);
            }
            dismiss();
        }
    }

    @Override // e.DialogInterfaceC0407k, androidx.activity.l, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Button buttonD = d(-1);
        ViewOnFocusChangeListenerC0418a viewOnFocusChangeListenerC0418a = this.f6821k;
        buttonD.setOnFocusChangeListener(viewOnFocusChangeListenerC0418a);
        d(-2).setOnFocusChangeListener(viewOnFocusChangeListenerC0418a);
        this.f6823m = true;
        w wVar = new w(this);
        W w2 = this.f6819i.f4459c;
        boolean zStartsWith = DateFormat.getBestDateTimePattern(w2.f4477c, "hm").startsWith("a");
        SeslNumberPicker seslNumberPicker = w2.f4483j;
        SeslNumberPicker seslNumberPicker2 = w2.f4482i;
        SeslNumberPicker seslNumberPicker3 = w2.f4484k;
        if (zStartsWith) {
            seslNumberPicker3.b(283, null);
            seslNumberPicker2.b(338, null);
            seslNumberPicker.b(393, wVar);
        } else {
            seslNumberPicker2.b(283, null);
            seslNumberPicker.b(338, wVar);
            seslNumberPicker3.b(393, null);
        }
    }

    @Override // android.app.Dialog
    public final void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        int i5 = bundle.getInt("hour");
        int i6 = bundle.getInt(KnoxContract.Config.DateTime.PARAM_MINUTE);
        Boolean boolValueOf = Boolean.valueOf(bundle.getBoolean("is24hour"));
        SeslTimePicker seslTimePicker = this.f6819i;
        seslTimePicker.setIs24HourView(boolValueOf);
        seslTimePicker.setHour(i5);
        seslTimePicker.setMinute(i6);
    }

    @Override // androidx.activity.l, android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        SeslTimePicker seslTimePicker = this.f6819i;
        bundleOnSaveInstanceState.putInt("hour", seslTimePicker.getHour());
        bundleOnSaveInstanceState.putInt(KnoxContract.Config.DateTime.PARAM_MINUTE, seslTimePicker.getMinute());
        bundleOnSaveInstanceState.putBoolean("is24hour", seslTimePicker.f4459c.f4479e);
        return bundleOnSaveInstanceState;
    }
}
