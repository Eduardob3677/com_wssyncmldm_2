package O;

import J.Q;
import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class g implements View.OnTouchListener {

    /* renamed from: t, reason: collision with root package name */
    public static final int f1918t = ViewConfiguration.getTapTimeout();

    /* renamed from: c, reason: collision with root package name */
    public final a f1919c;

    /* renamed from: d, reason: collision with root package name */
    public final AccelerateInterpolator f1920d;

    /* renamed from: e, reason: collision with root package name */
    public final View f1921e;
    public B1.h f;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f1922g;

    /* renamed from: h, reason: collision with root package name */
    public final float[] f1923h;

    /* renamed from: i, reason: collision with root package name */
    public final int f1924i;

    /* renamed from: j, reason: collision with root package name */
    public final int f1925j;

    /* renamed from: k, reason: collision with root package name */
    public final float[] f1926k;

    /* renamed from: l, reason: collision with root package name */
    public final float[] f1927l;

    /* renamed from: m, reason: collision with root package name */
    public final float[] f1928m;
    public boolean n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f1929o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f1930p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f1931q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f1932r;

    /* renamed from: s, reason: collision with root package name */
    public final ListView f1933s;

    public g(ListView listView) {
        a aVar = new a();
        aVar.f1914e = Long.MIN_VALUE;
        aVar.f1915g = -1L;
        aVar.f = 0L;
        this.f1919c = aVar;
        this.f1920d = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.f1922g = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f1923h = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.f1926k = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.f1927l = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f1928m = fArr5;
        this.f1921e = listView;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f5 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr5[0] = f5;
        fArr5[1] = f5;
        float f6 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f6;
        fArr4[1] = f6;
        this.f1924i = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.f1925j = f1918t;
        aVar.f1910a = 500;
        aVar.f1911b = 500;
        this.f1933s = listView;
    }

    public static float b(float f, float f5, float f6) {
        return f > f6 ? f6 : f < f5 ? f5 : f;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final float a(int i5, float f, float f5, float f6) {
        float fB;
        float interpolation;
        float fB2 = b(this.f1922g[i5] * f5, 0.0f, this.f1923h[i5]);
        float fC = c(f5 - f, fB2) - c(f, fB2);
        AccelerateInterpolator accelerateInterpolator = this.f1920d;
        if (fC < 0.0f) {
            interpolation = -accelerateInterpolator.getInterpolation(-fC);
        } else {
            if (fC <= 0.0f) {
                fB = 0.0f;
                if (fB != 0.0f) {
                    return 0.0f;
                }
                float f7 = this.f1926k[i5];
                float f8 = this.f1927l[i5];
                float f9 = this.f1928m[i5];
                float f10 = f7 * f6;
                return fB > 0.0f ? b(fB * f10, f8, f9) : -b((-fB) * f10, f8, f9);
            }
            interpolation = accelerateInterpolator.getInterpolation(fC);
        }
        fB = b(interpolation, -1.0f, 1.0f);
        if (fB != 0.0f) {
        }
    }

    public final float c(float f, float f5) {
        if (f5 == 0.0f) {
            return 0.0f;
        }
        int i5 = this.f1924i;
        if (i5 == 0 || i5 == 1) {
            if (f < f5) {
                if (f >= 0.0f) {
                    return 1.0f - (f / f5);
                }
                if (this.f1931q && i5 == 1) {
                    return 1.0f;
                }
            }
        } else if (i5 == 2 && f < 0.0f) {
            return f / (-f5);
        }
        return 0.0f;
    }

    public final void d() {
        int i5 = 0;
        if (this.f1929o) {
            this.f1931q = false;
            return;
        }
        a aVar = this.f1919c;
        aVar.getClass();
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i6 = (int) (jCurrentAnimationTimeMillis - aVar.f1914e);
        int i7 = aVar.f1911b;
        if (i6 > i7) {
            i5 = i7;
        } else if (i6 >= 0) {
            i5 = i6;
        }
        aVar.f1917i = i5;
        aVar.f1916h = aVar.a(jCurrentAnimationTimeMillis);
        aVar.f1915g = jCurrentAnimationTimeMillis;
    }

    public final boolean e() {
        ListView listView;
        int count;
        a aVar = this.f1919c;
        float f = aVar.f1913d;
        int iAbs = (int) (f / Math.abs(f));
        Math.abs(aVar.f1912c);
        if (iAbs == 0 || (count = (listView = this.f1933s).getCount()) == 0) {
            return false;
        }
        int childCount = listView.getChildCount();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        int i5 = firstVisiblePosition + childCount;
        if (iAbs > 0) {
            if (i5 >= count && listView.getChildAt(childCount - 1).getBottom() <= listView.getHeight()) {
                return false;
            }
        } else {
            if (iAbs >= 0) {
                return false;
            }
            if (firstVisiblePosition <= 0 && listView.getChildAt(0).getTop() >= 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0016  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouch(View view, MotionEvent motionEvent) throws Resources.NotFoundException {
        int i5;
        int i6 = 3;
        if (!this.f1932r) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                d();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                }
            }
            return false;
        }
        this.f1930p = true;
        this.n = false;
        float x4 = motionEvent.getX();
        float width = view.getWidth();
        View view2 = this.f1921e;
        float fA = a(0, x4, width, view2.getWidth());
        float fA2 = a(1, motionEvent.getY(), view.getHeight(), view2.getHeight());
        a aVar = this.f1919c;
        aVar.f1912c = fA;
        aVar.f1913d = fA2;
        if (!this.f1931q && e()) {
            if (this.f == null) {
                this.f = new B1.h(i6, this);
            }
            this.f1931q = true;
            this.f1929o = true;
            if (this.n || (i5 = this.f1925j) <= 0) {
                this.f.run();
            } else {
                B1.h hVar = this.f;
                long j3 = i5;
                WeakHashMap weakHashMap = Q.f940a;
                view2.postOnAnimationDelayed(hVar, j3);
            }
            this.n = true;
        }
        return false;
    }
}
