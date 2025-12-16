package S1;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.internal.CheckableImageButton;
import com.wssyncmldm.R;
import w1.AbstractC0899a;

/* loaded from: classes.dex */
public final class d extends o {

    /* renamed from: e, reason: collision with root package name */
    public final int f2469e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final TimeInterpolator f2470g;

    /* renamed from: h, reason: collision with root package name */
    public final TimeInterpolator f2471h;

    /* renamed from: i, reason: collision with root package name */
    public EditText f2472i;

    /* renamed from: j, reason: collision with root package name */
    public final A2.d f2473j;

    /* renamed from: k, reason: collision with root package name */
    public final ViewOnFocusChangeListenerC0099a f2474k;

    /* renamed from: l, reason: collision with root package name */
    public AnimatorSet f2475l;

    /* renamed from: m, reason: collision with root package name */
    public ValueAnimator f2476m;

    public d(n nVar) {
        super(nVar);
        this.f2473j = new A2.d(2, this);
        this.f2474k = new ViewOnFocusChangeListenerC0099a(this, 0);
        this.f2469e = i3.x.U0(nVar.getContext(), R.attr.motionDurationShort3, 100);
        this.f = i3.x.U0(nVar.getContext(), R.attr.motionDurationShort3, 150);
        this.f2470g = i3.x.V0(nVar.getContext(), R.attr.motionEasingLinearInterpolator, AbstractC0899a.f9596a);
        this.f2471h = i3.x.V0(nVar.getContext(), R.attr.motionEasingEmphasizedInterpolator, AbstractC0899a.f9599d);
    }

    @Override // S1.o
    public final void a() {
        if (this.f2520b.f2512r != null) {
            return;
        }
        t(u());
    }

    @Override // S1.o
    public final int c() {
        return R.string.clear_text_end_icon_content_description;
    }

    @Override // S1.o
    public final int d() {
        return R.drawable.mtrl_ic_cancel;
    }

    @Override // S1.o
    public final View.OnFocusChangeListener e() {
        return this.f2474k;
    }

    @Override // S1.o
    public final View.OnClickListener f() {
        return this.f2473j;
    }

    @Override // S1.o
    public final View.OnFocusChangeListener g() {
        return this.f2474k;
    }

    @Override // S1.o
    public final void m(EditText editText) {
        this.f2472i = editText;
        this.f2519a.setEndIconVisible(u());
    }

    @Override // S1.o
    public final void p(boolean z4) {
        if (this.f2520b.f2512r == null) {
            return;
        }
        t(z4);
    }

    @Override // S1.o
    public final void r() {
        final int i5 = 1;
        final int i6 = 0;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(this.f2471h);
        valueAnimatorOfFloat.setDuration(this.f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: S1.b

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ d f2466b;

            {
                this.f2466b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i7 = i5;
                d dVar = this.f2466b;
                dVar.getClass();
                switch (i7) {
                    case 0:
                        dVar.f2522d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = dVar.f2522d;
                        checkableImageButton.setScaleX(fFloatValue);
                        checkableImageButton.setScaleY(fFloatValue);
                        break;
                }
            }
        });
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.f2470g;
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        int i7 = this.f2469e;
        valueAnimatorOfFloat2.setDuration(i7);
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: S1.b

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ d f2466b;

            {
                this.f2466b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i72 = i6;
                d dVar = this.f2466b;
                dVar.getClass();
                switch (i72) {
                    case 0:
                        dVar.f2522d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = dVar.f2522d;
                        checkableImageButton.setScaleX(fFloatValue);
                        checkableImageButton.setScaleY(fFloatValue);
                        break;
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.f2475l = animatorSet;
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        this.f2475l.addListener(new c(this, i6));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat3.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat3.setDuration(i7);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: S1.b

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ d f2466b;

            {
                this.f2466b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i72 = i6;
                d dVar = this.f2466b;
                dVar.getClass();
                switch (i72) {
                    case 0:
                        dVar.f2522d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = dVar.f2522d;
                        checkableImageButton.setScaleX(fFloatValue);
                        checkableImageButton.setScaleY(fFloatValue);
                        break;
                }
            }
        });
        this.f2476m = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.addListener(new c(this, i5));
    }

    @Override // S1.o
    public final void s() {
        EditText editText = this.f2472i;
        if (editText != null) {
            editText.post(new D1.b(4, this));
        }
    }

    public final void t(boolean z4) {
        boolean z5 = this.f2520b.d() == z4;
        if (z4 && !this.f2475l.isRunning()) {
            this.f2476m.cancel();
            this.f2475l.start();
            if (z5) {
                this.f2475l.end();
                return;
            }
            return;
        }
        if (z4) {
            return;
        }
        this.f2475l.cancel();
        this.f2476m.start();
        if (z5) {
            this.f2476m.end();
        }
    }

    public final boolean u() {
        EditText editText = this.f2472i;
        return editText != null && (editText.hasFocus() || this.f2522d.hasFocus()) && this.f2472i.getText().length() > 0;
    }
}
