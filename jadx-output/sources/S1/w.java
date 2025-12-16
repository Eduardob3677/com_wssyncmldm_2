package S1;

import J.Q;
import J.r0;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.wssyncmldm.R;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class w extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public final TextInputLayout f2569c;

    /* renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f2570d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f2571e;
    public final CheckableImageButton f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f2572g;

    /* renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f2573h;

    /* renamed from: i, reason: collision with root package name */
    public int f2574i;

    /* renamed from: j, reason: collision with root package name */
    public ImageView.ScaleType f2575j;

    /* renamed from: k, reason: collision with root package name */
    public View.OnLongClickListener f2576k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f2577l;

    public w(TextInputLayout textInputLayout, r0 r0Var) {
        CharSequence text;
        super(textInputLayout.getContext());
        this.f2569c = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f = checkableImageButton;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
        this.f2570d = appCompatTextView;
        if (W1.a.R(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginEnd(0);
        }
        View.OnLongClickListener onLongClickListener = this.f2576k;
        checkableImageButton.setOnClickListener(null);
        i3.x.b1(checkableImageButton, onLongClickListener);
        this.f2576k = null;
        checkableImageButton.setOnLongClickListener(null);
        i3.x.b1(checkableImageButton, null);
        TypedArray typedArray = (TypedArray) r0Var.f1007d;
        if (typedArray.hasValue(69)) {
            this.f2572g = W1.a.A(getContext(), r0Var, 69);
        }
        if (typedArray.hasValue(70)) {
            this.f2573h = J1.m.g(typedArray.getInt(70, -1), null);
        }
        if (typedArray.hasValue(66)) {
            b(r0Var.g(66));
            if (typedArray.hasValue(65) && checkableImageButton.getContentDescription() != (text = typedArray.getText(65))) {
                checkableImageButton.setContentDescription(text);
            }
            checkableImageButton.setCheckable(typedArray.getBoolean(64, true));
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(67, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (dimensionPixelSize != this.f2574i) {
            this.f2574i = dimensionPixelSize;
            checkableImageButton.setMinimumWidth(dimensionPixelSize);
            checkableImageButton.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(68)) {
            ImageView.ScaleType scaleTypeS = i3.x.s(typedArray.getInt(68, -1));
            this.f2575j = scaleTypeS;
            checkableImageButton.setScaleType(scaleTypeS);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_prefix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        WeakHashMap weakHashMap = Q.f940a;
        appCompatTextView.setAccessibilityLiveRegion(1);
        appCompatTextView.setTextAppearance(typedArray.getResourceId(60, 0));
        if (typedArray.hasValue(61)) {
            appCompatTextView.setTextColor(r0Var.f(61));
        }
        CharSequence text2 = typedArray.getText(59);
        this.f2571e = TextUtils.isEmpty(text2) ? null : text2;
        appCompatTextView.setText(text2);
        e();
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    public final int a() {
        int marginEnd;
        CheckableImageButton checkableImageButton = this.f;
        if (checkableImageButton.getVisibility() == 0) {
            marginEnd = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginEnd() + checkableImageButton.getMeasuredWidth();
        } else {
            marginEnd = 0;
        }
        WeakHashMap weakHashMap = Q.f940a;
        return this.f2570d.getPaddingStart() + getPaddingStart() + marginEnd;
    }

    public final void b(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = this.f2572g;
            PorterDuff.Mode mode = this.f2573h;
            TextInputLayout textInputLayout = this.f2569c;
            i3.x.c(textInputLayout, checkableImageButton, colorStateList, mode);
            c(true);
            i3.x.P0(textInputLayout, checkableImageButton, this.f2572g);
            return;
        }
        c(false);
        View.OnLongClickListener onLongClickListener = this.f2576k;
        checkableImageButton.setOnClickListener(null);
        i3.x.b1(checkableImageButton, onLongClickListener);
        this.f2576k = null;
        checkableImageButton.setOnLongClickListener(null);
        i3.x.b1(checkableImageButton, null);
        if (checkableImageButton.getContentDescription() != null) {
            checkableImageButton.setContentDescription(null);
        }
    }

    public final void c(boolean z4) {
        CheckableImageButton checkableImageButton = this.f;
        if ((checkableImageButton.getVisibility() == 0) != z4) {
            checkableImageButton.setVisibility(z4 ? 0 : 8);
            d();
            e();
        }
    }

    public final void d() throws Resources.NotFoundException {
        int paddingStart;
        EditText editText = this.f2569c.f;
        if (editText == null) {
            return;
        }
        if (this.f.getVisibility() == 0) {
            paddingStart = 0;
        } else {
            WeakHashMap weakHashMap = Q.f940a;
            paddingStart = editText.getPaddingStart();
        }
        int compoundPaddingTop = editText.getCompoundPaddingTop();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int compoundPaddingBottom = editText.getCompoundPaddingBottom();
        WeakHashMap weakHashMap2 = Q.f940a;
        this.f2570d.setPaddingRelative(paddingStart, compoundPaddingTop, dimensionPixelSize, compoundPaddingBottom);
    }

    public final void e() {
        int i5 = (this.f2571e == null || this.f2577l) ? 8 : 0;
        setVisibility((this.f.getVisibility() == 0 || i5 == 0) ? 0 : 8);
        this.f2570d.setVisibility(i5);
        this.f2569c.q();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i5, int i6) throws Resources.NotFoundException {
        super.onMeasure(i5, i6);
        d();
    }
}
