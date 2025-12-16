package k;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import c.AbstractC0206a;
import f1.AbstractC0420a;
import java.util.WeakHashMap;

/* renamed from: k.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0618q extends CheckedTextView {

    /* renamed from: c, reason: collision with root package name */
    public final C0620r f7957c;

    /* renamed from: d, reason: collision with root package name */
    public final D3.e f7958d;

    /* renamed from: e, reason: collision with root package name */
    public final V f7959e;
    public C0628v f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0618q(Context context, AttributeSet attributeSet) {
        int resourceId;
        int resourceId2;
        super(context, attributeSet, R.attr.checkedTextViewStyle);
        w1.a(context);
        v1.a(this, getContext());
        V v4 = new V(this);
        this.f7959e = v4;
        v4.f(attributeSet, R.attr.checkedTextViewStyle);
        v4.b();
        D3.e eVar = new D3.e(this);
        this.f7958d = eVar;
        eVar.l(attributeSet, R.attr.checkedTextViewStyle);
        this.f7957c = new C0620r(this);
        Context context2 = getContext();
        int[] iArr = AbstractC0206a.f5171l;
        J.r0 r0VarM = J.r0.m(context2, attributeSet, iArr, R.attr.checkedTextViewStyle, 0);
        TypedArray typedArray = (TypedArray) r0VarM.f1007d;
        Context context3 = getContext();
        WeakHashMap weakHashMap = J.Q.f940a;
        J.N.d(this, context3, iArr, attributeSet, (TypedArray) r0VarM.f1007d, R.attr.checkedTextViewStyle, 0);
        try {
            if (typedArray.hasValue(4) && (resourceId2 = typedArray.getResourceId(4, 0)) != 0) {
                try {
                    setCheckMarkDrawable(AbstractC0420a.A(getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                }
            } else if (typedArray.hasValue(1) && (resourceId = typedArray.getResourceId(1, 0)) != 0) {
                setCheckMarkDrawable(AbstractC0420a.A(getContext(), resourceId));
            }
            if (typedArray.hasValue(6)) {
                setCheckMarkTintList(r0VarM.f(6));
            }
            if (typedArray.hasValue(7)) {
                setCheckMarkTintMode(AbstractC0591g0.b(typedArray.getInt(7, -1), null));
            }
            r0VarM.n();
            getEmojiTextViewHelper().b(attributeSet, R.attr.checkedTextViewStyle);
        } catch (Throwable th) {
            r0VarM.n();
            throw th;
        }
    }

    private C0628v getEmojiTextViewHelper() {
        if (this.f == null) {
            this.f = new C0628v(this);
        }
        return this.f;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        V v4 = this.f7959e;
        if (v4 != null) {
            v4.b();
        }
        D3.e eVar = this.f7958d;
        if (eVar != null) {
            eVar.a();
        }
        C0620r c0620r = this.f7957c;
        if (c0620r != null) {
            c0620r.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return super.getCustomSelectionActionModeCallback();
    }

    public ColorStateList getSupportBackgroundTintList() {
        D3.e eVar = this.f7958d;
        if (eVar != null) {
            return eVar.e();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        D3.e eVar = this.f7958d;
        if (eVar != null) {
            return eVar.f();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        C0620r c0620r = this.f7957c;
        if (c0620r != null) {
            return c0620r.f7973a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        C0620r c0620r = this.f7957c;
        if (c0620r != null) {
            return c0620r.f7974b;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f7959e.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f7959e.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        AbstractC0420a.Y(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z4) {
        super.setAllCaps(z4);
        getEmojiTextViewHelper().c(z4);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        D3.e eVar = this.f7958d;
        if (eVar != null) {
            eVar.n();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        D3.e eVar = this.f7958d;
        if (eVar != null) {
            eVar.o(i5);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        C0620r c0620r = this.f7957c;
        if (c0620r != null) {
            if (c0620r.f7977e) {
                c0620r.f7977e = false;
            } else {
                c0620r.f7977e = true;
                c0620r.b();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        V v4 = this.f7959e;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        V v4 = this.f7959e;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    public void setEmojiCompatEnabled(boolean z4) {
        getEmojiTextViewHelper().d(z4);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        D3.e eVar = this.f7958d;
        if (eVar != null) {
            eVar.r(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        D3.e eVar = this.f7958d;
        if (eVar != null) {
            eVar.s(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        C0620r c0620r = this.f7957c;
        if (c0620r != null) {
            c0620r.f7973a = colorStateList;
            c0620r.f7975c = true;
            c0620r.b();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        C0620r c0620r = this.f7957c;
        if (c0620r != null) {
            c0620r.f7974b = mode;
            c0620r.f7976d = true;
            c0620r.b();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        V v4 = this.f7959e;
        v4.h(colorStateList);
        v4.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        V v4 = this.f7959e;
        v4.i(mode);
        v4.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i5) {
        super.setTextAppearance(context, i5);
        V v4 = this.f7959e;
        if (v4 != null) {
            v4.g(context, i5);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i5) {
        setCheckMarkDrawable(AbstractC0420a.A(getContext(), i5));
    }
}
