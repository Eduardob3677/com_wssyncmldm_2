package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
import android.widget.CompoundButton;
import android.widget.TextView;
import c.AbstractC0206a;
import f1.AbstractC0420a;
import java.util.WeakHashMap;

/* renamed from: k.r, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0620r {

    /* renamed from: a, reason: collision with root package name */
    public ColorStateList f7973a = null;

    /* renamed from: b, reason: collision with root package name */
    public PorterDuff.Mode f7974b = null;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7975c = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f7976d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7977e;
    public final TextView f;

    public /* synthetic */ C0620r(TextView textView) {
        this.f = textView;
    }

    public void a() {
        CompoundButton compoundButton = (CompoundButton) this.f;
        Drawable drawableA = O.c.a(compoundButton);
        if (drawableA != null) {
            if (this.f7975c || this.f7976d) {
                Drawable drawableMutate = drawableA.mutate();
                if (this.f7975c) {
                    C.a.h(drawableMutate, this.f7973a);
                }
                if (this.f7976d) {
                    C.a.i(drawableMutate, this.f7974b);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(drawableMutate);
            }
        }
    }

    public void b() {
        CheckedTextView checkedTextView = (CheckedTextView) this.f;
        Drawable checkMarkDrawable = checkedTextView.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.f7975c || this.f7976d) {
                Drawable drawableMutate = checkMarkDrawable.mutate();
                if (this.f7975c) {
                    C.a.h(drawableMutate, this.f7973a);
                }
                if (this.f7976d) {
                    C.a.i(drawableMutate, this.f7974b);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(checkedTextView.getDrawableState());
                }
                checkedTextView.setCheckMarkDrawable(drawableMutate);
            }
        }
    }

    public void c(AttributeSet attributeSet, int i5) {
        int resourceId;
        int resourceId2;
        CompoundButton compoundButton = (CompoundButton) this.f;
        Context context = compoundButton.getContext();
        int[] iArr = AbstractC0206a.f5172m;
        J.r0 r0VarM = J.r0.m(context, attributeSet, iArr, i5, 0);
        TypedArray typedArray = (TypedArray) r0VarM.f1007d;
        Context context2 = compoundButton.getContext();
        WeakHashMap weakHashMap = J.Q.f940a;
        J.N.d(compoundButton, context2, iArr, attributeSet, (TypedArray) r0VarM.f1007d, i5, 0);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    compoundButton.setButtonDrawable(AbstractC0420a.A(compoundButton.getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                compoundButton.setButtonDrawable(AbstractC0420a.A(compoundButton.getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                O.b.c(compoundButton, r0VarM.f(2));
            }
            if (typedArray.hasValue(3)) {
                O.b.d(compoundButton, AbstractC0591g0.b(typedArray.getInt(3, -1), null));
            }
        } finally {
            r0VarM.n();
        }
    }
}
