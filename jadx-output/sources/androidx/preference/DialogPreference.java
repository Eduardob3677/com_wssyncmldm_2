package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public abstract class DialogPreference extends Preference {

    /* renamed from: X, reason: collision with root package name */
    public final CharSequence f4568X;

    /* renamed from: Y, reason: collision with root package name */
    public final String f4569Y;

    /* renamed from: Z, reason: collision with root package name */
    public final Drawable f4570Z;

    /* renamed from: a0, reason: collision with root package name */
    public final String f4571a0;

    /* renamed from: b0, reason: collision with root package name */
    public final String f4572b0;

    /* renamed from: c0, reason: collision with root package name */
    public final int f4573c0;

    public DialogPreference(Context context, AttributeSet attributeSet, int i5, int i6) {
        super(context, attributeSet, i5, i6);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.f4603b, i5, i6);
        String string = typedArrayObtainStyledAttributes.getString(9);
        string = string == null ? typedArrayObtainStyledAttributes.getString(0) : string;
        this.f4568X = string;
        if (string == null) {
            this.f4568X = this.f4654j;
        }
        String string2 = typedArrayObtainStyledAttributes.getString(8);
        this.f4569Y = string2 == null ? typedArrayObtainStyledAttributes.getString(1) : string2;
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(6);
        this.f4570Z = drawable == null ? typedArrayObtainStyledAttributes.getDrawable(2) : drawable;
        String string3 = typedArrayObtainStyledAttributes.getString(11);
        this.f4571a0 = string3 == null ? typedArrayObtainStyledAttributes.getString(3) : string3;
        String string4 = typedArrayObtainStyledAttributes.getString(10);
        this.f4572b0 = string4 == null ? typedArrayObtainStyledAttributes.getString(4) : string4;
        this.f4573c0 = typedArrayObtainStyledAttributes.getResourceId(7, typedArrayObtainStyledAttributes.getResourceId(5, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public void o() {
        z zVar = this.f4649d.f4589i;
        if (zVar != null) {
            zVar.onDisplayPreferenceDialog(this);
        }
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, A.b.b(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle), 0);
    }
}
