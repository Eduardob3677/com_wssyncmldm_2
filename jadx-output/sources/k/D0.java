package k;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import com.wssyncmldm.R;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import o.AbstractC0715d;
import o.C0716e;
import z.AbstractC0933a;

/* loaded from: classes.dex */
public final class D0 {

    /* renamed from: e, reason: collision with root package name */
    public static D0 f7667e;

    /* renamed from: a, reason: collision with root package name */
    public final WeakHashMap f7668a = new WeakHashMap(0);

    /* renamed from: b, reason: collision with root package name */
    public TypedValue f7669b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7670c;

    /* renamed from: d, reason: collision with root package name */
    public static final PorterDuff.Mode f7666d = PorterDuff.Mode.SRC_IN;
    public static final C0 f = new C0(6);

    public static synchronized D0 a() {
        try {
            if (f7667e == null) {
                f7667e = new D0();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f7667e;
    }

    public static synchronized PorterDuffColorFilter e(int i5, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        C0 c02 = f;
        c02.getClass();
        int i6 = (31 + i5) * 31;
        porterDuffColorFilter = (PorterDuffColorFilter) c02.a(Integer.valueOf(mode.hashCode() + i6));
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i5, mode);
        }
        return porterDuffColorFilter;
    }

    public final synchronized Drawable b(Context context, long j3) {
        C0716e c0716e = (C0716e) this.f7668a.get(context);
        if (c0716e == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) c0716e.d(j3, null);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            int iB = AbstractC0715d.b(c0716e.f8418d, c0716e.f, j3);
            if (iB >= 0) {
                Object[] objArr = c0716e.f8419e;
                Object obj = objArr[iB];
                Object obj2 = C0716e.f8416g;
                if (obj != obj2) {
                    objArr[iB] = obj2;
                    c0716e.f8417c = true;
                }
            }
        }
        return null;
    }

    public final synchronized Drawable c(Context context, int i5) {
        return d(context, i5, false);
    }

    public final synchronized Drawable d(Context context, int i5, boolean z4) {
        Drawable drawableB;
        try {
            if (!this.f7670c) {
                this.f7670c = true;
                Drawable drawableC = c(context, R.drawable.abc_vector_test);
                if (drawableC == null || (!(drawableC instanceof D0.p) && !"android.graphics.drawable.VectorDrawable".equals(drawableC.getClass().getName()))) {
                    this.f7670c = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            if (this.f7669b == null) {
                this.f7669b = new TypedValue();
            }
            context.getResources().getValue(i5, this.f7669b, true);
            drawableB = b(context, (r0.assetCookie << 32) | r0.data);
            Drawable drawable = null;
            if (drawableB == null) {
                drawableB = null;
            }
            if (drawableB == null) {
                drawableB = AbstractC0933a.b(context, i5);
            }
            if (drawableB != null) {
                synchronized (this) {
                    if (!z4) {
                        drawable = drawableB;
                    }
                    drawableB = drawable;
                }
            }
            if (drawableB != null) {
                Rect rect = AbstractC0591g0.f7856a;
            }
        } finally {
        }
        return drawableB;
    }
}
