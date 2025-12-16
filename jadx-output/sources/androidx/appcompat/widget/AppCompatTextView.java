package androidx.appcompat.widget;

import B.f;
import B.h;
import D3.e;
import O.o;
import O.p;
import Z0.j;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.appcompat.graphics.drawable.SeslRecoilDrawable;
import e.v;
import f1.AbstractC0420a;
import java.lang.reflect.Method;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import k.C0628v;
import k.N1;
import k.V;
import k.W;
import k.v1;
import k.w1;

/* loaded from: classes.dex */
public class AppCompatTextView extends TextView {

    /* renamed from: c, reason: collision with root package name */
    public final e f3354c;

    /* renamed from: d, reason: collision with root package name */
    public final V f3355d;

    /* renamed from: e, reason: collision with root package name */
    public C0628v f3356e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public v f3357g;

    /* renamed from: h, reason: collision with root package name */
    public Future f3358h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f3359i;

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    private C0628v getEmojiTextViewHelper() {
        if (this.f3356e == null) {
            this.f3356e = new C0628v(this);
        }
        return this.f3356e;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f3354c;
        if (eVar != null) {
            eVar.a();
        }
        V v4 = this.f3355d;
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

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public W getSuperCaller() {
        if (this.f3357g == null) {
            this.f3357g = new v(this);
        }
        return this.f3357g;
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f3354c;
        if (eVar != null) {
            return eVar.e();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f3354c;
        if (eVar != null) {
            return eVar.f();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f3355d.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f3355d.e();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        p();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        return super.getTextClassifier();
    }

    public H.d getTextMetricsParamsCompat() {
        return new H.d(p.c(this));
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getBackground() instanceof SeslRecoilDrawable) {
            this.f3359i = true;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f3355d.getClass();
        AbstractC0420a.Y(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
        V v4 = this.f3355d;
        if (v4 != null) {
            v4.getClass();
            Method method = N1.f7721a;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i5, int i6) {
        p();
        super.onMeasure(i5, i6);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
        super.onTextChanged(charSequence, i5, i6, i7);
        if (this.f3355d != null) {
            Method method = N1.f7721a;
        }
    }

    public final void p() {
        Future future = this.f3358h;
        if (future == null) {
            return;
        }
        try {
            this.f3358h = null;
            f.F(future.get());
            throw null;
        } catch (InterruptedException | ExecutionException unused) {
        }
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (!this.f3359i || getStateListAnimator() == null) {
            return;
        }
        getStateListAnimator().jumpToCurrentState();
        this.f3359i = false;
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
        e eVar = this.f3354c;
        if (eVar != null) {
            eVar.n();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        e eVar = this.f3354c;
        if (eVar != null) {
            eVar.o(i5);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        V v4 = this.f3355d;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        V v4 = this.f3355d;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        V v4 = this.f3355d;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        V v4 = this.f3355d;
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

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i5) {
        getSuperCaller().b(i5);
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i5) {
        getSuperCaller().a(i5);
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i5) {
        j.l(i5);
        if (i5 != getPaint().getFontMetricsInt(null)) {
            setLineSpacing(i5 - r0, 1.0f);
        }
    }

    public void setPrecomputedText(H.e eVar) {
        throw null;
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f3354c;
        if (eVar != null) {
            eVar.r(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f3354c;
        if (eVar != null) {
            eVar.s(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        V v4 = this.f3355d;
        v4.h(colorStateList);
        v4.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        V v4 = this.f3355d;
        v4.i(mode);
        v4.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i5) {
        super.setTextAppearance(context, i5);
        V v4 = this.f3355d;
        if (v4 != null) {
            v4.g(context, i5);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        super.setTextClassifier(textClassifier);
    }

    public void setTextFuture(Future<H.e> future) {
        this.f3358h = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(H.d dVar) {
        TextDirectionHeuristic textDirectionHeuristic;
        TextDirectionHeuristic textDirectionHeuristic2 = dVar.f821b;
        TextDirectionHeuristic textDirectionHeuristic3 = TextDirectionHeuristics.FIRSTSTRONG_RTL;
        int i5 = 1;
        if (textDirectionHeuristic2 != textDirectionHeuristic3 && textDirectionHeuristic2 != (textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR)) {
            if (textDirectionHeuristic2 == TextDirectionHeuristics.ANYRTL_LTR) {
                i5 = 2;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LTR) {
                i5 = 3;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.RTL) {
                i5 = 4;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LOCALE) {
                i5 = 5;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic) {
                i5 = 6;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic3) {
                i5 = 7;
            }
        }
        setTextDirection(i5);
        getPaint().set(dVar.f820a);
        o.e(this, dVar.f822c);
        o.h(this, dVar.f823d);
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i5, float f) {
        Method method = N1.f7721a;
        super.setTextSize(i5, f);
    }

    @Override // android.widget.TextView
    public final void setTypeface(Typeface typeface, int i5) {
        Typeface typefaceCreate;
        if (this.f) {
            return;
        }
        if (typeface == null || i5 <= 0) {
            typefaceCreate = null;
        } else {
            Context context = getContext();
            P1.e eVar = h.f189a;
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null");
            }
            typefaceCreate = Typeface.create(typeface, i5);
        }
        this.f = true;
        if (typefaceCreate != null) {
            typeface = typefaceCreate;
        }
        try {
            super.setTypeface(typeface, i5);
        } finally {
            this.f = false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatTextView(Context context, AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        w1.a(context);
        this.f = false;
        this.f3357g = null;
        v1.a(this, getContext());
        e eVar = new e(this);
        this.f3354c = eVar;
        eVar.l(attributeSet, i5);
        V v4 = new V(this);
        this.f3355d = v4;
        v4.f(attributeSet, i5);
        v4.b();
        getEmojiTextViewHelper().b(attributeSet, i5);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i5, int i6, int i7, int i8) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i5 != 0 ? AbstractC0420a.A(context, i5) : null, i6 != 0 ? AbstractC0420a.A(context, i6) : null, i7 != 0 ? AbstractC0420a.A(context, i7) : null, i8 != 0 ? AbstractC0420a.A(context, i8) : null);
        V v4 = this.f3355d;
        if (v4 != null) {
            v4.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i5, int i6, int i7, int i8) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i5 != 0 ? AbstractC0420a.A(context, i5) : null, i6 != 0 ? AbstractC0420a.A(context, i6) : null, i7 != 0 ? AbstractC0420a.A(context, i7) : null, i8 != 0 ? AbstractC0420a.A(context, i8) : null);
        V v4 = this.f3355d;
        if (v4 != null) {
            v4.b();
        }
    }
}
