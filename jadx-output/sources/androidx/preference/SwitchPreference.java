package androidx.preference;

import J.Q;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import androidx.appcompat.widget.SwitchCompat;
import com.wssyncmldm.R;
import java.util.WeakHashMap;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {

    /* renamed from: c0, reason: collision with root package name */
    public final C0181a f4687c0;

    /* renamed from: d0, reason: collision with root package name */
    public final CharSequence f4688d0;

    /* renamed from: e0, reason: collision with root package name */
    public final CharSequence f4689e0;

    /* renamed from: f0, reason: collision with root package name */
    public int f4690f0;
    public int g0;

    /* renamed from: h0, reason: collision with root package name */
    public final ViewOnClickListenerC0192l f4691h0;

    /* JADX WARN: Illegal instructions before constructor call */
    public SwitchPreference(Context context, AttributeSet attributeSet) {
        int iB = A.b.b(context, R.attr.switchPreferenceStyle, android.R.attr.switchPreferenceStyle);
        super(context, attributeSet, iB, 0);
        this.f4687c0 = new C0181a(this, 1);
        this.g0 = 0;
        this.f4691h0 = new ViewOnClickListenerC0192l(this, 1);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.f4612l, iB, 0);
        this.f4690f0 = 0;
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
        this.f4688d0 = string3 == null ? typedArrayObtainStyledAttributes.getString(3) : string3;
        j();
        String string4 = typedArrayObtainStyledAttributes.getString(8);
        this.f4689e0 = string4 == null ? typedArrayObtainStyledAttributes.getString(4) : string4;
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
            switchCompat.setTextOn(this.f4688d0);
            switchCompat.setTextOff(this.f4689e0);
            switchCompat.setOnCheckedChangeListener(this.f4687c0);
            if (switchCompat.isClickable()) {
                switchCompat.setOnClickListener(this.f4691h0);
            }
            if (i()) {
                WeakHashMap weakHashMap = Q.f940a;
                switchCompat.setBackground(null);
                switchCompat.setClickable(false);
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void n(H h5) {
        super.n(h5);
        if (this.f4690f0 != 1) {
            G(h5.s(android.R.id.switch_widget));
        }
        E(h5.s(android.R.id.summary));
    }

    @Override // androidx.preference.Preference
    public final void v(View view) {
        super.v(view);
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f4648c.getSystemService("accessibility");
        if (accessibilityManager == null || accessibilityManager.isEnabled()) {
            if (this.f4690f0 != 1) {
                G(view.findViewById(android.R.id.switch_widget));
            }
            if (i()) {
                return;
            }
            E(view.findViewById(android.R.id.summary));
        }
    }
}
