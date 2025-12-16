package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;
import com.wssyncmldm.R;
import f1.AbstractC0420a;

/* renamed from: k.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0614o extends AutoCompleteTextView {

    /* renamed from: c, reason: collision with root package name */
    public final D3.e f7943c;

    /* renamed from: d, reason: collision with root package name */
    public final V f7944d;

    /* renamed from: e, reason: collision with root package name */
    public final e.v f7945e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0614o(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        w1.a(context);
        v1.a(this, getContext());
        D3.e eVar = new D3.e(this);
        this.f7943c = eVar;
        eVar.l(attributeSet, R.attr.autoCompleteTextViewStyle);
        V v4 = new V(this);
        this.f7944d = v4;
        v4.f(attributeSet, R.attr.autoCompleteTextViewStyle);
        v4.b();
        e.v vVar = new e.v(this);
        this.f7945e = vVar;
        vVar.v(attributeSet, R.attr.autoCompleteTextViewStyle);
        KeyListener keyListener = getKeyListener();
        if (!(keyListener instanceof NumberKeyListener)) {
            boolean zIsFocusable = super.isFocusable();
            boolean zIsClickable = super.isClickable();
            boolean zIsLongClickable = super.isLongClickable();
            int inputType = super.getInputType();
            KeyListener keyListenerQ = vVar.q(keyListener);
            if (keyListenerQ == keyListener) {
                return;
            }
            super.setKeyListener(keyListenerQ);
            super.setRawInputType(inputType);
            super.setFocusable(zIsFocusable);
            super.setClickable(zIsClickable);
            super.setLongClickable(zIsLongClickable);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        D3.e eVar = this.f7943c;
        if (eVar != null) {
            eVar.a();
        }
        V v4 = this.f7944d;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return super.getCustomSelectionActionModeCallback();
    }

    public ColorStateList getSupportBackgroundTintList() {
        D3.e eVar = this.f7943c;
        if (eVar != null) {
            return eVar.e();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        D3.e eVar = this.f7943c;
        if (eVar != null) {
            return eVar.f();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f7944d.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f7944d.e();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        AbstractC0420a.Y(inputConnectionOnCreateInputConnection, editorInfo, this);
        return this.f7945e.y(inputConnectionOnCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        D3.e eVar = this.f7943c;
        if (eVar != null) {
            eVar.n();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        D3.e eVar = this.f7943c;
        if (eVar != null) {
            eVar.o(i5);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        V v4 = this.f7944d;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        V v4 = this.f7944d;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i5) {
        setDropDownBackgroundDrawable(AbstractC0420a.A(getContext(), i5));
    }

    public void setEmojiCompatEnabled(boolean z4) {
        this.f7945e.E(z4);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f7945e.q(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        D3.e eVar = this.f7943c;
        if (eVar != null) {
            eVar.r(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        D3.e eVar = this.f7943c;
        if (eVar != null) {
            eVar.s(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        V v4 = this.f7944d;
        v4.h(colorStateList);
        v4.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        V v4 = this.f7944d;
        v4.i(mode);
        v4.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i5) {
        super.setTextAppearance(context, i5);
        V v4 = this.f7944d;
        if (v4 != null) {
            v4.g(context, i5);
        }
    }
}
