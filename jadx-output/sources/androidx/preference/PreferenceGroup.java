package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import java.util.ArrayList;
import java.util.Collections;
import o.C0722k;

/* loaded from: classes.dex */
public abstract class PreferenceGroup extends Preference {

    /* renamed from: X, reason: collision with root package name */
    public final C0722k f4670X;

    /* renamed from: Y, reason: collision with root package name */
    public final ArrayList f4671Y;

    /* renamed from: Z, reason: collision with root package name */
    public boolean f4672Z;

    /* renamed from: a0, reason: collision with root package name */
    public int f4673a0;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f4674b0;

    /* renamed from: c0, reason: collision with root package name */
    public int f4675c0;

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5, 0);
        this.f4670X = new C0722k();
        new Handler(Looper.getMainLooper());
        this.f4672Z = true;
        this.f4673a0 = 0;
        this.f4674b0 = false;
        this.f4675c0 = Integer.MAX_VALUE;
        this.f4671Y = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.f4608h, i5, 0);
        this.f4672Z = typedArrayObtainStyledAttributes.getBoolean(2, typedArrayObtainStyledAttributes.getBoolean(2, true));
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            H(typedArrayObtainStyledAttributes.getInt(1, typedArrayObtainStyledAttributes.getInt(1, Integer.MAX_VALUE)));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void D(Preference preference) {
        long jLongValue;
        if (this.f4671Y.contains(preference)) {
            return;
        }
        if (preference.n != null) {
            PreferenceGroup preferenceGroup = this;
            while (true) {
                PreferenceGroup preferenceGroup2 = preferenceGroup.f4638L;
                if (preferenceGroup2 == null) {
                    break;
                } else {
                    preferenceGroup = preferenceGroup2;
                }
            }
            String str = preference.n;
            if (preferenceGroup.E(str) != null) {
                Log.e("PreferenceGroup", "Found duplicated key: \"" + str + "\". This can cause unintended behaviour, please use unique keys for every preference.");
            }
        }
        int i5 = preference.f4653i;
        if (i5 == Integer.MAX_VALUE) {
            if (this.f4672Z) {
                int i6 = this.f4673a0;
                this.f4673a0 = i6 + 1;
                if (i6 != i5) {
                    preference.f4653i = i6;
                    D d2 = preference.f4636J;
                    if (d2 != null) {
                        Handler handler = d2.f4562i;
                        t tVar = d2.f4563j;
                        handler.removeCallbacks(tVar);
                        handler.post(tVar);
                    }
                }
            }
            if (preference instanceof PreferenceGroup) {
                ((PreferenceGroup) preference).f4672Z = this.f4672Z;
            }
        }
        int iBinarySearch = Collections.binarySearch(this.f4671Y, preference);
        if (iBinarySearch < 0) {
            iBinarySearch = (iBinarySearch * (-1)) - 1;
        }
        boolean zA = A();
        if (preference.f4667x == zA) {
            preference.f4667x = !zA;
            preference.k(preference.A());
            preference.j();
        }
        synchronized (this) {
            this.f4671Y.add(iBinarySearch, preference);
        }
        F f = this.f4649d;
        String str2 = preference.n;
        if (str2 == null || !this.f4670X.containsKey(str2)) {
            synchronized (f) {
                jLongValue = f.f4583b;
                f.f4583b = 1 + jLongValue;
            }
        } else {
            jLongValue = ((Long) this.f4670X.getOrDefault(str2, null)).longValue();
            this.f4670X.remove(str2);
        }
        preference.f4650e = jLongValue;
        preference.f = true;
        try {
            preference.m(f);
            preference.f = false;
            if (preference.f4638L != null) {
                throw new IllegalStateException("This preference already has a parent. You must remove the existing parent before assigning a new one.");
            }
            preference.f4638L = this;
            if (this.f4674b0) {
                preference.l();
            }
            D d5 = this.f4636J;
            if (d5 != null) {
                Handler handler2 = d5.f4562i;
                t tVar2 = d5.f4563j;
                handler2.removeCallbacks(tVar2);
                handler2.post(tVar2);
            }
        } catch (Throwable th) {
            preference.f = false;
            throw th;
        }
    }

    public final Preference E(CharSequence charSequence) {
        Preference preferenceE;
        if (charSequence == null) {
            throw new IllegalArgumentException("Key cannot be null");
        }
        if (TextUtils.equals(this.n, charSequence)) {
            return this;
        }
        int iG = G();
        for (int i5 = 0; i5 < iG; i5++) {
            Preference preferenceF = F(i5);
            if (TextUtils.equals(preferenceF.n, charSequence)) {
                return preferenceF;
            }
            if ((preferenceF instanceof PreferenceGroup) && (preferenceE = ((PreferenceGroup) preferenceF).E(charSequence)) != null) {
                return preferenceE;
            }
        }
        return null;
    }

    public final Preference F(int i5) {
        return (Preference) this.f4671Y.get(i5);
    }

    public final int G() {
        return this.f4671Y.size();
    }

    public final void H(int i5) {
        if (i5 != Integer.MAX_VALUE && !(!TextUtils.isEmpty(this.n))) {
            Log.e("PreferenceGroup", getClass().getSimpleName().concat(" should have a key defined if it contains an expandable preference"));
        }
        this.f4675c0 = i5;
    }

    @Override // androidx.preference.Preference
    public final void c(Bundle bundle) {
        super.c(bundle);
        int size = this.f4671Y.size();
        for (int i5 = 0; i5 < size; i5++) {
            F(i5).c(bundle);
        }
    }

    @Override // androidx.preference.Preference
    public final void d(Bundle bundle) {
        super.d(bundle);
        int size = this.f4671Y.size();
        for (int i5 = 0; i5 < size; i5++) {
            F(i5).d(bundle);
        }
    }

    @Override // androidx.preference.Preference
    public final void k(boolean z4) {
        super.k(z4);
        int size = this.f4671Y.size();
        for (int i5 = 0; i5 < size; i5++) {
            Preference preferenceF = F(i5);
            if (preferenceF.f4667x == z4) {
                preferenceF.f4667x = !z4;
                preferenceF.k(preferenceF.A());
                preferenceF.j();
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void l() {
        super.l();
        this.f4674b0 = true;
        int iG = G();
        for (int i5 = 0; i5 < iG; i5++) {
            F(i5).l();
        }
    }

    @Override // androidx.preference.Preference
    public final void p() {
        super.p();
        this.f4674b0 = false;
        int size = this.f4671Y.size();
        for (int i5 = 0; i5 < size; i5++) {
            F(i5).p();
        }
    }

    @Override // androidx.preference.Preference
    public final void r(Parcelable parcelable) {
        if (!parcelable.getClass().equals(A.class)) {
            super.r(parcelable);
            return;
        }
        A a3 = (A) parcelable;
        this.f4675c0 = a3.f4550c;
        super.r(a3.getSuperState());
    }

    @Override // androidx.preference.Preference
    public final Parcelable s() {
        this.f4639M = true;
        return new A(AbsSavedState.EMPTY_STATE, this.f4675c0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
