package androidx.appcompat.widget;

import J.Q;
import Z0.j;
import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import android.widget.ProgressBar;
import android.widget.RemoteViews;
import c.AbstractC0206a;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import i.e;
import i3.x;
import java.lang.reflect.Field;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.WeakHashMap;
import k.AbstractC0591g0;
import k.C0592g1;
import k.C0601j1;
import k.C0604k1;
import k.C0607l1;
import k.C0610m1;
import k.C0613n1;
import k.N1;
import k.RunnableC0595h1;
import z.AbstractC0933a;

@RemoteViews.RemoteView
/* loaded from: classes.dex */
public class SeslProgressBar extends View {

    /* renamed from: e0, reason: collision with root package name */
    public static final DecelerateInterpolator f3419e0 = new DecelerateInterpolator();

    /* renamed from: A, reason: collision with root package name */
    public boolean f3420A;

    /* renamed from: B, reason: collision with root package name */
    public Transformation f3421B;

    /* renamed from: C, reason: collision with root package name */
    public AlphaAnimation f3422C;

    /* renamed from: D, reason: collision with root package name */
    public boolean f3423D;
    public Drawable E;

    /* renamed from: F, reason: collision with root package name */
    public Drawable f3424F;

    /* renamed from: G, reason: collision with root package name */
    public Drawable f3425G;

    /* renamed from: H, reason: collision with root package name */
    public C0607l1 f3426H;

    /* renamed from: I, reason: collision with root package name */
    public int f3427I;

    /* renamed from: J, reason: collision with root package name */
    public final boolean f3428J;

    /* renamed from: K, reason: collision with root package name */
    public Interpolator f3429K;

    /* renamed from: L, reason: collision with root package name */
    public RunnableC0595h1 f3430L;

    /* renamed from: M, reason: collision with root package name */
    public final long f3431M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f3432N;

    /* renamed from: O, reason: collision with root package name */
    public boolean f3433O;

    /* renamed from: Q, reason: collision with root package name */
    public boolean f3434Q;

    /* renamed from: R, reason: collision with root package name */
    public boolean f3435R;

    /* renamed from: T, reason: collision with root package name */
    public float f3436T;

    /* renamed from: U, reason: collision with root package name */
    public final boolean f3437U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f3438V;

    /* renamed from: W, reason: collision with root package name */
    public final ArrayList f3439W;

    /* renamed from: a0, reason: collision with root package name */
    public RunnableC0595h1 f3440a0;

    /* renamed from: b0, reason: collision with root package name */
    public NumberFormat f3441b0;

    /* renamed from: c, reason: collision with root package name */
    public int f3442c;

    /* renamed from: c0, reason: collision with root package name */
    public Locale f3443c0;

    /* renamed from: d, reason: collision with root package name */
    public final float f3444d;

    /* renamed from: d0, reason: collision with root package name */
    public final C0592g1 f3445d0;

    /* renamed from: e, reason: collision with root package name */
    public int f3446e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f3447g;

    /* renamed from: h, reason: collision with root package name */
    public final Drawable f3448h;

    /* renamed from: i, reason: collision with root package name */
    public final Drawable f3449i;

    /* renamed from: j, reason: collision with root package name */
    public final Drawable f3450j;

    /* renamed from: k, reason: collision with root package name */
    public final Drawable f3451k;

    /* renamed from: l, reason: collision with root package name */
    public final Drawable f3452l;

    /* renamed from: m, reason: collision with root package name */
    public C0604k1 f3453m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f3454o;

    /* renamed from: p, reason: collision with root package name */
    public int f3455p;

    /* renamed from: q, reason: collision with root package name */
    public int f3456q;

    /* renamed from: r, reason: collision with root package name */
    public int f3457r;

    /* renamed from: s, reason: collision with root package name */
    public int f3458s;

    /* renamed from: t, reason: collision with root package name */
    public int f3459t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f3460u;

    /* renamed from: v, reason: collision with root package name */
    public int f3461v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f3462w;

    /* renamed from: x, reason: collision with root package name */
    public final int f3463x;

    /* renamed from: y, reason: collision with root package name */
    public final int f3464y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f3465z;

