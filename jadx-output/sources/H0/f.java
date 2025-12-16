package H0;

import android.animation.ValueAnimator;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class f extends j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f847a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f848b;

    public f() {
        this.f847a = 2;
        this.f848b = new ArrayList(3);
    }

    @Override // H0.j
    public void a(int i5) {
        Object obj = this.f848b;
        switch (this.f847a) {
            case 0:
                ViewPager2 viewPager2 = (ViewPager2) obj;
                if (i5 == 0) {
                    viewPager2.e();
                }
                if (viewPager2.f5027A != i5) {
                    viewPager2.f5027A = i5;
                }
                if (viewPager2.f5050z && ValueAnimator.areAnimatorsEnabled() && i5 == 1) {
                    viewPager2.getParent().requestDisallowInterceptTouchEvent(true);
                    if (viewPager2.f5047w.isRunning()) {
                        viewPager2.f5047w.cancel();
                    }
                    viewPager2.f5047w.setFloatValues(1.0f, 0.95f);
                    if (viewPager2.f5048x.isRunning()) {
                        viewPager2.f5047w.setFloatValues(viewPager2.f5049y, 0.95f);
                        viewPager2.f5048x.cancel();
                    }
                    viewPager2.f5047w.start();
                    return;
                }
                return;
            case 1:
            default:
                return;
            case 2:
                try {
                    Iterator it = ((ArrayList) obj).iterator();
                    while (it.hasNext()) {
                        ((j) it.next()).a(i5);
                    }
                    return;
                } catch (ConcurrentModificationException e5) {
                    throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e5);
                }
        }
    }

    @Override // H0.j
    public void b(int i5, float f, int i6) {
        switch (this.f847a) {
            case 2:
                try {
                    Iterator it = ((ArrayList) this.f848b).iterator();
                    while (it.hasNext()) {
                        ((j) it.next()).b(i5, f, i6);
                    }
                    return;
                } catch (ConcurrentModificationException e5) {
                    throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e5);
                }
            default:
                return;
        }
    }

    @Override // H0.j
    public final void c(int i5) {
        switch (this.f847a) {
            case 0:
                ViewPager2 viewPager2 = (ViewPager2) this.f848b;
                if (viewPager2.f != i5) {
                    viewPager2.f = i5;
                    viewPager2.f5046v.L();
                    return;
                }
                return;
            case 1:
                ViewPager2 viewPager22 = (ViewPager2) this.f848b;
                viewPager22.clearFocus();
                if (viewPager22.hasFocus()) {
                    viewPager22.f5037l.requestFocus(2);
                    return;
                }
                return;
            default:
                try {
                    Iterator it = ((ArrayList) this.f848b).iterator();
                    while (it.hasNext()) {
                        ((j) it.next()).c(i5);
                    }
                    return;
                } catch (ConcurrentModificationException e5) {
                    throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e5);
                }
        }
    }

    public /* synthetic */ f(ViewPager2 viewPager2, int i5) {
        this.f847a = i5;
        this.f848b = viewPager2;
    }
}
