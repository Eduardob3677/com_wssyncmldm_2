package D1;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.google.android.material.carousel.CarouselLayoutManager;
import j0.C0549v;
import j0.C0551x;
import j0.V;

/* loaded from: classes.dex */
public final class c extends C0549v {

    /* renamed from: q, reason: collision with root package name */
    public final /* synthetic */ int f457q;

    /* renamed from: r, reason: collision with root package name */
    public final /* synthetic */ Object f458r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(Object obj, Context context, int i5) {
        super(context);
        this.f457q = i5;
        this.f458r = obj;
    }

    @Override // j0.C0549v
    public int b(View view, int i5) {
        switch (this.f457q) {
            case 0:
                ((CarouselLayoutManager) this.f458r).getClass();
                return 0;
            default:
                return super.b(view, i5);
        }
    }

    @Override // j0.C0549v
    public int c(View view, int i5) {
        switch (this.f457q) {
            case 0:
                ((CarouselLayoutManager) this.f458r).getClass();
                return 0;
            default:
                return super.c(view, i5);
        }
    }

    @Override // j0.C0549v
    public float d(DisplayMetrics displayMetrics) {
        switch (this.f457q) {
            case 1:
                return 100.0f / displayMetrics.densityDpi;
            default:
                return super.d(displayMetrics);
        }
    }

    @Override // j0.C0549v
    public int e(int i5) {
        switch (this.f457q) {
            case 1:
                return Math.min(100, super.e(i5));
            default:
                return super.e(i5);
        }
    }

    @Override // j0.C0549v
    public PointF f(int i5) {
        switch (this.f457q) {
            case 0:
                return ((CarouselLayoutManager) this.f458r).a(i5);
            default:
                return super.f(i5);
        }
    }

    @Override // j0.C0549v
    public void h(View view, V v4) {
        switch (this.f457q) {
            case 1:
                C0551x c0551x = (C0551x) this.f458r;
                int[] iArrB = c0551x.b(c0551x.f7595a.getLayoutManager(), view);
                int i5 = iArrB[0];
                int i6 = iArrB[1];
                int iCeil = (int) Math.ceil(e(Math.max(Math.abs(i5), Math.abs(i6))) / 0.3356d);
                if (iCeil > 0) {
                    DecelerateInterpolator decelerateInterpolator = this.f7588j;
                    v4.f7372a = i5;
                    v4.f7373b = i6;
                    v4.f7374c = iCeil;
                    v4.f7376e = decelerateInterpolator;
                    v4.f = true;
                    break;
                }
                break;
            default:
                super.h(view, v4);
                break;
        }
    }
}
