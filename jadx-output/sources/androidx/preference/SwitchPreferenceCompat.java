package androidx.preference;

import J.Q;
import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import androidx.appcompat.widget.SwitchCompat;
import java.util.WeakHashMap;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {

    /* renamed from: c0, reason: collision with root package name */
    public final C0181a f4692c0;

    /* renamed from: d0, reason: collision with root package name */
    public final CharSequence f4693d0;

    /* renamed from: e0, reason: collision with root package name */
    public final CharSequence f4694e0;

    /* renamed from: f0, reason: collision with root package name */
    public int f4695f0;
    public int g0;

    /* renamed from: h0, reason: collision with root package name */
    public final ViewOnClickListenerC0192l f4696h0;

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5, 0);
        this.f4692c0 = new C0181a(this, 2);
        this.g0 = 0;
        this.f4696h0 = new ViewOnClickListenerC0192l(this, 2);
        this.f4695f0 = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.f4613m, i5, 0);
        String string = typedArrayObtainStyledAttributes.getString(7);
        this.f4698Y = string == null ? typedArrayObtainStyledAttributes.getString(0) : string;
        if (this.f4697X) {
            j();
        }
        String string2 = typedArrayObtainStyledAttributes.getString(6);
        this.f4699Z = string2 == null ? typedArrayObtainStyledAttributes.getString(1) : string2;
        if (!this.f4697X) {
            j();
        }
        String string3 = typedArrayObtainStyledAttributes.getString(9);
        this.f4693d0 = string3 == null ? typedArrayObtainStyledAttributes.getString(3) : string3;
        j();
        String string4 = typedArrayObtainStyledAttributes.getString(8);
        this.f4694e0 = string4 == null ? typedArrayObtainStyledAttributes.getString(4) : string4;
        j();
        this.f4701b0 = typedArrayObtainStyledAttributes.getBoolean(5, typedArrayObtainStyledAttributes.getBoolean(2, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    public static boolean F(boolean z4, View view, SwitchCompat switchCompat) {
        return z4 != switchCompat.isChecked() && view.hasWindowFocus() && AbstractC0739a.m(null, view) && !view.isTemporarilyDetached();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void G(View view) {
        boolean z4 = view instanceof SwitchCompat;
        if (z4) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.f4697X);
        }
        if (z4) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.setTextOn(this.f4693d0);
            switchCompat.setTextOff(this.f4694e0);
            switchCompat.setOnCheckedChangeListener(this.f4692c0);
            if (switchCompat.isClickable()) {
                switchCompat.setOnClickListener(this.f4696h0);
            }
            if (!i() || (this instanceof SeslSwitchPreferenceScreen)) {
                return;
            }
            WeakHashMap weakHashMap = Q.f940a;
            switchCompat.setBackground(null);
            switchCompat.setClickable(false);
        }
    }

    @Override // androidx.preference.Preference
    public void n(H h5) {
        super.n(h5);
        if (this.f4695f0 != 1) {
            G(h5.s(R.id.switch_widget));
        }
        E(h5.s(R.id.summary));
    }

    @Override // androidx.preference.Preference
    public final void v(View view) {
        super.v(view);
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f4648c.getSystemService("accessibility");
        if (accessibilityManager == null || accessibilityManager.isEnabled()) {
            if (this.f4695f0 != 1) {
                G(view.findViewById(R.id.switch_widget));
            }
            if (i()) {
                return;
            }
            E(view.findViewById(R.id.summary));
        }
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.wssyncmldm.R.attr.switchPreferenceCompatStyle);
    }
}
