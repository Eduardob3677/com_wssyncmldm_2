package T1;

import L2.b;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.TypedValue;
import androidx.appcompat.widget.AppCompatTextView;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public final class a extends AppCompatTextView {
    public static int q(Context context, TypedArray typedArray, int... iArr) {
        int dimensionPixelSize = -1;
        for (int i5 = 0; i5 < iArr.length && dimensionPixelSize < 0; i5++) {
            int i6 = iArr[i5];
            TypedValue typedValue = new TypedValue();
            if (typedArray.getValue(i6, typedValue) && typedValue.type == 2) {
                TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
                int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
                typedArrayObtainStyledAttributes.recycle();
                dimensionPixelSize = dimensionPixelSize2;
            } else {
                dimensionPixelSize = typedArray.getDimensionPixelSize(i6, -1);
            }
        }
        return dimensionPixelSize;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public final void setTextAppearance(Context context, int i5) throws Resources.NotFoundException {
        super.setTextAppearance(context, i5);
        if (b.F(context, R.attr.textAppearanceLineHeightEnabled, true)) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(i5, v1.a.f9543s);
            int iQ = q(getContext(), typedArrayObtainStyledAttributes, 1, 2);
            typedArrayObtainStyledAttributes.recycle();
            if (iQ >= 0) {
                setLineHeight(iQ);
            }
        }
    }
}
