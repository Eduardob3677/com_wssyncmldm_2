package j0;

import android.R;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import androidx.recyclerview.widget.RecyclerView;
import com.samsung.android.knox.custom.CustomDeviceManager;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: j0.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0541m extends G {

    /* renamed from: C, reason: collision with root package name */
    public static final int[] f7506C = {R.attr.state_pressed};

    /* renamed from: D, reason: collision with root package name */
    public static final int[] f7507D = new int[0];

    /* renamed from: A, reason: collision with root package name */
    public int f7508A;

    /* renamed from: B, reason: collision with root package name */
    public final B1.h f7509B;

    /* renamed from: a, reason: collision with root package name */
    public final int f7510a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7511b;

    /* renamed from: c, reason: collision with root package name */
    public final StateListDrawable f7512c;

    /* renamed from: d, reason: collision with root package name */
    public final Drawable f7513d;

    /* renamed from: e, reason: collision with root package name */
    public final int f7514e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final StateListDrawable f7515g;

    /* renamed from: h, reason: collision with root package name */
    public final Drawable f7516h;

    /* renamed from: i, reason: collision with root package name */
    public final int f7517i;

    /* renamed from: j, reason: collision with root package name */
    public final int f7518j;

    /* renamed from: k, reason: collision with root package name */
    public int f7519k;

    /* renamed from: l, reason: collision with root package name */
    public int f7520l;

    /* renamed from: m, reason: collision with root package name */
    public float f7521m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f7522o;

    /* renamed from: p, reason: collision with root package name */
    public float f7523p;

    /* renamed from: s, reason: collision with root package name */
    public final RecyclerView f7526s;

    /* renamed from: z, reason: collision with root package name */
    public final ValueAnimator f7533z;

    /* renamed from: q, reason: collision with root package name */
    public int f7524q = 0;

    /* renamed from: r, reason: collision with root package name */
    public int f7525r = 0;

    /* renamed from: t, reason: collision with root package name */
    public boolean f7527t = false;

    /* renamed from: u, reason: collision with root package name */
    public boolean f7528u = false;

    /* renamed from: v, reason: collision with root package name */
    public int f7529v = 0;

    /* renamed from: w, reason: collision with root package name */
    public int f7530w = 0;

    /* renamed from: x, reason: collision with root package name */
    public final int[] f7531x = new int[2];

    /* renamed from: y, reason: collision with root package name */
    public final int[] f7532y = new int[2];

    public C0541m(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i5, int i6, int i7) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f7533z = valueAnimatorOfFloat;
        this.f7508A = 0;
        B1.h hVar = new B1.h(15, this);
        this.f7509B = hVar;
        C0540l c0540l = new C0540l(this);
        this.f7512c = stateListDrawable;
        this.f7513d = drawable;
        this.f7515g = stateListDrawable2;
        this.f7516h = drawable2;
        this.f7514e = Math.max(i5, stateListDrawable.getIntrinsicWidth());
        this.f = Math.max(i5, drawable.getIntrinsicWidth());
        this.f7517i = Math.max(i5, stateListDrawable2.getIntrinsicWidth());
        this.f7518j = Math.max(i5, drawable2.getIntrinsicWidth());
        this.f7510a = i6;
        this.f7511b = i7;
        stateListDrawable.setAlpha(CustomDeviceManager.CALL_SCREEN_ALL);
        drawable.setAlpha(CustomDeviceManager.CALL_SCREEN_ALL);
        valueAnimatorOfFloat.addListener(new C0.i(this));
        valueAnimatorOfFloat.addUpdateListener(new B1.b(2, this));
        RecyclerView recyclerView2 = this.f7526s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            J j3 = recyclerView2.f4884p;
            if (j3 != null) {
                j3.c("Cannot remove item decoration during a scroll  or layout");
            }
            ArrayList arrayList = recyclerView2.f4889r;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                recyclerView2.setWillNotDraw(recyclerView2.getOverScrollMode() == 2);
            }
            recyclerView2.d0();
            recyclerView2.requestLayout();
            RecyclerView recyclerView3 = this.f7526s;
            recyclerView3.f4891s.remove(this);
            if (recyclerView3.f4893t == this) {
                recyclerView3.f4893t = null;
            }
            ArrayList arrayList2 = this.f7526s.n0;
            if (arrayList2 != null) {
                arrayList2.remove(c0540l);
            }
            this.f7526s.removeCallbacks(hVar);
        }
        this.f7526s = recyclerView;
        if (recyclerView != null) {
            recyclerView.j(this);
            this.f7526s.f4891s.add(this);
            this.f7526s.k(c0540l);
        }
    }

    public static int f(float f, float f5, int[] iArr, int i5, int i6, int i7) {
        int i8 = iArr[1] - iArr[0];
        if (i8 == 0) {
            return 0;
        }
        int i9 = i5 - i7;
        int i10 = (int) (((f5 - f) / i8) * i9);
        int i11 = i6 + i10;
        if (i11 >= i9 || i11 < 0) {
            return 0;
        }
        return i10;
    }

    @Override // j0.G
    public final void b(Canvas canvas, RecyclerView recyclerView) {
        int i5 = this.f7524q;
        RecyclerView recyclerView2 = this.f7526s;
        if (i5 != recyclerView2.getWidth() || this.f7525r != recyclerView2.getHeight()) {
            this.f7524q = recyclerView2.getWidth();
            this.f7525r = recyclerView2.getHeight();
            g(0);
            return;
        }
        if (this.f7508A != 0) {
            if (this.f7527t) {
                int i6 = this.f7524q;
                int i7 = this.f7514e;
                int i8 = i6 - i7;
                int i9 = this.f7520l;
                int i10 = this.f7519k;
                int i11 = i9 - (i10 / 2);
                StateListDrawable stateListDrawable = this.f7512c;
                stateListDrawable.setBounds(0, 0, i7, i10);
                int i12 = this.f7525r;
                int i13 = this.f;
                Drawable drawable = this.f7513d;
                drawable.setBounds(0, 0, i13, i12);
                WeakHashMap weakHashMap = J.Q.f940a;
                if (recyclerView2.getLayoutDirection() == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i7, i11);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-i7, -i11);
                } else {
                    canvas.translate(i8, 0.0f);
                    drawable.draw(canvas);
                    canvas.translate(0.0f, i11);
                    stateListDrawable.draw(canvas);
                    canvas.translate(-i8, -i11);
                }
            }
            if (this.f7528u) {
                int i14 = this.f7525r;
                int i15 = this.f7517i;
                int i16 = i14 - i15;
                int i17 = this.f7522o;
                int i18 = this.n;
                int i19 = i17 - (i18 / 2);
                StateListDrawable stateListDrawable2 = this.f7515g;
                stateListDrawable2.setBounds(0, 0, i18, i15);
                int i20 = this.f7524q;
                int i21 = this.f7518j;
                Drawable drawable2 = this.f7516h;
                drawable2.setBounds(0, 0, i20, i21);
                canvas.translate(0.0f, i16);
                drawable2.draw(canvas);
                canvas.translate(i19, 0.0f);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i19, -i16);
            }
        }
    }

    public final boolean d(float f, float f5) {
        if (f5 >= this.f7525r - this.f7517i) {
            int i5 = this.f7522o;
            int i6 = this.n;
            if (f >= i5 - (i6 / 2) && f <= (i6 / 2) + i5) {
                return true;
            }
        }
        return false;
    }

    public final boolean e(float f, float f5) {
        RecyclerView recyclerView = this.f7526s;
        WeakHashMap weakHashMap = J.Q.f940a;
        boolean z4 = recyclerView.getLayoutDirection() == 1;
        int i5 = this.f7514e;
        if (z4) {
            if (f > i5) {
                return false;
            }
        } else if (f < this.f7524q - i5) {
            return false;
        }
        int i6 = this.f7520l;
        int i7 = this.f7519k / 2;
        return f5 >= ((float) (i6 - i7)) && f5 <= ((float) (i7 + i6));
    }

    public final void g(int i5) {
        B1.h hVar = this.f7509B;
        StateListDrawable stateListDrawable = this.f7512c;
        if (i5 == 2 && this.f7529v != 2) {
            stateListDrawable.setState(f7506C);
            this.f7526s.removeCallbacks(hVar);
        }
        if (i5 == 0) {
            this.f7526s.invalidate();
        } else {
            h();
        }
        if (this.f7529v == 2 && i5 != 2) {
            stateListDrawable.setState(f7507D);
            this.f7526s.removeCallbacks(hVar);
            this.f7526s.postDelayed(hVar, 1200);
        } else if (i5 == 1) {
            this.f7526s.removeCallbacks(hVar);
            this.f7526s.postDelayed(hVar, 1500);
        }
        this.f7529v = i5;
    }

    public final void h() {
        int i5 = this.f7508A;
        ValueAnimator valueAnimator = this.f7533z;
        if (i5 != 0) {
            if (i5 != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.f7508A = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }
}
