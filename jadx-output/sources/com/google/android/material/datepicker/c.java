package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final e4.d f5962a;

    /* renamed from: b, reason: collision with root package name */
    public final e4.d f5963b;

    public c(Context context) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(L2.b.G(context, R.attr.materialCalendarStyle, l.class.getCanonicalName()).data, v1.a.n);
        e4.d.c(context, typedArrayObtainStyledAttributes.getResourceId(4, 0));
        e4.d.c(context, typedArrayObtainStyledAttributes.getResourceId(2, 0));
        e4.d.c(context, typedArrayObtainStyledAttributes.getResourceId(3, 0));
        e4.d.c(context, typedArrayObtainStyledAttributes.getResourceId(5, 0));
        ColorStateList colorStateListB = W1.a.B(context, typedArrayObtainStyledAttributes, 7);
        this.f5962a = e4.d.c(context, typedArrayObtainStyledAttributes.getResourceId(9, 0));
        e4.d.c(context, typedArrayObtainStyledAttributes.getResourceId(8, 0));
        this.f5963b = e4.d.c(context, typedArrayObtainStyledAttributes.getResourceId(10, 0));
        new Paint().setColor(colorStateListB.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
