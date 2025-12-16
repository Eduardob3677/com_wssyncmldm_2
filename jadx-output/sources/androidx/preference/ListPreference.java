package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public class ListPreference extends DialogPreference {

    /* renamed from: d0, reason: collision with root package name */
    public final CharSequence[] f4620d0;

    /* renamed from: e0, reason: collision with root package name */
    public final CharSequence[] f4621e0;

    /* renamed from: f0, reason: collision with root package name */
    public String f4622f0;
    public String g0;

    /* renamed from: h0, reason: collision with root package name */
    public boolean f4623h0;

    public ListPreference(Context context, AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5, 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.f4605d, i5, 0);
        CharSequence[] textArray = typedArrayObtainStyledAttributes.getTextArray(2);
        this.f4620d0 = textArray == null ? typedArrayObtainStyledAttributes.getTextArray(0) : textArray;
        CharSequence[] textArray2 = typedArrayObtainStyledAttributes.getTextArray(3);
        this.f4621e0 = textArray2 == null ? typedArrayObtainStyledAttributes.getTextArray(1) : textArray2;
        if (typedArrayObtainStyledAttributes.getBoolean(4, typedArrayObtainStyledAttributes.getBoolean(4, false))) {
            if (e4.d.f == null) {
                e4.d.f = new e4.d(11);
            }
            this.f4641O = e4.d.f;
            j();
        }
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, I.f, i5, 0);
        String string = typedArrayObtainStyledAttributes2.getString(34);
        this.g0 = string == null ? typedArrayObtainStyledAttributes2.getString(7) : string;
        typedArrayObtainStyledAttributes2.recycle();
    }

    public final int D(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.f4621e0) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (TextUtils.equals(charSequenceArr[length].toString(), str)) {
                return length;
            }
        }
        return -1;
    }

    public final CharSequence E() {
        CharSequence[] charSequenceArr;
        int iD = D(this.f4622f0);
        if (iD < 0 || (charSequenceArr = this.f4620d0) == null) {
            return null;
        }
        return charSequenceArr[iD];
    }

    public final void F(String str) {
        boolean z4 = !TextUtils.equals(this.f4622f0, str);
        if (z4 || !this.f4623h0) {
            this.f4622f0 = str;
            this.f4623h0 = true;
            w(str);
            if (z4) {
                j();
            }
        }
    }

    @Override // androidx.preference.Preference
    public final CharSequence g() {
        q qVar = this.f4641O;
        if (qVar != null) {
            return qVar.b(this);
        }
        CharSequence charSequenceE = E();
        CharSequence charSequenceG = super.g();
        String str = this.g0;
        if (str == null) {
            return charSequenceG;
        }
        if (charSequenceE == null) {
            charSequenceE = "";
        }
        String str2 = String.format(str, charSequenceE);
        if (TextUtils.equals(str2, charSequenceG)) {
            return charSequenceG;
        }
        Log.w("ListPreference", "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
        return str2;
    }

    @Override // androidx.preference.Preference
    public final Object q(TypedArray typedArray, int i5) {
        return typedArray.getString(i5);
    }

    @Override // androidx.preference.Preference
    public final void r(Parcelable parcelable) {
        if (!parcelable.getClass().equals(C0186f.class)) {
            super.r(parcelable);
            return;
        }
        C0186f c0186f = (C0186f) parcelable;
        super.r(c0186f.getSuperState());
        F(c0186f.f4710c);
    }

    @Override // androidx.preference.Preference
    public final Parcelable s() {
        this.f4639M = true;
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f4663t) {
            return absSavedState;
        }
        C0186f c0186f = new C0186f(absSavedState);
        c0186f.f4710c = this.f4622f0;
        return c0186f;
    }

    @Override // androidx.preference.Preference
    public final void t(Object obj) {
        F(f((String) obj));
    }

    @Override // androidx.preference.Preference
    public final void z(CharSequence charSequence) {
        super.z(charSequence);
        if (charSequence == null) {
            this.g0 = null;
        } else {
            this.g0 = charSequence.toString();
        }
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, A.b.b(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle));
    }
}
