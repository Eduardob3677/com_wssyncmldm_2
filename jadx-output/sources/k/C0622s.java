package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;

/* renamed from: k.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0622s {

    /* renamed from: b, reason: collision with root package name */
    public static C0622s f7985b;

    /* renamed from: a, reason: collision with root package name */
    public D0 f7986a;

    static {
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
    }

    public static synchronized C0622s a() {
        try {
            if (f7985b == null) {
                c();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f7985b;
    }

    public static synchronized void c() {
        if (f7985b == null) {
            C0622s c0622s = new C0622s();
            f7985b = c0622s;
            c0622s.f7986a = D0.a();
            D0 d02 = f7985b.f7986a;
            synchronized (d02) {
                d02.getClass();
            }
        }
    }

    public static void d(Drawable drawable, x1 x1Var, int[] iArr) {
        PorterDuff.Mode mode = D0.f7666d;
        int[] state = drawable.getState();
        Rect rect = AbstractC0591g0.f7856a;
        if (drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z4 = x1Var.f8054d;
        if (!z4 && !x1Var.f8053c) {
            drawable.clearColorFilter();
            return;
        }
        PorterDuffColorFilter porterDuffColorFilterE = null;
        ColorStateList colorStateList = z4 ? x1Var.f8051a : null;
        PorterDuff.Mode mode2 = x1Var.f8053c ? x1Var.f8052b : D0.f7666d;
        if (colorStateList != null && mode2 != null) {
            porterDuffColorFilterE = D0.e(colorStateList.getColorForState(iArr, 0), mode2);
        }
        drawable.setColorFilter(porterDuffColorFilterE);
    }

    public final synchronized Drawable b(Context context, int i5) {
        return this.f7986a.c(context, i5);
    }
}
