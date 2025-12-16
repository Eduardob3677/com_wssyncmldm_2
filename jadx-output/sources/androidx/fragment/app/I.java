package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;

/* loaded from: classes.dex */
public final class I extends AnimationSet implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final ViewGroup f3745c;

    /* renamed from: d, reason: collision with root package name */
    public final View f3746d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f3747e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3748g;

    public I(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.f3748g = true;
        this.f3745c = viewGroup;
        this.f3746d = view;
        addAnimation(animation);
        viewGroup.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public final boolean getTransformation(long j3, Transformation transformation) {
        this.f3748g = true;
        if (this.f3747e) {
            return !this.f;
        }
        if (!super.getTransformation(j3, transformation)) {
            this.f3747e = true;
            J.r.a(this.f3745c, this);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z4 = this.f3747e;
        ViewGroup viewGroup = this.f3745c;
        if (z4 || !this.f3748g) {
            viewGroup.endViewTransition(this.f3746d);
            this.f = true;
        } else {
            this.f3748g = false;
            viewGroup.post(this);
        }
    }

    @Override // android.view.animation.Animation
    public final boolean getTransformation(long j3, Transformation transformation, float f) {
        this.f3748g = true;
        if (this.f3747e) {
            return !this.f;
        }
        if (!super.getTransformation(j3, transformation, f)) {
            this.f3747e = true;
            J.r.a(this.f3745c, this);
        }
        return true;
    }
}
