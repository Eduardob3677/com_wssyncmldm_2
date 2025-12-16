package k;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import com.wssyncmldm.R;

/* renamed from: k.C, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0557C extends RatingBar {

    /* renamed from: c, reason: collision with root package name */
    public final C0555A f7663c;

    public C0557C(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.ratingBarStyle);
        v1.a(this, getContext());
        C0555A c0555a = new C0555A();
        this.f7663c = c0555a;
        J.r0 r0VarM = J.r0.m(getContext(), attributeSet, C0555A.f7652d, R.attr.ratingBarStyle, 0);
        Drawable drawableH = r0VarM.h(0);
        if (drawableH != null) {
            if (drawableH instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) drawableH;
                int numberOfFrames = animationDrawable.getNumberOfFrames();
                AnimationDrawable animationDrawable2 = new AnimationDrawable();
                animationDrawable2.setOneShot(animationDrawable.isOneShot());
                for (int i5 = 0; i5 < numberOfFrames; i5++) {
                    Drawable drawableE = c0555a.e(animationDrawable.getFrame(i5), true);
                    drawableE.setLevel(IDMCallbackStatusInterface.IDM_RESULTS);
                    animationDrawable2.addFrame(drawableE, animationDrawable.getDuration(i5));
                }
                animationDrawable2.setLevel(IDMCallbackStatusInterface.IDM_RESULTS);
                drawableH = animationDrawable2;
            }
            setIndeterminateDrawable(drawableH);
        }
        Drawable drawableH2 = r0VarM.h(1);
        if (drawableH2 != null) {
            setProgressDrawable(c0555a.e(drawableH2, false));
        }
        r0VarM.n();
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i5, int i6) {
        super.onMeasure(i5, i6);
        Bitmap bitmap = (Bitmap) this.f7663c.f7653c;
        if (bitmap != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i5, 0), getMeasuredHeight());
        }
    }
}
