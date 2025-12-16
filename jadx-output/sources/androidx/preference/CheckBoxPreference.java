package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {

    /* renamed from: c0, reason: collision with root package name */
    public final C0181a f4557c0;

    /* JADX WARN: Illegal instructions before constructor call */
    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        int iB = A.b.b(context, R.attr.checkBoxPreferenceStyle, android.R.attr.checkBoxPreferenceStyle);
        super(context, attributeSet, iB, 0);
        this.f4557c0 = new C0181a(this, 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.f4602a, iB, 0);
        String string = typedArrayObtainStyledAttributes.getString(5);
        this.f4698Y = string == null ? typedArrayObtainStyledAttributes.getString(0) : string;
        if (this.f4697X) {
            j();
        }
        String string2 = typedArrayObtainStyledAttributes.getString(4);
        this.f4699Z = string2 == null ? typedArrayObtainStyledAttributes.getString(1) : string2;
        if (!this.f4697X) {
            j();
        }
        this.f4701b0 = typedArrayObtainStyledAttributes.getBoolean(3, typedArrayObtainStyledAttributes.getBoolean(2, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void F(View view) {
        boolean z4 = view instanceof CompoundButton;
        if (z4) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.f4697X);
        }
        if (z4) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.f4557c0);
        }
    }

    @Override // androidx.preference.Preference
    public final void n(H h5) {
        super.n(h5);
        F(h5.s(android.R.id.checkbox));
        E(h5.s(android.R.id.summary));
    }

    @Override // androidx.preference.Preference
    public final void v(View view) {
        super.v(view);
        if (((AccessibilityManager) this.f4648c.getSystemService("accessibility")).isEnabled()) {
            F(view.findViewById(android.R.id.checkbox));
            if (i()) {
                return;
            }
            E(view.findViewById(android.R.id.summary));
        }
    }
}
