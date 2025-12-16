package androidx.appcompat.widget;

import A.r;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import c.AbstractC0206a;
import k.AbstractC0574a1;
import k.AbstractC0591g0;

/* loaded from: classes.dex */
public class SeslDropDownItemTextView extends AbstractC0574a1 {
    public SeslDropDownItemTextView(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet, R.attr.textViewStyle, 0);
        this.f = null;
        this.f7827g = null;
        this.f7828h = false;
        this.f7829i = false;
        this.f7832l = 8388611;
        int[] iArr = AbstractC0206a.f5171l;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.textViewStyle, 0);
        try {
            saveAttributeDataForStyleable(context, iArr, attributeSet, typedArrayObtainStyledAttributes, R.attr.textViewStyle, 0);
            this.f7834o = context.getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_checked_spinner_padding_end);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
            if (drawable != null) {
                setCheckMarkDrawable(drawable);
            }
            if (typedArrayObtainStyledAttributes.hasValue(3)) {
                this.f7827g = AbstractC0591g0.b(typedArrayObtainStyledAttributes.getInt(3, -1), this.f7827g);
                this.f7829i = true;
            }
            if (typedArrayObtainStyledAttributes.hasValue(2)) {
                this.f = typedArrayObtainStyledAttributes.getColorStateList(2);
                this.f7828h = true;
            }
            this.f7832l = typedArrayObtainStyledAttributes.getInt(5, 8388611);
            setChecked(typedArrayObtainStyledAttributes.getBoolean(0, false));
            typedArrayObtainStyledAttributes.recycle();
            this.n = context.getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_checked_text_padding);
            a();
            Resources resources = context.getResources();
            setMaxWidth(resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_menu_popup_offset_horizontal) * 2));
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // k.AbstractC0574a1, android.widget.Checkable
    public void setChecked(boolean z4) {
        Context context;
        super.setChecked(z4);
        if (Build.VERSION.SDK_INT >= 34) {
            setTypeface(Typeface.create(Typeface.create("sec", 0), z4 ? 600 : 400, false));
        } else {
            setTypeface(Typeface.create("sec-roboto-light", z4 ? 1 : 0));
        }
        if (z4 && (context = getContext()) != null && getCurrentTextColor() == -65281) {
            Log.w("SeslDropDownItemTextView", "text color reload!");
            ColorStateList colorStateListA = r.a(context.getResources(), W1.a.S(context) ? com.wssyncmldm.R.color.sesl_spinner_dropdown_text_color_light : com.wssyncmldm.R.color.sesl_spinner_dropdown_text_color_dark, context.getTheme());
            if (colorStateListA != null) {
                setTextColor(colorStateListA);
            } else {
                Log.w("SeslDropDownItemTextView", "Didn't set SeslDropDownItemTextView text color!!");
            }
        }
    }
}
