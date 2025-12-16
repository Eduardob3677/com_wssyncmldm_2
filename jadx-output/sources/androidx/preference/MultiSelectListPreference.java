package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import com.wssyncmldm.R;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class MultiSelectListPreference extends DialogPreference {

    /* renamed from: d0, reason: collision with root package name */
    public final CharSequence[] f4625d0;

    /* renamed from: e0, reason: collision with root package name */
    public final CharSequence[] f4626e0;

    /* renamed from: f0, reason: collision with root package name */
    public final HashSet f4627f0;

    /* JADX WARN: Illegal instructions before constructor call */
    public MultiSelectListPreference(Context context, AttributeSet attributeSet) {
        int iB = A.b.b(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle);
        super(context, attributeSet, iB, 0);
        this.f4627f0 = new HashSet();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.f4606e, iB, 0);
        CharSequence[] textArray = typedArrayObtainStyledAttributes.getTextArray(2);
        this.f4625d0 = textArray == null ? typedArrayObtainStyledAttributes.getTextArray(0) : textArray;
        CharSequence[] textArray2 = typedArrayObtainStyledAttributes.getTextArray(3);
        this.f4626e0 = textArray2 == null ? typedArrayObtainStyledAttributes.getTextArray(1) : textArray2;
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void D(Set set) {
        HashSet hashSet = this.f4627f0;
        hashSet.clear();
        hashSet.addAll(set);
        if (B()) {
            if (!set.equals(B() ? this.f4649d.b().getStringSet(this.n, null) : null)) {
                SharedPreferences.Editor editorA = this.f4649d.a();
                editorA.putStringSet(this.n, set);
                C(editorA);
            }
        }
        j();
    }

    @Override // androidx.preference.Preference
    public final Object q(TypedArray typedArray, int i5) {
        CharSequence[] textArray = typedArray.getTextArray(i5);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    @Override // androidx.preference.Preference
    public final void r(Parcelable parcelable) {
        if (!parcelable.getClass().equals(C0189i.class)) {
            super.r(parcelable);
            return;
        }
        C0189i c0189i = (C0189i) parcelable;
        super.r(c0189i.getSuperState());
        D(c0189i.f4715c);
    }

    @Override // androidx.preference.Preference
    public final Parcelable s() {
        this.f4639M = true;
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f4663t) {
            return absSavedState;
        }
        C0189i c0189i = new C0189i(absSavedState);
        c0189i.f4715c = this.f4627f0;
        return c0189i;
    }

    @Override // androidx.preference.Preference
    public final void t(Object obj) {
        Set<String> stringSet = (Set) obj;
        if (B()) {
            stringSet = this.f4649d.b().getStringSet(this.n, stringSet);
        }
        D(stringSet);
    }
}
