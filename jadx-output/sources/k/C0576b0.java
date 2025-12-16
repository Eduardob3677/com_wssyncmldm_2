package k;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* renamed from: k.b0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0576b0 extends ToggleButton {

    /* renamed from: c, reason: collision with root package name */
    public final D3.e f7837c;

    /* renamed from: d, reason: collision with root package name */
    public final V f7838d;

    /* renamed from: e, reason: collision with root package name */
    public C0628v f7839e;

    public C0576b0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyleToggle);
        v1.a(this, getContext());
        D3.e eVar = new D3.e(this);
        this.f7837c = eVar;
        eVar.l(attributeSet, R.attr.buttonStyleToggle);
        V v4 = new V(this);
        this.f7838d = v4;
        v4.f(attributeSet, R.attr.buttonStyleToggle);
        getEmojiTextViewHelper().b(attributeSet, R.attr.buttonStyleToggle);
    }

    private C0628v getEmojiTextViewHelper() {
        if (this.f7839e == null) {
            this.f7839e = new C0628v(this);
        }
        return this.f7839e;
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        D3.e eVar = this.f7837c;
        if (eVar != null) {
            eVar.a();
        }
        V v4 = this.f7838d;
        if (v4 != null) {
            v4.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        D3.e eVar = this.f7837c;
        if (eVar != null) {
            return eVar.e();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        D3.e eVar = this.f7837c;
        if (eVar != null) {
            return eVar.f();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f7838d.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f7838d.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z4) {
        super.setAllCaps(z4);
        getEmojiTextViewHelper().c(z4);
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        D3.e eVar = this.f7837c;
        if (eVar != null) {
            eVar.n();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        D3.e eVar = this.f7837c;
        if (eVar != null) {
            eVar.o(i5);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        V v4 = this.f7838d;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        V v4 = this.f7838d;
        if (v4 != null) {
            v4.b();
        }
    }

    public void setEmojiCompatEnabled(boolean z4) {
        getEmojiTextViewHelper().d(z4);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        D3.e eVar = this.f7837c;
        if (eVar != null) {
            eVar.r(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        D3.e eVar = this.f7837c;
        if (eVar != null) {
            eVar.s(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        V v4 = this.f7838d;
        v4.h(colorStateList);
        v4.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        V v4 = this.f7838d;
        v4.i(mode);
        v4.b();
    }
}