    public SeslProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.progressBarStyle);
    }

    public static boolean i(Drawable drawable) {
        if (!(drawable instanceof LayerDrawable)) {
            return !(drawable instanceof StateListDrawable) && (drawable instanceof BitmapDrawable);
        }
        LayerDrawable layerDrawable = (LayerDrawable) drawable;
        int numberOfLayers = layerDrawable.getNumberOfLayers();
        for (int i5 = 0; i5 < numberOfLayers; i5++) {
            if (i(layerDrawable.getDrawable(i5))) {
                return true;
            }
        }
        return false;
    }

    public final void a() {
        C0607l1 c0607l1;
        Drawable drawable = this.E;
        if (drawable == null || (c0607l1 = this.f3426H) == null) {
            return;
        }
        if (c0607l1.f7917c || c0607l1.f7918d) {
            Drawable drawableMutate = drawable.mutate();
            this.E = drawableMutate;
            if (c0607l1.f7917c) {
                C.a.h(drawableMutate, c0607l1.f7915a);
            }
            if (c0607l1.f7918d) {
                C.a.i(this.E, c0607l1.f7916b);
            }
            if (this.E.isStateful()) {
                this.E.setState(getDrawableState());
            }
        }
    }

    public final void b() {
        Drawable drawableG;
        C0607l1 c0607l1 = this.f3426H;
        if ((c0607l1.f7920g || c0607l1.f7921h) && (drawableG = g(R.id.progress, true)) != null) {
            C0607l1 c0607l12 = this.f3426H;
            if (c0607l12.f7920g) {
                C.a.h(drawableG, c0607l12.f7919e);
            }
            C0607l1 c0607l13 = this.f3426H;
            if (c0607l13.f7921h) {
                C.a.i(drawableG, c0607l13.f);
            }
            if (drawableG.isStateful()) {
                drawableG.setState(getDrawableState());
            }
        }
    }

    public final void c() {
        Drawable drawableG;
        C0607l1 c0607l1 = this.f3426H;
        if ((c0607l1.f7924k || c0607l1.f7925l) && (drawableG = g(R.id.background, false)) != null) {
            C0607l1 c0607l12 = this.f3426H;
            if (c0607l12.f7924k) {
                C.a.h(drawableG, c0607l12.f7922i);
            }
            C0607l1 c0607l13 = this.f3426H;
            if (c0607l13.f7925l) {
                C.a.i(drawableG, c0607l13.f7923j);
            }
            if (drawableG.isStateful()) {
                drawableG.setState(getDrawableState());
            }
        }
    }

    public final void d() {
        Drawable drawableG;
        C0607l1 c0607l1 = this.f3426H;
        if ((c0607l1.f7927o || c0607l1.f7928p) && (drawableG = g(R.id.secondaryProgress, false)) != null) {
            C0607l1 c0607l12 = this.f3426H;
            if (c0607l12.f7927o) {
                C.a.h(drawableG, c0607l12.f7926m);
            }
            C0607l1 c0607l13 = this.f3426H;
            if (c0607l13.f7928p) {
                C.a.i(drawableG, c0607l13.n);
            }
            if (drawableG.isStateful()) {
                drawableG.setState(getDrawableState());
            }
        }
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f5) {
        super.drawableHotspotChanged(f, f5);
        Drawable drawable = this.f3424F;
        if (drawable != null) {
            C.a.e(drawable, f, f5);
        }
        Drawable drawable2 = this.E;
        if (drawable2 != null) {
            C.a.e(drawable2, f, f5);
        }
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        u();
    }

    public final synchronized void e(int i5, int i6, boolean z4, boolean z5, boolean z6) {
        try {
            int i7 = this.f3461v;
            int i8 = this.f3459t;
            int i9 = i7 - i8;
            float f = i9 > 0 ? (i6 - i8) / i9 : 0.0f;
            float f5 = i9 > 0 ? (this.f3436T - i8) / i9 : 0.0f;
            boolean z7 = i5 == 16908301;
            Drawable drawable = this.f3425G;
            if (drawable != null) {
                int i10 = (int) (10000.0f * f);
                if (drawable instanceof LayerDrawable) {
                    Drawable drawableFindDrawableByLayerId = ((LayerDrawable) drawable).findDrawableByLayerId(i5);
                    if (drawableFindDrawableByLayerId != null && canResolveLayoutDirection()) {
                        WeakHashMap weakHashMap = Q.f940a;
                        C.b.b(drawableFindDrawableByLayerId, getLayoutDirection());
                    }
                    if (drawableFindDrawableByLayerId != null) {
                        drawable = drawableFindDrawableByLayerId;
                    }
                    drawable.setLevel(i10);
                } else if (drawable instanceof StateListDrawable) {
                } else {
                    drawable.setLevel(i10);
                }
            } else {
                invalidate();
            }
            if (z7 && z6) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, this.f3445d0, f5, f);
                objectAnimatorOfFloat.setAutoCancel(true);
                objectAnimatorOfFloat.setDuration(80L);
                objectAnimatorOfFloat.setInterpolator(f3419e0);
                objectAnimatorOfFloat.start();
            } else {
                o(i5, f);
            }
            if (z7 && z5) {
                j(f, z4, i6);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void f(Canvas canvas) {
        Drawable drawable = this.f3425G;
        if (drawable != 0) {
            int iSave = canvas.save();
            if (this.f3442c != 3 && this.f3437U && N1.a(this)) {
                canvas.translate(getWidth() - getPaddingRight(), getPaddingTop());
                canvas.scale(-1.0f, 1.0f);
            } else {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            long drawingTime = getDrawingTime();
            if (this.f3423D) {
                this.f3422C.getTransformation(drawingTime, this.f3421B);
                float alpha = this.f3421B.getAlpha();
                try {
                    this.f3433O = true;
                    drawable.setLevel((int) (alpha * 10000.0f));
                    this.f3433O = false;
                    WeakHashMap weakHashMap = Q.f940a;
                    postInvalidateOnAnimation();
                } catch (Throwable th) {
                    this.f3433O = false;
                    throw th;
                }
            }
            drawable.draw(canvas);
            canvas.restoreToCount(iSave);
            if (this.f3432N && (drawable instanceof Animatable)) {
                ((Animatable) drawable).start();
                this.f3432N = false;
            }
        }
    }

    public final Drawable g(int i5, boolean z4) {
        Drawable drawable = this.f3424F;
        if (drawable != null) {
            this.f3424F = drawable.mutate();
            drawableFindDrawableByLayerId = drawable instanceof LayerDrawable ? ((LayerDrawable) drawable).findDrawableByLayerId(i5) : null;
            if (z4 && drawableFindDrawableByLayerId == null) {
                return drawable;
            }
        }
        return drawableFindDrawableByLayerId;
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return ProgressBar.class.getName();
    }

    public Drawable getCurrentDrawable() {
        return this.f3425G;
    }

    public Drawable getIndeterminateDrawable() {
        return this.E;
    }

    public ColorStateList getIndeterminateTintList() {
        C0607l1 c0607l1 = this.f3426H;
        if (c0607l1 != null) {
            return c0607l1.f7915a;
        }
        return null;
    }

    public PorterDuff.Mode getIndeterminateTintMode() {
        C0607l1 c0607l1 = this.f3426H;
        if (c0607l1 != null) {
            return c0607l1.f7916b;
        }
        return null;
    }

    public Interpolator getInterpolator() {
        return this.f3429K;
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getMax() {
        return this.f3461v;
    }

    public int getMaxHeight() {
        return this.f3456q;
    }

    public int getMaxWidth() {
        return this.f3454o;
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getMin() {
        return this.f3459t;
    }

    public int getMinHeight() {
        return this.f3455p;
    }

    public int getMinWidth() {
        return this.n;
    }

    public boolean getMirrorForRtl() {
        return this.f3437U;
    }

    @Override // android.view.View
    public int getPaddingLeft() throws NoSuchFieldException, SecurityException {
        Field fieldI = x.I(View.class, "mPaddingLeft");
        if (fieldI != null) {
            Object objA = x.A(this, fieldI);
            if (objA instanceof Integer) {
                return ((Integer) objA).intValue();
            }
        }
        return 0;
    }

    @Override // android.view.View
    public int getPaddingRight() throws NoSuchFieldException, SecurityException {
        Field fieldI = x.I(View.class, "mPaddingRight");
        if (fieldI != null) {
            Object objA = x.A(this, fieldI);
            if (objA instanceof Integer) {
                return ((Integer) objA).intValue();
            }
        }
        return 0;
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getProgress() {
        return this.f3465z ? 0 : this.f3457r;
    }

    public ColorStateList getProgressBackgroundTintList() {
        C0607l1 c0607l1 = this.f3426H;
        if (c0607l1 != null) {
            return c0607l1.f7922i;
        }
        return null;
    }

    public PorterDuff.Mode getProgressBackgroundTintMode() {
        C0607l1 c0607l1 = this.f3426H;
        if (c0607l1 != null) {
            return c0607l1.f7923j;
        }
        return null;
    }

    public Drawable getProgressDrawable() {
        return this.f3424F;
    }

    public ColorStateList getProgressTintList() {
        C0607l1 c0607l1 = this.f3426H;
        if (c0607l1 != null) {
            return c0607l1.f7919e;
        }
        return null;
    }

    public PorterDuff.Mode getProgressTintMode() {
        C0607l1 c0607l1 = this.f3426H;
        if (c0607l1 != null) {
            return c0607l1.f;
        }
        return null;
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getSecondaryProgress() {
        return this.f3465z ? 0 : this.f3458s;
    }

    public ColorStateList getSecondaryProgressTintList() {
        C0607l1 c0607l1 = this.f3426H;
        if (c0607l1 != null) {
            return c0607l1.f7926m;
        }
        return null;
    }

    public PorterDuff.Mode getSecondaryProgressTintMode() {
        C0607l1 c0607l1 = this.f3426H;
        if (c0607l1 != null) {
            return c0607l1.n;
        }
        return null;
    }

    public final void h(int i5) {
        if (getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_bar_size_small) == i5) {
            this.f3446e = getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_circle_size_small_width);
            this.f = getResources().getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_progress_circle_size_small_padding);
            return;
        }
        if (getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_bar_size_small_title) == i5) {
            this.f3446e = getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_circle_size_small_title_width);
            this.f = getResources().getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_progress_circle_size_small_title_padding);
        } else if (getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_bar_size_large) == i5) {
            this.f3446e = getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_circle_size_large_width);
            this.f = getResources().getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_progress_circle_size_large_padding);
        } else if (getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_bar_size_xlarge) == i5) {
            this.f3446e = getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_circle_size_xlarge_width);
            this.f = getResources().getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_progress_circle_size_xlarge_padding);
        } else {
            this.f3446e = (getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_circle_size_small_width) * i5) / getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_bar_size_small);
            this.f = (getResources().getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_progress_circle_size_small_padding) * i5) / getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_bar_size_small);
        }
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        if (this.f3433O) {
            return;
        }
        if (!verifyDrawable(drawable)) {
            super.invalidateDrawable(drawable);
            return;
        }
        Rect bounds = drawable.getBounds();
        int paddingLeft = getPaddingLeft() + getScrollX();
        int paddingTop = getPaddingTop() + getScrollY();
        invalidate(bounds.left + paddingLeft, bounds.top + paddingTop, bounds.right + paddingLeft, bounds.bottom + paddingTop);
    }

    public void j(float f, boolean z4, int i5) {
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            RunnableC0595h1 runnableC0595h1 = this.f3440a0;
            if (runnableC0595h1 == null) {
                this.f3440a0 = new RunnableC0595h1(this, 0);
            } else {
                removeCallbacks(runnableC0595h1);
            }
            postDelayed(this.f3440a0, 200L);
        }
        int i6 = this.f3458s;
        if (i6 <= this.f3457r || z4) {
            return;
        }
        l(R.id.secondaryProgress, i6, false, false);
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f3424F;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.E;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
    }

    public void k(int i5, float f) {
    }

    public final synchronized void l(int i5, int i6, boolean z4, boolean z5) {
        try {
            if (this.f3431M == Thread.currentThread().getId()) {
                e(i5, i6, z4, true, z5);
            } else {
                if (this.f3430L == null) {
                    this.f3430L = new RunnableC0595h1(this, 1);
                }
                C0610m1 c0610m1 = (C0610m1) C0610m1.f7934e.a();
                if (c0610m1 == null) {
                    c0610m1 = new C0610m1();
                }
                c0610m1.f7935a = i5;
                c0610m1.f7936b = i6;
                c0610m1.f7937c = z4;
                c0610m1.f7938d = z5;
                this.f3439W.add(c0610m1);
                if (this.f3434Q && !this.f3435R) {
                    post(this.f3430L);
                    this.f3435R = true;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void m(int i5) {
        if (getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_bar_indeterminate_xsmall) >= i5) {
            setIndeterminateDrawable(this.f3448h);
            return;
        }
        if (getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_bar_indeterminate_small) >= i5) {
            setIndeterminateDrawable(this.f3449i);
            return;
        }
        if (getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_bar_indeterminate_medium) >= i5) {
            setIndeterminateDrawable(this.f3450j);
        } else if (getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_progress_bar_indeterminate_large) >= i5) {
            setIndeterminateDrawable(this.f3451k);
        } else {
            setIndeterminateDrawable(this.f3452l);
        }
    }

    public synchronized boolean n(int i5, boolean z4, boolean z5) {
        Drawable drawableFindDrawableByLayerId;
        try {
            if (this.f3465z) {
                return false;
            }
            int iN = j.n(i5, this.f3459t, this.f3461v);
            int i6 = this.f3457r;
            if (iN == i6) {
                return false;
            }
            this.f3436T = i6;
            this.f3457r = iN;
            if (this.f3442c == 7 && (getProgressDrawable() instanceof LayerDrawable) && (drawableFindDrawableByLayerId = ((LayerDrawable) getProgressDrawable()).findDrawableByLayerId(R.id.progress)) != null && (drawableFindDrawableByLayerId instanceof C0601j1)) {
                C0601j1 c0601j1 = (C0601j1) drawableFindDrawableByLayerId;
                if (z5) {
                    ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(c0601j1, c0601j1.f7876i, iN);
                    objectAnimatorOfInt.setAutoCancel(true);
                    objectAnimatorOfInt.setDuration(80L);
                    objectAnimatorOfInt.setInterpolator(f3419e0);
                    objectAnimatorOfInt.start();
                } else {
                    c0601j1.f7873e = iN;
                    c0601j1.f7877j.invalidate();
                }
            }
            l(R.id.progress, this.f3457r, z4, z5);
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void o(int i5, float f) {
        this.f3436T = f;
        Drawable drawableFindDrawableByLayerId = this.f3425G;
        if ((drawableFindDrawableByLayerId instanceof LayerDrawable) && (drawableFindDrawableByLayerId = ((LayerDrawable) drawableFindDrawableByLayerId).findDrawableByLayerId(i5)) == null) {
            drawableFindDrawableByLayerId = this.f3425G;
        }
        if (drawableFindDrawableByLayerId != null) {
            drawableFindDrawableByLayerId.setLevel((int) (10000.0f * f));
        } else {
            invalidate();
        }
        k(i5, f);
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f3465z) {
            p();
        }
        synchronized (this) {
            try {
                int size = this.f3439W.size();
                for (int i5 = 0; i5 < size; i5++) {
                    C0610m1 c0610m1 = (C0610m1) this.f3439W.get(i5);
                    e(c0610m1.f7935a, c0610m1.f7936b, c0610m1.f7937c, true, c0610m1.f7938d);
                    C0610m1.f7934e.c(c0610m1);
                }
                this.f3439W.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f3434Q = true;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        if (this.f3465z) {
            q();
        } else {
            this.f3453m = null;
        }
        RunnableC0595h1 runnableC0595h1 = this.f3430L;
        if (runnableC0595h1 != null) {
            removeCallbacks(runnableC0595h1);
            this.f3435R = false;
        }
        RunnableC0595h1 runnableC0595h12 = this.f3440a0;
        if (runnableC0595h12 != null) {
            removeCallbacks(runnableC0595h12);
        }
        super.onDetachedFromWindow();
        this.f3434Q = false;
    }

    @Override // android.view.View
    public synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        f(canvas);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setItemCount(this.f3461v - this.f3459t);
        accessibilityEvent.setCurrentItemIndex(this.f3457r);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) throws Resources.NotFoundException {
        boolean z4;
        boolean z5;
        String string;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        synchronized (this) {
            z4 = this.f3465z;
        }
        if (!z4) {
            accessibilityNodeInfo.setRangeInfo(AccessibilityNodeInfo.RangeInfo.obtain(0, getMin(), getMax(), getProgress()));
        }
        if (getStateDescription() == null) {
            synchronized (this) {
                z5 = this.f3465z;
            }
            if (z5) {
                Context context = getContext();
                int identifier = context.getResources().getIdentifier("in_progress", "string", "android");
                if (identifier > 0) {
                    try {
                        string = context.getResources().getString(identifier);
                    } catch (Resources.NotFoundException unused) {
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                } else {
                    string = "";
                }
                accessibilityNodeInfo.setStateDescription(string);
                return;
            }
            int progress = getProgress();
            Locale locale = getResources().getConfiguration().locale;
            if (!locale.equals(this.f3443c0) || this.f3441b0 == null) {
                this.f3443c0 = locale;
                this.f3441b0 = NumberFormat.getPercentInstance(locale);
            }
            NumberFormat numberFormat = this.f3441b0;
            float max = getMax();
            float min = getMin();
            float f = max - min;
            float f5 = 0.0f;
            if (f > 0.0f) {
                float f6 = (progress - min) / f;
                if (f6 >= 0.0f) {
                    f5 = 1.0f;
                    if (f6 <= 1.0f) {
                        f5 = f6;
                    }
                }
            }
            accessibilityNodeInfo.setStateDescription(numberFormat.format(f5));
        }
    }

    @Override // android.view.View
    public synchronized void onMeasure(int i5, int i6) {
        int iMax;
        int iMax2;
        try {
            Drawable drawable = this.f3425G;
            if (drawable != null) {
                iMax2 = Math.max(this.n, Math.min(this.f3454o, drawable.getIntrinsicWidth()));
                iMax = Math.max(this.f3455p, Math.min(this.f3456q, drawable.getIntrinsicHeight()));
            } else {
                iMax = 0;
                iMax2 = 0;
            }
            u();
            int paddingLeft = getPaddingLeft() + getPaddingRight() + iMax2;
            int paddingTop = getPaddingTop() + getPaddingBottom() + iMax;
            int iResolveSizeAndState = View.resolveSizeAndState(paddingLeft, i5, 0);
            int iResolveSizeAndState2 = View.resolveSizeAndState(paddingTop, i6, 0);
            h((iResolveSizeAndState - getPaddingLeft()) - getPaddingRight());
            if (this.f3447g && this.f3465z) {
                m((iResolveSizeAndState - getPaddingLeft()) - getPaddingRight());
            }
            setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        C0613n1 c0613n1 = (C0613n1) parcelable;
        super.onRestoreInstanceState(c0613n1.getSuperState());
        setProgress(c0613n1.f7941c);
        setSecondaryProgress(c0613n1.f7942d);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C0613n1 c0613n1 = new C0613n1(super.onSaveInstanceState());
        c0613n1.f7941c = this.f3457r;
        c0613n1.f7942d = this.f3458s;
        return c0613n1;
    }

    @Override // android.view.View
    public void onSizeChanged(int i5, int i6, int i7, int i8) throws NoSuchFieldException, SecurityException {
        t(i5, i6);
    }

    @Override // android.view.View
    public final void onVisibilityAggregated(boolean z4) {
        super.onVisibilityAggregated(z4);
        if (z4 != this.f3438V) {
            this.f3438V = z4;
            if (this.f3465z) {
                if (z4) {
                    p();
                } else {
                    q();
                }
            }
            Drawable drawable = this.f3425G;
            if (drawable != null) {
                drawable.setVisible(z4, false);
            }
        }
    }

    public final void p() {
        if (getVisibility() == 0) {
            Drawable drawable = this.E;
            if (drawable instanceof Animatable) {
                this.f3432N = true;
                this.f3423D = false;
                if (drawable instanceof AnimatedVectorDrawable) {
                    ((AnimatedVectorDrawable) drawable).registerAnimationCallback(this.f3453m);
                }
            } else {
                this.f3423D = true;
                if (this.f3429K == null) {
                    this.f3429K = new LinearInterpolator();
                }
                Transformation transformation = this.f3421B;
                if (transformation == null) {
                    this.f3421B = new Transformation();
                } else {
                    transformation.clear();
                }
                AlphaAnimation alphaAnimation = this.f3422C;
                if (alphaAnimation == null) {
                    this.f3422C = new AlphaAnimation(0.0f, 1.0f);
                } else {
                    alphaAnimation.reset();
                }
                this.f3422C.setRepeatMode(this.f3463x);
                this.f3422C.setRepeatCount(-1);
                this.f3422C.setDuration(this.f3464y);
                this.f3422C.setInterpolator(this.f3429K);
                this.f3422C.setStartTime(-1L);
            }
            postInvalidate();
        }
    }

    @Override // android.view.View
    public final void postInvalidate() {
        if (this.f3428J) {
            return;
        }
        super.postInvalidate();
    }

    public final void q() {
        this.f3423D = false;
        Object obj = this.E;
        if (obj instanceof Animatable) {
            ((Animatable) obj).stop();
            Drawable drawable = this.E;
            if (drawable instanceof AnimatedVectorDrawable) {
                ((AnimatedVectorDrawable) drawable).unregisterAnimationCallback(this.f3453m);
            }
            this.f3432N = false;
        }
        postInvalidate();
    }

    public final void r(Drawable drawable) {
        Drawable drawable2 = this.f3425G;
        this.f3425G = drawable;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setVisible(false, false);
            }
            Drawable drawable3 = this.f3425G;
            if (drawable3 != null) {
                drawable3.setVisible(getWindowVisibility() == 0 && isShown(), false);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r8v4, types: [android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable] */
    public final Drawable s(Drawable drawable, boolean z4) {
        if (!(drawable instanceof LayerDrawable)) {
            if (drawable instanceof StateListDrawable) {
                return new StateListDrawable();
            }
            if (drawable instanceof BitmapDrawable) {
                drawable = (BitmapDrawable) drawable.getConstantState().newDrawable(getResources());
                drawable.setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
                if (this.f3427I <= 0) {
                    this.f3427I = drawable.getIntrinsicWidth();
                }
                if (z4) {
                    return new ClipDrawable(drawable, 3, 1);
                }
            }
            return drawable;
        }
        LayerDrawable layerDrawable = (LayerDrawable) drawable;
        int numberOfLayers = layerDrawable.getNumberOfLayers();
        Drawable[] drawableArr = new Drawable[numberOfLayers];
        for (int i5 = 0; i5 < numberOfLayers; i5++) {
            int id = layerDrawable.getId(i5);
            drawableArr[i5] = s(layerDrawable.getDrawable(i5), id == 16908301 || id == 16908303);
        }
        LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
        for (int i6 = 0; i6 < numberOfLayers; i6++) {
            layerDrawable2.setId(i6, layerDrawable.getId(i6));
            layerDrawable2.setLayerGravity(i6, layerDrawable.getLayerGravity(i6));
            layerDrawable2.setLayerWidth(i6, layerDrawable.getLayerWidth(i6));
            layerDrawable2.setLayerHeight(i6, layerDrawable.getLayerHeight(i6));
            layerDrawable2.setLayerInsetLeft(i6, layerDrawable.getLayerInsetLeft(i6));
            layerDrawable2.setLayerInsetRight(i6, layerDrawable.getLayerInsetRight(i6));
            layerDrawable2.setLayerInsetTop(i6, layerDrawable.getLayerInsetTop(i6));
            layerDrawable2.setLayerInsetBottom(i6, layerDrawable.getLayerInsetBottom(i6));
            layerDrawable2.setLayerInsetStart(i6, layerDrawable.getLayerInsetStart(i6));
            layerDrawable2.setLayerInsetEnd(i6, layerDrawable.getLayerInsetEnd(i6));
        }
        return layerDrawable2;
    }

    public synchronized void setIndeterminate(boolean z4) {
        try {
            if (!this.f3420A || !this.f3465z) {
                if (z4 != this.f3465z) {
                    this.f3465z = z4;
                    if (z4) {
                        r(this.E);
                        p();
                    } else {
                        r(this.f3424F);
                        q();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        Drawable drawable2 = this.E;
        if (drawable2 != drawable) {
            boolean z4 = this.f3447g;
            if (drawable2 != null) {
                if (z4) {
                    q();
                }
                this.E.setCallback(null);
                unscheduleDrawable(this.E);
            }
            this.E = drawable;
            if (drawable != null) {
                drawable.setCallback(this);
                WeakHashMap weakHashMap = Q.f940a;
                C.b.b(drawable, getLayoutDirection());
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                a();
            }
            if (this.f3465z) {
                if (z4) {
                    p();
                }
                r(drawable);
                postInvalidate();
            }
        }
    }

    public void setIndeterminateDrawableTiled(Drawable drawable) {
        if (drawable != null && (drawable instanceof AnimationDrawable)) {
            AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            AnimationDrawable animationDrawable2 = new AnimationDrawable();
            animationDrawable2.setOneShot(animationDrawable.isOneShot());
            for (int i5 = 0; i5 < numberOfFrames; i5++) {
                Drawable drawableS = s(animationDrawable.getFrame(i5), true);
                drawableS.setLevel(IDMCallbackStatusInterface.IDM_RESULTS);
                animationDrawable2.addFrame(drawableS, animationDrawable.getDuration(i5));
            }
            animationDrawable2.setLevel(IDMCallbackStatusInterface.IDM_RESULTS);
            drawable = animationDrawable2;
        }
        setIndeterminateDrawable(drawable);
    }

    public void setIndeterminateTintList(ColorStateList colorStateList) {
        if (this.f3426H == null) {
            this.f3426H = new C0607l1();
        }
        C0607l1 c0607l1 = this.f3426H;
        c0607l1.f7915a = colorStateList;
        c0607l1.f7917c = true;
        a();
    }

    public void setIndeterminateTintMode(PorterDuff.Mode mode) {
        if (this.f3426H == null) {
            this.f3426H = new C0607l1();
        }
        C0607l1 c0607l1 = this.f3426H;
        c0607l1.f7916b = mode;
        c0607l1.f7918d = true;
        a();
    }

    public void setInterpolator(Interpolator interpolator) {
        this.f3429K = interpolator;
    }

    public synchronized void setMax(int i5) {
        int i6;
        try {
            boolean z4 = this.f3460u;
            if (z4 && i5 < (i6 = this.f3459t)) {
                i5 = i6;
            }
            this.f3462w = true;
            if (!z4 || i5 == this.f3461v) {
                this.f3461v = i5;
            } else {
                this.f3461v = i5;
                postInvalidate();
                if (this.f3457r > i5) {
                    this.f3457r = i5;
                }
                l(R.id.progress, this.f3457r, false, false);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setMaxHeight(int i5) {
        this.f3456q = i5;
        requestLayout();
    }

    public void setMaxWidth(int i5) {
        this.f3454o = i5;
        requestLayout();
    }

    public synchronized void setMin(int i5) {
        int i6;
        try {
            boolean z4 = this.f3462w;
            if (z4 && i5 > (i6 = this.f3461v)) {
                i5 = i6;
            }
            this.f3460u = true;
            if (!z4 || i5 == this.f3459t) {
                this.f3459t = i5;
            } else {
                this.f3459t = i5;
                postInvalidate();
                if (this.f3457r < i5) {
                    this.f3457r = i5;
                }
                l(R.id.progress, this.f3457r, false, false);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setMinHeight(int i5) {
        this.f3455p = i5;
        requestLayout();
    }

    public void setMinWidth(int i5) {
        this.n = i5;
        requestLayout();
    }

    public void setMode(int i5) throws NoSuchFieldException, SecurityException {
        Drawable drawableB;
        this.f3442c = i5;
        if (i5 == 3) {
            drawableB = AbstractC0933a.b(getContext(), com.wssyncmldm.R.drawable.sesl_scrubber_progress_vertical);
        } else if (i5 != 4) {
            if (i5 == 7) {
                this.f3420A = false;
                setIndeterminate(false);
                LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new C0601j1(this, true, new ColorStateList(new int[][]{new int[0]}, new int[]{getResources().getColor(com.wssyncmldm.R.color.sesl_progress_control_color_background)})), new C0601j1(this, false, new ColorStateList(new int[][]{new int[0]}, new int[]{getResources().getColor(com.wssyncmldm.R.color.sesl_progress_control_color_activated_light)}))});
                layerDrawable.setPaddingMode(1);
                layerDrawable.setId(0, R.id.background);
                layerDrawable.setId(1, R.id.progress);
                setProgressDrawable(layerDrawable);
            }
            drawableB = null;
        } else {
            drawableB = AbstractC0933a.b(getContext(), com.wssyncmldm.R.drawable.sesl_split_seekbar_background_progress);
        }
        if (drawableB != null) {
            setProgressDrawableTiled(drawableB);
        }
    }

    public synchronized void setProgress(int i5) {
        n(i5, false, false);
    }

    public void setProgressBackgroundTintList(ColorStateList colorStateList) {
        if (this.f3426H == null) {
            this.f3426H = new C0607l1();
        }
        C0607l1 c0607l1 = this.f3426H;
        c0607l1.f7922i = colorStateList;
        c0607l1.f7924k = true;
        if (this.f3424F != null) {
            c();
        }
    }

    public void setProgressBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f3426H == null) {
            this.f3426H = new C0607l1();
        }
        C0607l1 c0607l1 = this.f3426H;
        c0607l1.f7923j = mode;
        c0607l1.f7925l = true;
        if (this.f3424F != null) {
            c();
        }
    }

    public void setProgressDrawable(Drawable drawable) throws NoSuchFieldException, SecurityException {
        Drawable drawable2 = this.f3424F;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f3424F);
            }
            this.f3424F = drawable;
            if (drawable != null) {
                drawable.setCallback(this);
                WeakHashMap weakHashMap = Q.f940a;
                C.b.b(drawable, getLayoutDirection());
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f3442c == 3) {
                    int minimumWidth = drawable.getMinimumWidth();
                    if (this.f3454o < minimumWidth) {
                        this.f3454o = minimumWidth;
                        requestLayout();
                    }
                } else {
                    int minimumHeight = drawable.getMinimumHeight();
                    if (this.f3456q < minimumHeight) {
                        this.f3456q = minimumHeight;
                        requestLayout();
                    }
                }
                if (this.f3424F != null && this.f3426H != null) {
                    b();
                    c();
                    d();
                }
            }
            if (!this.f3465z) {
                r(drawable);
                postInvalidate();
            }
            t(getWidth(), getHeight());
            u();
            e(R.id.progress, this.f3457r, false, false, false);
            e(R.id.secondaryProgress, this.f3458s, false, false, false);
            if (getImportantForAccessibility() == 0) {
                setImportantForAccessibility(1);
            }
        }
    }

    public void setProgressDrawableTiled(Drawable drawable) throws NoSuchFieldException, SecurityException {
        if (drawable != null) {
            drawable = s(drawable, false);
        }
        setProgressDrawable(drawable);
    }

    public void setProgressTintList(ColorStateList colorStateList) {
        if (this.f3426H == null) {
            this.f3426H = new C0607l1();
        }
        C0607l1 c0607l1 = this.f3426H;
        c0607l1.f7919e = colorStateList;
        c0607l1.f7920g = true;
        if (this.f3424F != null) {
            b();
        }
    }

    public void setProgressTintMode(PorterDuff.Mode mode) {
        if (this.f3426H == null) {
            this.f3426H = new C0607l1();
        }
        C0607l1 c0607l1 = this.f3426H;
        c0607l1.f = mode;
        c0607l1.f7921h = true;
        if (this.f3424F != null) {
            b();
        }
    }

    public synchronized void setSecondaryProgress(int i5) {
        if (this.f3465z) {
            return;
        }
        int i6 = this.f3459t;
        if (i5 < i6) {
            i5 = i6;
        }
        int i7 = this.f3461v;
        if (i5 > i7) {
            i5 = i7;
        }
        if (i5 != this.f3458s) {
            this.f3458s = i5;
            l(R.id.secondaryProgress, i5, false, false);
        }
    }

    public void setSecondaryProgressTintList(ColorStateList colorStateList) {
        if (this.f3426H == null) {
            this.f3426H = new C0607l1();
        }
        C0607l1 c0607l1 = this.f3426H;
        c0607l1.f7926m = colorStateList;
        c0607l1.f7927o = true;
        if (this.f3424F != null) {
            d();
        }
    }

    public void setSecondaryProgressTintMode(PorterDuff.Mode mode) {
        if (this.f3426H == null) {
            this.f3426H = new C0607l1();
        }
        C0607l1 c0607l1 = this.f3426H;
        c0607l1.n = mode;
        c0607l1.f7928p = true;
        if (this.f3424F != null) {
            d();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void t(int i5, int i6) throws NoSuchFieldException, SecurityException {
        int i7;
        int i8;
        int i9;
        int paddingLeft = i5 - (getPaddingLeft() + getPaddingRight());
        int paddingBottom = i6 - (getPaddingBottom() + getPaddingTop());
        Drawable drawable = this.E;
        if (drawable != null) {
            if (!this.f3420A || (drawable instanceof AnimationDrawable)) {
                i7 = paddingLeft;
                i8 = 0;
                i9 = 0;
                if (this.f3437U || !N1.a(this)) {
                    paddingLeft = i7;
                } else {
                    int i10 = paddingLeft - i7;
                    paddingLeft -= i9;
                    i9 = i10;
                }
                this.E.setBounds(i9, i8, paddingLeft, paddingBottom);
            } else {
                float intrinsicWidth = drawable.getIntrinsicWidth() / this.E.getIntrinsicHeight();
                float f = paddingLeft;
                float f5 = paddingBottom;
                float f6 = f / f5;
                if (Math.abs(intrinsicWidth - f6) < 1.0E-7d) {
                    if (f6 > intrinsicWidth) {
                        int i11 = (int) (f5 * intrinsicWidth);
                        int i12 = (paddingLeft - i11) / 2;
                        i9 = i12;
                        i7 = i11 + i12;
                        i8 = 0;
                    } else {
                        int i13 = (int) ((1.0f / intrinsicWidth) * f);
                        int i14 = (paddingBottom - i13) / 2;
                        int i15 = i13 + i14;
                        i7 = paddingLeft;
                        i9 = 0;
                        i8 = i14;
                        paddingBottom = i15;
                    }
                }
                if (this.f3437U) {
                    paddingLeft = i7;
                    this.E.setBounds(i9, i8, paddingLeft, paddingBottom);
                }
            }
        }
        Drawable drawable2 = this.f3424F;
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, paddingLeft, paddingBottom);
        }
    }

    public final void u() {
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f3424F;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.E;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.f3424F || drawable == this.E || super.verifyDrawable(drawable);
    }

    public SeslProgressBar(Context context, AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5, 0);
        this.f3442c = 0;
        this.f3447g = false;
        this.f3427I = 0;
        this.f3437U = false;
        this.f3439W = new ArrayList();
        this.f3445d0 = new C0592g1("visual_progress");
        this.f3431M = Thread.currentThread().getId();
        this.f3459t = 0;
        this.f3461v = 100;
        this.f3457r = 0;
        this.f3458s = 0;
        this.f3465z = false;
        this.f3420A = false;
        this.f3464y = 4000;
        this.f3463x = 1;
        this.n = 24;
        this.f3454o = 48;
        this.f3455p = 24;
        this.f3456q = 48;
        int[] iArr = AbstractC0206a.f5178t;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i5, 0);
        try {
            saveAttributeDataForStyleable(context, iArr, attributeSet, typedArrayObtainStyledAttributes, i5, 0);
            this.f3428J = true;
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(8);
            if (drawable != null) {
                if (i(drawable)) {
                    setProgressDrawableTiled(drawable);
                } else {
                    setProgressDrawable(drawable);
                }
            }
            this.f3464y = typedArrayObtainStyledAttributes.getInt(9, this.f3464y);
            this.n = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, this.n);
            this.f3454o = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, this.f3454o);
            this.f3455p = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, this.f3455p);
            this.f3456q = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, this.f3456q);
            this.f3463x = typedArrayObtainStyledAttributes.getInt(10, this.f3463x);
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(13, R.anim.linear_interpolator);
            if (resourceId > 0) {
                setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
            }
            setMin(typedArrayObtainStyledAttributes.getInt(26, this.f3459t));
            setMax(typedArrayObtainStyledAttributes.getInt(2, this.f3461v));
            setProgress(typedArrayObtainStyledAttributes.getInt(3, this.f3457r));
            setSecondaryProgress(typedArrayObtainStyledAttributes.getInt(4, this.f3458s));
            Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(7);
            if (drawable2 != null) {
                if (i(drawable2)) {
                    setIndeterminateDrawableTiled(drawable2);
                } else {
                    setIndeterminateDrawable(drawable2);
                }
            }
            boolean z4 = typedArrayObtainStyledAttributes.getBoolean(6, this.f3420A);
            this.f3420A = z4;
            this.f3428J = false;
            setIndeterminate(z4 || typedArrayObtainStyledAttributes.getBoolean(5, this.f3465z));
            this.f3437U = typedArrayObtainStyledAttributes.getBoolean(15, false);
            if (typedArrayObtainStyledAttributes.hasValue(17)) {
                if (this.f3426H == null) {
                    this.f3426H = new C0607l1();
                }
                this.f3426H.f = AbstractC0591g0.b(typedArrayObtainStyledAttributes.getInt(17, -1), null);
                this.f3426H.f7921h = true;
            }
            if (typedArrayObtainStyledAttributes.hasValue(16)) {
                if (this.f3426H == null) {
                    this.f3426H = new C0607l1();
                }
                this.f3426H.f7919e = typedArrayObtainStyledAttributes.getColorStateList(16);
                this.f3426H.f7920g = true;
            }
            if (typedArrayObtainStyledAttributes.hasValue(19)) {
                if (this.f3426H == null) {
                    this.f3426H = new C0607l1();
                }
                this.f3426H.f7923j = AbstractC0591g0.b(typedArrayObtainStyledAttributes.getInt(19, -1), null);
                this.f3426H.f7925l = true;
            }
            if (typedArrayObtainStyledAttributes.hasValue(18)) {
                if (this.f3426H == null) {
                    this.f3426H = new C0607l1();
                }
                this.f3426H.f7922i = typedArrayObtainStyledAttributes.getColorStateList(18);
                this.f3426H.f7924k = true;
            }
            if (typedArrayObtainStyledAttributes.hasValue(21)) {
                if (this.f3426H == null) {
                    this.f3426H = new C0607l1();
                }
                this.f3426H.n = AbstractC0591g0.b(typedArrayObtainStyledAttributes.getInt(21, -1), null);
                this.f3426H.f7928p = true;
            }
            if (typedArrayObtainStyledAttributes.hasValue(20)) {
                if (this.f3426H == null) {
                    this.f3426H = new C0607l1();
                }
                this.f3426H.f7926m = typedArrayObtainStyledAttributes.getColorStateList(20);
                this.f3426H.f7927o = true;
            }
            if (typedArrayObtainStyledAttributes.hasValue(23)) {
                if (this.f3426H == null) {
                    this.f3426H = new C0607l1();
                }
                this.f3426H.f7916b = AbstractC0591g0.b(typedArrayObtainStyledAttributes.getInt(23, -1), null);
                this.f3426H.f7918d = true;
            }
            if (typedArrayObtainStyledAttributes.hasValue(22)) {
                if (this.f3426H == null) {
                    this.f3426H = new C0607l1();
                }
                this.f3426H.f7915a = typedArrayObtainStyledAttributes.getColorStateList(22);
                this.f3426H.f7917c = true;
            }
            this.f3447g = typedArrayObtainStyledAttributes.getBoolean(27, false);
            e eVar = new e(context, 2132017403);
            this.f3448h = getResources().getDrawable(com.wssyncmldm.R.drawable.sesl_progress_bar_indeterminate_xsmall_transition, eVar.getTheme());
            this.f3449i = getResources().getDrawable(com.wssyncmldm.R.drawable.sesl_progress_bar_indeterminate_small_transition, eVar.getTheme());
            this.f3450j = getResources().getDrawable(com.wssyncmldm.R.drawable.sesl_progress_bar_indeterminate_medium_transition, eVar.getTheme());
            this.f3451k = getResources().getDrawable(com.wssyncmldm.R.drawable.sesl_progress_bar_indeterminate_large_transition, eVar.getTheme());
            this.f3452l = getResources().getDrawable(com.wssyncmldm.R.drawable.sesl_progress_bar_indeterminate_xlarge_transition, eVar.getTheme());
            typedArrayObtainStyledAttributes.recycle();
            if (this.f3424F != null && this.f3426H != null) {
                b();
                c();
                d();
            }
            a();
            WeakHashMap weakHashMap = Q.f940a;
            if (getImportantForAccessibility() == 0) {
                setImportantForAccessibility(1);
            }
            this.f3444d = context.getResources().getDisplayMetrics().density;
            this.f3453m = new C0604k1(this);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }
}
