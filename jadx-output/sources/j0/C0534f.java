package j0;

import android.animation.ValueAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: j0.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0534f implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7439a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f7440b;

    public /* synthetic */ C0534f(RecyclerView recyclerView, int i5) {
        this.f7439a = i5;
        this.f7440b = recyclerView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f7439a) {
            case 0:
                this.f7440b.invalidate();
                break;
            default:
                int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                RecyclerView recyclerView = this.f7440b;
                recyclerView.f4894t1 = iIntValue;
                recyclerView.invalidate();
                break;
        }
    }
}
