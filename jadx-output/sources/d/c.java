package d;

import J.Z;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: g, reason: collision with root package name */
    public static Interpolator f6487g;

    /* renamed from: h, reason: collision with root package name */
    public static Interpolator f6488h;

    /* renamed from: a, reason: collision with root package name */
    public View f6489a;

    /* renamed from: b, reason: collision with root package name */
    public float f6490b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6491c;

    /* renamed from: d, reason: collision with root package name */
    public final ValueAnimator f6492d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6493e = false;
    public final Context f;

    public c(View view, Context context) {
        this.f6491c = false;
        this.f6489a = view;
        this.f = context;
        if (view instanceof ViewGroup) {
            this.f6491c = true;
        } else {
            this.f6491c = false;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f);
        this.f6492d = valueAnimatorOfFloat;
        if (f6487g == null) {
            f6487g = AnimationUtils.loadInterpolator(context, R.anim.sesl_recoil_pressed);
        }
        if (f6488h == null) {
            f6488h = AnimationUtils.loadInterpolator(context, R.anim.sesl_recoil_released);
        }
        valueAnimatorOfFloat.addUpdateListener(new Z(2, this));
        valueAnimatorOfFloat.addListener(new b(0, this));
    }

    public final void a(float f) {
        if (this.f6491c) {
            View view = this.f6489a;
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i5 = 0; i5 < viewGroup.getChildCount(); i5++) {
                    View childAt = viewGroup.getChildAt(i5);
                    Matrix matrix = new Matrix();
                    float width = (this.f6489a.getWidth() / 2.0f) - childAt.getLeft();
                    float height = (this.f6489a.getHeight() / 2.0f) - childAt.getTop();
                    matrix.setTranslate(-width, -height);
                    matrix.postScale(f, f);
                    matrix.postTranslate(width, height);
                    childAt.setAnimationMatrix(matrix);
                }
                return;
            }
        }
        this.f6489a.setScaleX(f);
        this.f6489a.setScaleY(f);
    }

    public final boolean b() {
        return this.f6493e || this.f6492d.isRunning();
    }
}
