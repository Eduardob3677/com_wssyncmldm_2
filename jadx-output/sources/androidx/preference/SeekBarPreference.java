package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import androidx.appcompat.widget.SeslSeekBar;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public class SeekBarPreference extends Preference {

    /* renamed from: X, reason: collision with root package name */
    public int f4677X;

    /* renamed from: Y, reason: collision with root package name */
    public int f4678Y;

    /* renamed from: Z, reason: collision with root package name */
    public int f4679Z;

    /* renamed from: a0, reason: collision with root package name */
    public int f4680a0;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f4681b0;

    /* renamed from: c0, reason: collision with root package name */
    public SeslSeekBar f4682c0;

    /* renamed from: d0, reason: collision with root package name */
    public final boolean f4683d0;

    /* renamed from: e0, reason: collision with root package name */
    public final boolean f4684e0;

    /* renamed from: f0, reason: collision with root package name */
    public final J f4685f0;
    public final K g0;

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarPreferenceStyle, 0);
        this.f4685f0 = new J(this);
        this.g0 = new K(this, 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.f4611k, R.attr.seekBarPreferenceStyle, 0);
        this.f4678Y = typedArrayObtainStyledAttributes.getInt(3, 0);
        int i5 = typedArrayObtainStyledAttributes.getInt(1, 100);
        int i6 = this.f4678Y;
        i5 = i5 < i6 ? i6 : i5;
        if (i5 != this.f4679Z) {
            this.f4679Z = i5;
            j();
        }
        int i7 = typedArrayObtainStyledAttributes.getInt(4, 0);
        if (i7 != this.f4680a0) {
            this.f4680a0 = Math.min(this.f4679Z - this.f4678Y, Math.abs(i7));
            j();
        }
        this.f4683d0 = typedArrayObtainStyledAttributes.getBoolean(2, true);
        typedArrayObtainStyledAttributes.getBoolean(5, false);
        this.f4684e0 = typedArrayObtainStyledAttributes.getBoolean(6, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void D(int i5, boolean z4) {
        int i6 = this.f4678Y;
        if (i5 < i6) {
            i5 = i6;
        }
        int i7 = this.f4679Z;
        if (i5 > i7) {
            i5 = i7;
        }
        if (i5 != this.f4677X) {
            this.f4677X = i5;
            if (B()) {
                int i8 = ~i5;
                if (B()) {
                    i8 = this.f4649d.b().getInt(this.n, i8);
                }
                if (i5 != i8) {
                    SharedPreferences.Editor editorA = this.f4649d.a();
                    editorA.putInt(this.n, i5);
                    C(editorA);
                }
            }
            if (z4) {
                j();
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void n(H h5) {
        super.n(h5);
        h5.f7406a.setOnKeyListener(this.g0);
        SeslSeekBar seslSeekBar = (SeslSeekBar) h5.s(R.id.seekbar);
        this.f4682c0 = seslSeekBar;
        if (seslSeekBar == null) {
            Log.e("SeekBarPreference", "SeekBar view is null in onBindViewHolder.");
            return;
        }
        seslSeekBar.setOnSeekBarChangeListener(this.f4685f0);
        this.f4682c0.setMax(this.f4679Z - this.f4678Y);
        int i5 = this.f4680a0;
        if (i5 != 0) {
            this.f4682c0.setKeyProgressIncrement(i5);
        } else {
            this.f4680a0 = this.f4682c0.getKeyProgressIncrement();
        }
        this.f4682c0.setProgress(this.f4677X - this.f4678Y);
        this.f4682c0.setEnabled(h());
    }

    @Override // androidx.preference.Preference
    public final Object q(TypedArray typedArray, int i5) {
        return Integer.valueOf(typedArray.getInt(i5, 0));
    }

    @Override // androidx.preference.Preference
    public final void r(Parcelable parcelable) {
        if (!parcelable.getClass().equals(L.class)) {
            super.r(parcelable);
            return;
        }
        L l5 = (L) parcelable;
        super.r(l5.getSuperState());
        this.f4677X = l5.f4617c;
        this.f4678Y = l5.f4618d;
        this.f4679Z = l5.f4619e;
        j();
    }

    @Override // androidx.preference.Preference
    public final Parcelable s() {
        this.f4639M = true;
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f4663t) {
            return absSavedState;
        }
        L l5 = new L(absSavedState);
        l5.f4617c = this.f4677X;
        l5.f4618d = this.f4678Y;
        l5.f4619e = this.f4679Z;
        return l5;
    }

    @Override // androidx.preference.Preference
    public final void t(Object obj) {
        if (obj == null) {
            obj = 0;
        }
        int iIntValue = ((Integer) obj).intValue();
        if (B()) {
            iIntValue = this.f4649d.b().getInt(this.n, iIntValue);
        }
        D(iIntValue, true);
    }
}
