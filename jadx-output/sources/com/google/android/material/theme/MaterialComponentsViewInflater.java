package com.google.android.material.theme;

import E1.c;
import J1.m;
import L1.a;
import O.b;
import S1.u;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.button.MaterialButton;
import com.wssyncmldm.R;
import e.F;
import k.C0556B;
import k.C0614o;
import k.C0616p;

/* loaded from: classes.dex */
public class MaterialComponentsViewInflater extends F {
    @Override // e.F
    public final C0614o a(Context context, AttributeSet attributeSet) {
        return new u(context, attributeSet);
    }

    @Override // e.F
    public final AppCompatButton b(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // e.F
    public final C0616p c(Context context, AttributeSet attributeSet) {
        return new c(context, attributeSet);
    }

    @Override // e.F
    public final C0556B d(Context context, AttributeSet attributeSet) {
        a aVar = new a(U1.a.a(context, attributeSet, R.attr.radioButtonStyle, R.style.Widget_MaterialComponents_CompoundButton_RadioButton), attributeSet);
        Context context2 = aVar.getContext();
        TypedArray typedArrayF = m.f(context2, attributeSet, v1.a.f9541q, R.attr.radioButtonStyle, R.style.Widget_MaterialComponents_CompoundButton_RadioButton, new int[0]);
        if (typedArrayF.hasValue(0)) {
            b.c(aVar, W1.a.B(context2, typedArrayF, 0));
        }
        aVar.f1344h = typedArrayF.getBoolean(1, false);
        typedArrayF.recycle();
        return aVar;
    }

    @Override // e.F
    public final AppCompatTextView e(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        T1.a aVar = new T1.a(U1.a.a(context, attributeSet, android.R.attr.textViewStyle, 0), attributeSet, android.R.attr.textViewStyle);
        Context context2 = aVar.getContext();
        if (L2.b.F(context2, R.attr.textAppearanceLineHeightEnabled, true)) {
            Resources.Theme theme = context2.getTheme();
            int[] iArr = v1.a.f9544t;
            TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, android.R.attr.textViewStyle, 0);
            int iQ = T1.a.q(context2, typedArrayObtainStyledAttributes, 1, 2);
            typedArrayObtainStyledAttributes.recycle();
            if (iQ == -1) {
                TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, android.R.attr.textViewStyle, 0);
                int resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, -1);
                typedArrayObtainStyledAttributes2.recycle();
                if (resourceId != -1) {
                    TypedArray typedArrayObtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, v1.a.f9543s);
                    int iQ2 = T1.a.q(aVar.getContext(), typedArrayObtainStyledAttributes3, 1, 2);
                    typedArrayObtainStyledAttributes3.recycle();
                    if (iQ2 >= 0) {
                        aVar.setLineHeight(iQ2);
                    }
                }
            }
        }
        return aVar;
    }
}
