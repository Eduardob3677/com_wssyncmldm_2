package S1;

import J.Q;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.textfield.TextInputLayout;
import com.wssyncmldm.R;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p0.AbstractC0740b;
import w1.AbstractC0899a;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: A, reason: collision with root package name */
    public ColorStateList f2530A;

    /* renamed from: B, reason: collision with root package name */
    public Typeface f2531B;

    /* renamed from: a, reason: collision with root package name */
    public final int f2532a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2533b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2534c;

    /* renamed from: d, reason: collision with root package name */
    public final TimeInterpolator f2535d;

    /* renamed from: e, reason: collision with root package name */
    public final TimeInterpolator f2536e;
    public final TimeInterpolator f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f2537g;

    /* renamed from: h, reason: collision with root package name */
    public final TextInputLayout f2538h;

    /* renamed from: i, reason: collision with root package name */
    public LinearLayout f2539i;

    /* renamed from: j, reason: collision with root package name */
    public int f2540j;

    /* renamed from: k, reason: collision with root package name */
    public FrameLayout f2541k;

    /* renamed from: l, reason: collision with root package name */
    public Animator f2542l;

    /* renamed from: m, reason: collision with root package name */
    public final float f2543m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f2544o;

    /* renamed from: p, reason: collision with root package name */
    public CharSequence f2545p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f2546q;

    /* renamed from: r, reason: collision with root package name */
    public AppCompatTextView f2547r;

    /* renamed from: s, reason: collision with root package name */
    public CharSequence f2548s;

    /* renamed from: t, reason: collision with root package name */
    public int f2549t;

    /* renamed from: u, reason: collision with root package name */
    public int f2550u;

    /* renamed from: v, reason: collision with root package name */
    public ColorStateList f2551v;

    /* renamed from: w, reason: collision with root package name */
    public CharSequence f2552w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f2553x;

    /* renamed from: y, reason: collision with root package name */
    public AppCompatTextView f2554y;

    /* renamed from: z, reason: collision with root package name */
    public int f2555z;

    public r(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f2537g = context;
        this.f2538h = textInputLayout;
        this.f2543m = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
        this.f2532a = i3.x.U0(context, R.attr.motionDurationShort4, 217);
        this.f2533b = i3.x.U0(context, R.attr.motionDurationMedium4, 167);
        this.f2534c = i3.x.U0(context, R.attr.motionDurationShort4, 167);
        this.f2535d = i3.x.V0(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, AbstractC0899a.f9599d);
        LinearInterpolator linearInterpolator = AbstractC0899a.f9596a;
        this.f2536e = i3.x.V0(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, linearInterpolator);
        this.f = i3.x.V0(context, R.attr.motionEasingLinearInterpolator, linearInterpolator);
    }

    public final void a(TextView textView, int i5) {
        if (this.f2539i == null && this.f2541k == null) {
            Context context = this.f2537g;
            LinearLayout linearLayout = new LinearLayout(context);
            this.f2539i = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.f2539i;
            TextInputLayout textInputLayout = this.f2538h;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.f2541k = new FrameLayout(context);
            this.f2539i.addView(this.f2541k, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.getEditText() != null) {
                b();
            }
        }
        if (i5 == 0 || i5 == 1) {
            this.f2541k.setVisibility(0);
            this.f2541k.addView(textView);
        } else {
            this.f2539i.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f2539i.setVisibility(0);
        this.f2540j++;
    }

    public final void b() {
        if (this.f2539i != null) {
            TextInputLayout textInputLayout = this.f2538h;
            if (textInputLayout.getEditText() != null) {
                EditText editText = textInputLayout.getEditText();
                Context context = this.f2537g;
                boolean zR = W1.a.R(context);
                LinearLayout linearLayout = this.f2539i;
                WeakHashMap weakHashMap = Q.f940a;
                int paddingStart = editText.getPaddingStart();
                if (zR) {
                    paddingStart = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
                }
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top);
                if (zR) {
                    dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_top);
                }
                int paddingEnd = editText.getPaddingEnd();
                if (zR) {
                    paddingEnd = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
                }
                linearLayout.setPaddingRelative(paddingStart, dimensionPixelSize, paddingEnd, 0);
            }
        }
    }

    public final void c() {
        Animator animator = this.f2542l;
        if (animator != null) {
            animator.cancel();
        }
    }

    public final void d(ArrayList arrayList, boolean z4, TextView textView, int i5, int i6, int i7) {
        if (textView == null || !z4) {
            return;
        }
        if (i5 == i7 || i5 == i6) {
            boolean z5 = i7 == i5;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z5 ? 1.0f : 0.0f);
            int i8 = this.f2534c;
            objectAnimatorOfFloat.setDuration(z5 ? this.f2533b : i8);
            objectAnimatorOfFloat.setInterpolator(z5 ? this.f2536e : this.f);
            if (i5 == i7 && i6 != 0) {
                objectAnimatorOfFloat.setStartDelay(i8);
            }
            arrayList.add(objectAnimatorOfFloat);
            if (i7 != i5 || i6 == 0) {
                return;
            }
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f2543m, 0.0f);
            objectAnimatorOfFloat2.setDuration(this.f2532a);
            objectAnimatorOfFloat2.setInterpolator(this.f2535d);
            objectAnimatorOfFloat2.setStartDelay(i8);
            arrayList.add(objectAnimatorOfFloat2);
        }
    }

    public final TextView e(int i5) {
        if (i5 == 1) {
            return this.f2547r;
        }
        if (i5 != 2) {
            return null;
        }
        return this.f2554y;
    }

    public final void f() {
        this.f2545p = null;
        c();
        if (this.n == 1) {
            if (!this.f2553x || TextUtils.isEmpty(this.f2552w)) {
                this.f2544o = 0;
            } else {
                this.f2544o = 2;
            }
        }
        i(this.n, h(this.f2547r, ""), this.f2544o);
    }

    public final void g(TextView textView, int i5) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f2539i;
        if (linearLayout == null) {
            return;
        }
        if ((i5 == 0 || i5 == 1) && (frameLayout = this.f2541k) != null) {
            frameLayout.removeView(textView);
        } else {
            linearLayout.removeView(textView);
        }
        int i6 = this.f2540j - 1;
        this.f2540j = i6;
        LinearLayout linearLayout2 = this.f2539i;
        if (i6 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    public final boolean h(TextView textView, CharSequence charSequence) {
        WeakHashMap weakHashMap = Q.f940a;
        TextInputLayout textInputLayout = this.f2538h;
        return textInputLayout.isLaidOut() && textInputLayout.isEnabled() && !(this.f2544o == this.n && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    public final void i(int i5, boolean z4, int i6) {
        TextView textViewE;
        TextView textViewE2;
        if (i5 == i6) {
            return;
        }
        if (z4) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f2542l = animatorSet;
            ArrayList arrayList = new ArrayList();
            d(arrayList, this.f2553x, this.f2554y, 2, i5, i6);
            d(arrayList, this.f2546q, this.f2547r, 1, i5, i6);
            AbstractC0740b.d(animatorSet, arrayList);
            animatorSet.addListener(new p(this, i6, e(i5), i5, e(i6)));
            animatorSet.start();
        } else if (i5 != i6) {
            if (i6 != 0 && (textViewE2 = e(i6)) != null) {
                textViewE2.setVisibility(0);
                textViewE2.setAlpha(1.0f);
            }
            if (i5 != 0 && (textViewE = e(i5)) != null) {
                textViewE.setVisibility(4);
                if (i5 == 1) {
                    textViewE.setText((CharSequence) null);
                }
            }
            this.n = i6;
        }
        TextInputLayout textInputLayout = this.f2538h;
        textInputLayout.r();
        textInputLayout.u(z4, false);
        textInputLayout.x();
    }
}
