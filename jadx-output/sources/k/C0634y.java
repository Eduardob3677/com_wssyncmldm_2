package k;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import f1.AbstractC0420a;

/* renamed from: k.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0634y extends MultiAutoCompleteTextView {
    public static final int[] f = {R.attr.popupBackground};

    /* renamed from: c, reason: collision with root package name */
    public final D3.e f8055c;

    /* renamed from: d, reason: collision with root package name */
    public final V f8056d;

    /* renamed from: e, reason: collision with root package name */
    public final e.v f8057e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0634y(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.wssyncmldm.R.attr.autoCompleteTextViewStyle);
        w1.a(context);
        v1.a(this, getContext());
        J.r0 r0VarM = J.r0.m(getContext(), attributeSet, f, com.wssyncmldm.R.attr.autoCompleteTextViewStyle, 0);
        if (((TypedArray) r0VarM.f1007d).hasValue(0)) {
            setDropDownBackgroundDrawable(r0VarM.g(0));
        }
        r0VarM.n();
        D3.e eVar = new D3.e(this);
        this.f8055c = eVar;
        eVar.l(attributeSet, com.wssyncmldm.R.attr.autoCompleteTextViewStyle);
        V v4 = new V(this);
        this.f8056d = v4;
        v4.f(attributeSet, com.wssyncmldm.R.attr.autoCompleteTextViewStyle);
        v4.b();
        e.v vVar = new e.v(this);
        this.f8057e = vVar;
        vVar.v(attributeSet, com.wssyncmldm.R.attr.autoCompleteTextViewStyle);
        KeyListener keyListener = getKeyListener();
        if (!(keyListener instanceof NumberKeyListener)) {
            boolean zIsFocusable = isFocusable();
            boolean zIsClickable = isClickable();
            boolean zIsLongClickable = isLongClickable();
            int inputType = getInputType();
            KeyListener keyListenerQ = vVar.q(keyListener);
            if (keyListenerQ == keyListener) {
                return;
            }
            super.setKeyListener(keyListenerQ);
            setRawInputType(inputType);
            setFocusable(zIsFocusable);
            setClickable(zIsClickable);
            setLongClickable(zIsLongClickable);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        D3.e eVar = this.f8055c;
        if (eVar != null) {
            eVar.a();
        }
        V v4 = this.f8056d;
        if (v4 != null) {
            v4.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        D3.e eVar = this.f8055c;
        if (eVar != null) {
            return eVar.e();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        D3.e eVar = this.f8055c;
        if (eVar != null) {
            return eVar.f();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f8056d.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f8056d.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        AbstractC0420a.Y(inputConnectionOnCreateInputConnection, editorInfo, this);
        return this.f8057e.y(inputConnectionOnCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        D3.e eVar = this.f8055c;
        if (eVar != null) {
            eVar.n();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        D3.e eVar = this.f8055c;
        if (eVar != null) {
            eVar.o(i5);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        V v4 = this.f8056d;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        V v4 = this.f8056d;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i5) {
        setDropDownBackgroundDrawable(AbstractC0420a.A(getContext(), i5));
    }

    public void setEmojiCompatEnabled(boolean z4) {
        this.f8057e.E(z4);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f8057e.q(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        D3.e eVar = this.f8055c;
        if (eVar != null) {
            eVar.r(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        D3.e eVar = this.f8055c;
        if (eVar != null) {
            eVar.s(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        V v4 = this.f8056d;
        v4.h(colorStateList);
        v4.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        V v4 = this.f8056d;
        v4.i(mode);
        v4.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i5) {
        super.setTextAppearance(context, i5);
        V v4 = this.f8056d;
        if (v4 != null) {
            v4.g(context, i5);
        }
    }
}
