package androidx.picker.widget;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.TimePicker;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes.dex */
public class SeslTimePicker extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public final W f4459c;

    public SeslTimePicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.timePickerStyle, 0);
        this.f4459c = new W(this, context, attributeSet);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        this.f4459c.d(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public int getBaseline() {
        return this.f4459c.f4482i.getBaseline();
    }

    public int getHour() {
        return this.f4459c.b();
    }

    public int getMinute() {
        return this.f4459c.f4483j.getValue();
    }

    @Override // android.view.View
    public final boolean isEnabled() {
        return this.f4459c.f4493u;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        W w2 = this.f4459c;
        w2.getClass();
        Locale locale = configuration.locale;
        if (!locale.equals(w2.f4477c)) {
            w2.f4477c = locale;
        }
        w2.f4494v = Calendar.getInstance(locale);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        this.f4459c.getClass();
        accessibilityEvent.setClassName(TimePicker.class.getName());
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.f4459c.getClass();
        accessibilityNodeInfo.setClassName(TimePicker.class.getName());
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i5, int i6) {
        int mode = View.MeasureSpec.getMode(i5);
        int mode2 = View.MeasureSpec.getMode(i6);
        W w2 = this.f4459c;
        if (mode == Integer.MIN_VALUE) {
            i5 = View.MeasureSpec.makeMeasureSpec(w2.f4470B, 1073741824);
        }
        if (mode2 == Integer.MIN_VALUE) {
            i6 = View.MeasureSpec.makeMeasureSpec(w2.f4471C, 1073741824);
        }
        super.onMeasure(i5, i6);
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        this.f4459c.d(accessibilityEvent);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        View.BaseSavedState baseSavedState = (View.BaseSavedState) parcelable;
        super.onRestoreInstanceState(baseSavedState.getSuperState());
        W w2 = this.f4459c;
        w2.getClass();
        U u5 = (U) baseSavedState;
        w2.f(u5.f4462c, true);
        w2.h(u5.f4463d);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        W w2 = this.f4459c;
        w2.getClass();
        return new U(parcelableOnSaveInstanceState, w2.b(), w2.f4483j.getValue());
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        super.requestLayout();
        W w2 = this.f4459c;
        if (w2 != null) {
            SeslNumberPicker seslNumberPicker = w2.f4484k;
            if (seslNumberPicker != null) {
                seslNumberPicker.requestLayout();
            }
            SeslNumberPicker seslNumberPicker2 = w2.f4482i;
            if (seslNumberPicker2 != null) {
                seslNumberPicker2.requestLayout();
            }
            SeslNumberPicker seslNumberPicker3 = w2.f4483j;
            if (seslNumberPicker3 != null) {
                seslNumberPicker3.requestLayout();
            }
        }
    }

    public void set5MinuteInterval(boolean z4) {
        W w2 = this.f4459c;
        SeslNumberPicker seslNumberPicker = w2.f4483j;
        if (!z4) {
            seslNumberPicker.setCustomIntervalValue(5);
            return;
        }
        if (seslNumberPicker.getValue() >= 58) {
            int iB = w2.b();
            w2.f(iB == 23 ? 0 : iB + 1, false);
        }
        seslNumberPicker.setCustomIntervalValue(5);
        seslNumberPicker.f4453c.b(true);
        w2.f4472D = 5;
    }

    public void setCustomTimePickerIdleColor(int i5) {
        W w2 = this.f4459c;
        w2.f4482i.setCustomNumberPickerIdleColor(i5);
        w2.f4483j.setCustomNumberPickerIdleColor(i5);
        w2.f4484k.setCustomNumberPickerIdleColor(i5);
        w2.n.setTextColor(i5);
        w2.f4475a.invalidate();
    }

    public void setCustomTimePickerScrollColor(int i5) throws Resources.NotFoundException {
        W w2 = this.f4459c;
        w2.f4482i.setCustomNumberPickerScrollColor(i5);
        w2.f4483j.setCustomNumberPickerScrollColor(i5);
        w2.f4484k.setCustomNumberPickerScrollColor(i5);
        w2.n.setTextColor(w2.f4476b.getResources().getColor(com.wssyncmldm.R.color.sesl_number_picker_text_color_appwidget));
        w2.f4475a.invalidate();
    }

    public void setEditTextMode(boolean z4) {
        this.f4459c.g(z4);
    }

    @Override // android.view.View
    public void setEnabled(boolean z4) {
        super.setEnabled(z4);
        W w2 = this.f4459c;
        w2.f4483j.setEnabled(z4);
        TextView textView = w2.n;
        if (textView != null) {
            textView.setEnabled(z4);
        }
        w2.f4482i.setEnabled(z4);
        w2.f4484k.setEnabled(z4);
        w2.f4493u = z4;
    }

    public void setHour(int i5) {
        this.f4459c.f(Z0.j.n(i5, 0, 23), true);
    }

    public void setIs24HourView(Boolean bool) {
        if (bool == null) {
            return;
        }
        W w2 = this.f4459c;
        boolean zBooleanValue = bool.booleanValue();
        if (w2.f4479e == zBooleanValue) {
            return;
        }
        int iB = w2.b();
        w2.f4479e = zBooleanValue;
        w2.c();
        w2.k();
        w2.f(iB, false);
        w2.j();
    }

    public void setLocale(Locale locale) {
        W w2 = this.f4459c;
        if (!locale.equals(w2.f4477c)) {
            w2.f4477c = locale;
        }
        w2.f4494v = Calendar.getInstance(locale);
    }

    public void setMinute(int i5) {
        this.f4459c.h(Z0.j.n(i5, 0, 59));
    }

    public void setOnEditTextModeChangedListener(Q q2) {
        this.f4459c.getClass();
    }

    public void setOnTimeChangedListener(S s5) {
        this.f4459c.f4478d = s5;
    }
}
