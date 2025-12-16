package j0;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import com.idm.adapter.callback.IDMCallbackStatusInterface;

/* renamed from: j0.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0549v {

    /* renamed from: a, reason: collision with root package name */
    public int f7580a = -1;

    /* renamed from: b, reason: collision with root package name */
    public RecyclerView f7581b;

    /* renamed from: c, reason: collision with root package name */
    public J f7582c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f7583d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7584e;
    public View f;

    /* renamed from: g, reason: collision with root package name */
    public final V f7585g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7586h;

    /* renamed from: i, reason: collision with root package name */
    public final LinearInterpolator f7587i;

    /* renamed from: j, reason: collision with root package name */
    public final DecelerateInterpolator f7588j;

    /* renamed from: k, reason: collision with root package name */
    public PointF f7589k;

    /* renamed from: l, reason: collision with root package name */
    public final DisplayMetrics f7590l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f7591m;
    public float n;

    /* renamed from: o, reason: collision with root package name */
    public int f7592o;

    /* renamed from: p, reason: collision with root package name */
    public int f7593p;

    public C0549v(Context context) {
        V v4 = new V();
        v4.f7375d = -1;
        v4.f = false;
        v4.f7377g = 0;
        v4.f7372a = 0;
        v4.f7373b = 0;
        v4.f7374c = Integer.MIN_VALUE;
        v4.f7376e = null;
        this.f7585g = v4;
        this.f7587i = new LinearInterpolator();
        this.f7588j = new DecelerateInterpolator();
        this.f7591m = false;
        this.f7592o = 0;
        this.f7593p = 0;
        this.f7590l = context.getResources().getDisplayMetrics();
    }

    public static int a(int i5, int i6, int i7, int i8, int i9) {
        if (i9 == -1) {
            return i7 - i5;
        }
        if (i9 != 0) {
            if (i9 == 1) {
                return i8 - i6;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i10 = i7 - i5;
        if (i10 > 0) {
            return i10;
        }
        int i11 = i8 - i6;
        if (i11 < 0) {
            return i11;
        }
        return 0;
    }

    public int b(View view, int i5) {
        J j3 = this.f7582c;
        if (j3 == null || !j3.d()) {
            return 0;
        }
        K k5 = (K) view.getLayoutParams();
        return a((view.getLeft() - ((K) view.getLayoutParams()).f7353b.left) - ((ViewGroup.MarginLayoutParams) k5).leftMargin, view.getRight() + ((K) view.getLayoutParams()).f7353b.right + ((ViewGroup.MarginLayoutParams) k5).rightMargin, j3.C(), j3.n - j3.D(), i5);
    }

    public int c(View view, int i5) {
        J j3 = this.f7582c;
        if (j3 == null || !j3.e()) {
            return 0;
        }
        K k5 = (K) view.getLayoutParams();
        return a((view.getTop() - ((K) view.getLayoutParams()).f7353b.top) - ((ViewGroup.MarginLayoutParams) k5).topMargin, view.getBottom() + ((K) view.getLayoutParams()).f7353b.bottom + ((ViewGroup.MarginLayoutParams) k5).bottomMargin, j3.E(), j3.f7351o - j3.B(), i5);
    }

    public float d(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int e(int i5) {
        float fAbs = Math.abs(i5);
        if (!this.f7591m) {
            this.n = d(this.f7590l);
            this.f7591m = true;
        }
        return (int) Math.ceil(fAbs * this.n);
    }

    public PointF f(int i5) {
        Object obj = this.f7582c;
        if (obj instanceof W) {
            return ((W) obj).a(i5);
        }
        Log.w("SeslRecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + W.class.getCanonicalName());
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(int i5, int i6) {
        PointF pointFF;
        RecyclerView recyclerView = this.f7581b;
        if (this.f7580a == -1 || recyclerView == null) {
            i();
        }
        if (this.f7583d && this.f == null && this.f7582c != null && (pointFF = f(this.f7580a)) != null) {
            float f = pointFF.x;
            if (f != 0.0f || pointFF.y != 0.0f) {
                recyclerView.u0(null, (int) Math.signum(f), (int) Math.signum(pointFF.y));
            }
        }
        this.f7583d = false;
        View view = this.f;
        V v4 = this.f7585g;
        if (view != null) {
            this.f7581b.getClass();
            if (RecyclerView.T(view) == this.f7580a) {
                View view2 = this.f;
                X x4 = recyclerView.l0;
                h(view2, v4);
                v4.a(recyclerView);
                i();
            } else {
                Log.e("SeslRecyclerView", "Passed over target position while smooth scrolling.");
                this.f = null;
            }
        }
        if (this.f7584e) {
            X x5 = recyclerView.l0;
            if (this.f7581b.f4884p.v() == 0) {
                i();
            } else {
                int i7 = this.f7592o;
                int i8 = i7 - i5;
                if (i7 * i8 <= 0) {
                    i8 = 0;
                }
                this.f7592o = i8;
                int i9 = this.f7593p;
                int i10 = i9 - i6;
                if (i9 * i10 <= 0) {
                    i10 = 0;
                }
                this.f7593p = i10;
                if (i8 == 0 && i10 == 0) {
                    PointF pointFF2 = f(this.f7580a);
                    if (pointFF2 != null) {
                        if (pointFF2.x == 0.0f && pointFF2.y == 0.0f) {
                            v4.f7375d = this.f7580a;
                            i();
                        } else {
                            float f5 = pointFF2.y;
                            float fSqrt = (float) Math.sqrt((f5 * f5) + (r9 * r9));
                            float f6 = pointFF2.x / fSqrt;
                            pointFF2.x = f6;
                            float f7 = pointFF2.y / fSqrt;
                            pointFF2.y = f7;
                            this.f7589k = pointFF2;
                            this.f7592o = (int) (f6 * 10000.0f);
                            this.f7593p = (int) (f7 * 10000.0f);
                            int iE = e(IDMCallbackStatusInterface.IDM_RESULTS);
                            LinearInterpolator linearInterpolator = this.f7587i;
                            v4.f7372a = (int) (this.f7592o * 1.2f);
                            v4.f7373b = (int) (this.f7593p * 1.2f);
                            v4.f7374c = (int) (iE * 1.2f);
                            v4.f7376e = linearInterpolator;
                            v4.f = true;
                        }
                    }
                }
            }
            boolean z4 = v4.f7375d >= 0;
            v4.a(recyclerView);
            if (z4 && this.f7584e) {
                this.f7583d = true;
                recyclerView.f4868i0.b();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void h(View view, V v4) {
        int i5;
        PointF pointF = this.f7589k;
        int i6 = 0;
        if (pointF != null) {
            float f = pointF.x;
            i5 = f == 0.0f ? 0 : f > 0.0f ? 1 : -1;
        }
        int iB = b(view, i5);
        PointF pointF2 = this.f7589k;
        if (pointF2 != null) {
            float f5 = pointF2.y;
            if (f5 != 0.0f) {
                i6 = f5 > 0.0f ? 1 : -1;
            }
        }
        int iC = c(view, i6);
        int iCeil = (int) Math.ceil(e((int) Math.sqrt((iC * iC) + (iB * iB))) / 0.3356d);
        if (iCeil > 0) {
            DecelerateInterpolator decelerateInterpolator = this.f7588j;
            v4.f7372a = -iB;
            v4.f7373b = -iC;
            v4.f7374c = iCeil;
            v4.f7376e = decelerateInterpolator;
            v4.f = true;
        }
    }

    public final void i() {
        if (this.f7584e) {
            this.f7584e = false;
            this.f7593p = 0;
            this.f7592o = 0;
            this.f7589k = null;
            this.f7581b.l0.f7378a = -1;
            this.f = null;
            this.f7580a = -1;
            this.f7583d = false;
            J j3 = this.f7582c;
            if (j3.f7343e == this) {
                j3.f7343e = null;
            }
            this.f7582c = null;
            this.f7581b = null;
        }
    }
}
