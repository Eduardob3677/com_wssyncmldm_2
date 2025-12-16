package y1;

import android.animation.Animator;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.model.view.BasicViewPagerAppBarView;
import d3.i;

/* renamed from: y1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0930c implements Animator.AnimatorListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BasicViewPagerAppBarView f9703a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPager2 f9704b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f9705c;

    public C0930c(BasicViewPagerAppBarView basicViewPagerAppBarView, ViewPager2 viewPager2, int i5) {
        this.f9703a = basicViewPagerAppBarView;
        this.f9704b = viewPager2;
        this.f9705c = i5;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        i.e("animation", animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        i.e("animation", animator);
        BasicViewPagerAppBarView basicViewPagerAppBarView = this.f9703a;
        ViewPager2 viewPager2 = this.f9704b;
        int i5 = this.f9705c;
        basicViewPagerAppBarView.moveNextAndRemove(viewPager2, i5);
        basicViewPagerAppBarView.removeIndicator(i5);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        i.e("animation", animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        i.e("animation", animator);
    }
}
