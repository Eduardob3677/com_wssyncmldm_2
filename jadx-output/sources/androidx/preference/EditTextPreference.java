package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public class EditTextPreference extends DialogPreference {

    /* renamed from: d0, reason: collision with root package name */
    public String f4581d0;

    public EditTextPreference(Context context, AttributeSet attributeSet, int i5, int i6) {
        super(context, attributeSet, i5, i6);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.f4604c, i5, i6);
        if (typedArrayObtainStyledAttributes.getBoolean(0, typedArrayObtainStyledAttributes.getBoolean(0, false))) {
            if (Z0.h.f == null) {
                Z0.h.f = new Z0.h(11);
            }
            this.f4641O = Z0.h.f;
            j();
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final boolean A() {
        return TextUtils.isEmpty(this.f4581d0) || super.A();
    }

    public final void D(String str) {
        boolean zA = A();
        this.f4581d0 = str;
        w(str);
        boolean zA2 = A();
        if (zA2 != zA) {
            k(zA2);
        }
        j();
    }

    @Override // androidx.preference.Preference
    public final Object q(TypedArray typedArray, int i5) {
        return typedArray.getString(i5);
    }

    @Override // androidx.preference.Preference
    public final void r(Parcelable parcelable) {
        if (!parcelable.getClass().equals(C0183c.class)) {
            super.r(parcelable);
            return;
        }
        C0183c c0183c = (C0183c) parcelable;
        super.r(c0183c.getSuperState());
        D(c0183c.f4705c);
    }

    @Override // androidx.preference.Preference
    public final Parcelable s() {
        this.f4639M = true;
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f4663t) {
            return absSavedState;
        }
        C0183c c0183c = new C0183c(absSavedState);
        c0183c.f4705c = this.f4581d0;
        return c0183c;
    }

    @Override // androidx.preference.Preference
    public final void t(Object obj) {
        D(f((String) obj));
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i5) {
        this(context, attributeSet, i5, 0);
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, A.b.b(context, R.attr.editTextPreferenceStyle, android.R.attr.editTextPreferenceStyle));
    }

    public EditTextPreference(Context context) {
        this(context, null);
    }
}
