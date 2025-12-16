package androidx.appcompat.widget;

import D3.e;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.appcompat.graphics.drawable.SeslRecoilDrawable;
import com.wssyncmldm.R;
import java.lang.reflect.Method;
import k.C0628v;
import k.N1;
import k.V;
import k.v1;
import k.w1;

/* loaded from: classes.dex */
public class AppCompatButton extends Button {

    /* renamed from: c, reason: collision with root package name */
    public final e f3341c;

    /* renamed from: d, reason: collision with root package name */
    public final V f3342d;

    /* renamed from: e, reason: collision with root package name */
    public C0628v f3343e;
    public boolean f;

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyle);
    }

    private C0628v getEmojiTextViewHelper() {
        if (this.f3343e == null) {
            this.f3343e = new C0628v(this);
        }
        return this.f3343e;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f3341c;
        if (eVar != null) {
            eVar.a();
        }
        V v4 = this.f3342d;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        Method method = N1.f7721a;
        return super.getAutoSizeMaxTextSize();
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        Method method = N1.f7721a;
        return super.getAutoSizeMinTextSize();
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        Method method = N1.f7721a;
        return super.getAutoSizeStepGranularity();
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        Method method = N1.f7721a;
        return super.getAutoSizeTextAvailableSizes();
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        Method method = N1.f7721a;
        return super.getAutoSizeTextType() == 1 ? 1 : 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return super.getCustomSelectionActionModeCallback();
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f3341c;
        if (eVar != null) {
            return eVar.e();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f3341c;
        if (eVar != null) {
            return eVar.f();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f3342d.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f3342d.e();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getBackground() instanceof SeslRecoilDrawable) {
            this.f = true;
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
        V v4 = this.f3342d;
        if (v4 != null) {
            v4.getClass();
            Method method = N1.f7721a;
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
        super.onTextChanged(charSequence, i5, i6, i7);
        if (this.f3342d != null) {
            Method method = N1.f7721a;
        }
    }

    @Override // android.view.View
    public void refreshDrawableState() {
        super.refreshDrawableState();
        if (!this.f || getStateListAnimator() == null) {
            return;
        }
        getStateListAnimator().jumpToCurrentState();
        this.f = false;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z4) {
        super.setAllCaps(z4);
        getEmojiTextViewHelper().c(z4);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i5, int i6, int i7, int i8) {
        Method method = N1.f7721a;
        super.setAutoSizeTextTypeUniformWithConfiguration(i5, i6, i7, i8);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i5) {
        Method method = N1.f7721a;
        super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i5);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i5) {
        Method method = N1.f7721a;
        super.setAutoSizeTextTypeWithDefaults(i5);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f3341c;
        if (eVar != null) {
            eVar.n();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        e eVar = this.f3341c;
        if (eVar != null) {
            eVar.o(i5);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    public void setEmojiCompatEnabled(boolean z4) {
        getEmojiTextViewHelper().d(z4);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setSupportAllCaps(boolean z4) {
        V v4 = this.f3342d;
        if (v4 != null) {
            v4.f7748a.setAllCaps(z4);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f3341c;
        if (eVar != null) {
            eVar.r(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f3341c;
        if (eVar != null) {
            eVar.s(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        V v4 = this.f3342d;
        v4.h(colorStateList);
        v4.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        V v4 = this.f3342d;
        v4.i(mode);
        v4.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i5) {
        super.setTextAppearance(context, i5);
        V v4 = this.f3342d;
        if (v4 != null) {
            v4.g(context, i5);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i5, float f) {
        Method method = N1.f7721a;
        super.setTextSize(i5, f);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatButton(Context context, AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        w1.a(context);
        v1.a(this, getContext());
        e eVar = new e(this);
        this.f3341c = eVar;
        eVar.l(attributeSet, i5);
        V v4 = new V(this);
        this.f3342d = v4;
        v4.f(attributeSet, i5);
        v4.b();
        getEmojiTextViewHelper().b(attributeSet, i5);
    }
}
