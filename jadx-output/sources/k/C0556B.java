package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.RadioButton;
import com.wssyncmldm.R;
import f1.AbstractC0420a;

/* renamed from: k.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0556B extends RadioButton implements O.q {

    /* renamed from: c, reason: collision with root package name */
    public final C0620r f7659c;

    /* renamed from: d, reason: collision with root package name */
    public final D3.e f7660d;

    /* renamed from: e, reason: collision with root package name */
    public final V f7661e;
    public C0628v f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0556B(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.radioButtonStyle);
        w1.a(context);
        v1.a(this, getContext());
        C0620r c0620r = new C0620r(this);
        this.f7659c = c0620r;
        c0620r.c(attributeSet, R.attr.radioButtonStyle);
        D3.e eVar = new D3.e(this);
        this.f7660d = eVar;
        eVar.l(attributeSet, R.attr.radioButtonStyle);
        V v4 = new V(this);
        this.f7661e = v4;
        v4.f(attributeSet, R.attr.radioButtonStyle);
        getEmojiTextViewHelper().b(attributeSet, R.attr.radioButtonStyle);
    }

    private C0628v getEmojiTextViewHelper() {
        if (this.f == null) {
            this.f = new C0628v(this);
        }
        return this.f;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        D3.e eVar = this.f7660d;
        if (eVar != null) {
            eVar.a();
        }
        V v4 = this.f7661e;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C0620r c0620r = this.f7659c;
        if (c0620r != null) {
            c0620r.getClass();
        }
        return compoundPaddingLeft;
    }

    public ColorStateList getSupportBackgroundTintList() {
        D3.e eVar = this.f7660d;
        if (eVar != null) {
            return eVar.e();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        D3.e eVar = this.f7660d;
        if (eVar != null) {
            return eVar.f();
        }
        return null;
    }

    @Override // O.q
    public ColorStateList getSupportButtonTintList() {
        C0620r c0620r = this.f7659c;
        if (c0620r != null) {
            return c0620r.f7973a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C0620r c0620r = this.f7659c;
        if (c0620r != null) {
            return c0620r.f7974b;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f7661e.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f7661e.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z4) {
        super.setAllCaps(z4);
        getEmojiTextViewHelper().c(z4);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        D3.e eVar = this.f7660d;
        if (eVar != null) {
            eVar.n();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        D3.e eVar = this.f7660d;
        if (eVar != null) {
            eVar.o(i5);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C0620r c0620r = this.f7659c;
        if (c0620r != null) {
            if (c0620r.f7977e) {
                c0620r.f7977e = false;
            } else {
                c0620r.f7977e = true;
                c0620r.a();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        V v4 = this.f7661e;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        V v4 = this.f7661e;
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
        D3.e eVar = this.f7660d;
        if (eVar != null) {
            eVar.r(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        D3.e eVar = this.f7660d;
        if (eVar != null) {
            eVar.s(mode);
        }
    }

    @Override // O.q
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C0620r c0620r = this.f7659c;
        if (c0620r != null) {
            c0620r.f7973a = colorStateList;
            c0620r.f7975c = true;
            c0620r.a();
        }
    }

    @Override // O.q
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C0620r c0620r = this.f7659c;
        if (c0620r != null) {
            c0620r.f7974b = mode;
            c0620r.f7976d = true;
            c0620r.a();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        V v4 = this.f7661e;
        v4.h(colorStateList);
        v4.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        V v4 = this.f7661e;
        v4.i(mode);
        v4.b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i5) {
        setButtonDrawable(AbstractC0420a.A(getContext(), i5));
    }
}
