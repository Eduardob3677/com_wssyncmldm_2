package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.widget.TextView;

/* loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {

    /* renamed from: X, reason: collision with root package name */
    public boolean f4697X;

    /* renamed from: Y, reason: collision with root package name */
    public CharSequence f4698Y;

    /* renamed from: Z, reason: collision with root package name */
    public CharSequence f4699Z;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f4700a0;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f4701b0;

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
    }

    @Override // androidx.preference.Preference
    public final boolean A() {
        return (this.f4701b0 ? this.f4697X : !this.f4697X) || super.A();
    }

    public final void D(boolean z4) {
        boolean z5 = this.f4697X != z4;
        if (z5 || !this.f4700a0) {
            this.f4697X = z4;
            this.f4700a0 = true;
            if (B()) {
                boolean z6 = !z4;
                if (B()) {
                    z6 = this.f4649d.b().getBoolean(this.n, z6);
                }
                if (z4 != z6) {
                    SharedPreferences.Editor editorA = this.f4649d.a();
                    editorA.putBoolean(this.n, z4);
                    C(editorA);
                }
            }
            if (z5) {
                k(A());
                j();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void E(View view) {
        boolean z4;
        int i5;
        if (!(view instanceof TextView)) {
            return;
        }
        TextView textView = (TextView) view;
        if (this.f4697X && !TextUtils.isEmpty(this.f4698Y)) {
            textView.setText(this.f4698Y);
        } else {
            if (this.f4697X || TextUtils.isEmpty(this.f4699Z)) {
                z4 = true;
                if (z4) {
                    CharSequence charSequenceG = g();
                    if (!TextUtils.isEmpty(charSequenceG)) {
                        textView.setText(charSequenceG);
                        z4 = false;
                    }
                }
                i5 = z4 ? 8 : 0;
                if (i5 == textView.getVisibility()) {
                    textView.setVisibility(i5);
                    return;
                }
                return;
            }
            textView.setText(this.f4699Z);
        }
        z4 = false;
        if (z4) {
        }
        if (z4) {
        }
        if (i5 == textView.getVisibility()) {
        }
    }

    @Override // androidx.preference.Preference
    public void o() {
        boolean z4 = !this.f4697X;
        a(Boolean.valueOf(z4));
        D(z4);
    }

    @Override // androidx.preference.Preference
    public final Object q(TypedArray typedArray, int i5) {
        return Boolean.valueOf(typedArray.getBoolean(i5, false));
    }

    @Override // androidx.preference.Preference
    public final void r(Parcelable parcelable) {
        if (!parcelable.getClass().equals(M.class)) {
            super.r(parcelable);
            return;
        }
        M m5 = (M) parcelable;
        super.r(m5.getSuperState());
        D(m5.f4624c);
    }

    @Override // androidx.preference.Preference
    public final Parcelable s() {
        this.f4639M = true;
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f4663t) {
            return absSavedState;
        }
        M m5 = new M(absSavedState);
        m5.f4624c = this.f4697X;
        return m5;
    }

    @Override // androidx.preference.Preference
    public final void t(Object obj) {
        if (obj == null) {
            obj = Boolean.FALSE;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        if (B()) {
            zBooleanValue = this.f4649d.b().getBoolean(this.n, zBooleanValue);
        }
        D(zBooleanValue);
    }
}
