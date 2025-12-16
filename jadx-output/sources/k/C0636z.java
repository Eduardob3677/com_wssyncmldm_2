package k;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.transition.Transition;
import android.transition.TransitionInflater;
import android.transition.TransitionSet;
import android.util.AttributeSet;
import android.view.Display;
import android.view.KeyCharacterMap;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.PopupWindow;
import c.AbstractC0206a;
import com.wssyncmldm.R;
import java.lang.reflect.Method;
import p.AbstractC0735a;
import p0.AbstractC0739a;
import p0.AbstractC0740b;

/* renamed from: k.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0636z extends PopupWindow {
    public static final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f8058g;

    /* renamed from: a, reason: collision with root package name */
    public final Context f8059a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f8060b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f8061c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8062d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8063e;

    static {
        f = AbstractC0739a.k() >= 140500;
        f8058g = new int[]{R.drawable.sesl_menu_popup_background, R.drawable.sesl_menu_popup_background_dark};
    }

    public C0636z(Context context, AttributeSet attributeSet, int i5, int i6) {
        super(context, attributeSet, i5, i6);
        this.f8060b = new Rect();
        J.r0 r0VarM = J.r0.m(context, attributeSet, AbstractC0206a.f5177s, i5, i6);
        TypedArray typedArray = (TypedArray) r0VarM.f1007d;
        boolean z4 = false;
        if (typedArray.hasValue(2)) {
            O.n.c(this, typedArray.getBoolean(2, false));
        }
        this.f8059a = context;
        Transition transitionA = a(typedArray.getResourceId(3, 0));
        Transition transitionA2 = a(typedArray.getResourceId(4, 0));
        setEnterTransition(transitionA);
        setExitTransition(transitionA2);
        int resourceId = typedArray.getResourceId(0, -1);
        boolean z5 = false;
        for (int i7 : f8058g) {
            if (i7 == resourceId) {
                z5 = true;
            }
        }
        setBackgroundDrawable(r0VarM.g(0));
        this.f8063e = !z5;
        r0VarM.n();
        if (!ViewConfiguration.get(context).hasPermanentMenuKey() && !KeyCharacterMap.deviceHasKey(4)) {
            z4 = true;
        }
        this.f8061c = z4;
        this.f8062d = this.f8059a.getResources().getDimensionPixelSize(R.dimen.sesl_navigation_bar_height);
    }

    public final Transition a(int i5) {
        Transition transitionInflateTransition;
        if (i5 == 0 || i5 == 17760256 || (transitionInflateTransition = TransitionInflater.from(this.f8059a).inflateTransition(i5)) == null) {
            return null;
        }
        if ((transitionInflateTransition instanceof TransitionSet) && ((TransitionSet) transitionInflateTransition).getTransitionCount() == 0) {
            return null;
        }
        return transitionInflateTransition;
    }

    @Override // android.widget.PopupWindow
    public final int getMaxAvailableHeight(View view, int i5, boolean z4) {
        Context context;
        DisplayManager displayManager;
        Display display;
        Activity activity;
        int i6;
        Rect rect = new Rect();
        if (z4) {
            Method methodJ = i3.x.J(View.class, "getWindowDisplayFrame", Rect.class);
            if (methodJ != null) {
                i3.x.j0(view, methodJ, rect);
            }
            if (this.f8061c && this.f8059a.getResources().getConfiguration().orientation != 2) {
                rect.bottom -= this.f8062d;
            }
        } else {
            view.getWindowVisibleDisplayFrame(rect);
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i7 = 0;
        if (f && (context = this.f8059a) != null && (displayManager = (DisplayManager) context.getSystemService("display")) != null && (display = displayManager.getDisplay(0)) != null && AbstractC0735a.l()) {
            Context baseContext = this.f8059a;
            while (true) {
                if (!(baseContext instanceof ContextWrapper)) {
                    activity = null;
                    break;
                }
                if (baseContext instanceof Activity) {
                    activity = (Activity) baseContext;
                    break;
                }
                baseContext = ((ContextWrapper) baseContext).getBaseContext();
            }
            if (activity == null || !activity.isInMultiWindowMode()) {
                Point point = new Point();
                display.getRealSize(point);
                if (AbstractC0740b.f()) {
                    if (this.f8059a.getResources().getConfiguration().orientation == 2) {
                        int i8 = point.y;
                        int i9 = point.x;
                        if (i8 > i9) {
                            i7 = i9 / 2;
                        } else {
                            i6 = i8 / 2;
                            i7 = i6;
                        }
                    }
                } else if (AbstractC0740b.g() && this.f8059a.getResources().getConfiguration().orientation == 1) {
                    int i10 = point.y;
                    int i11 = point.x;
                    if (i10 > i11) {
                        i6 = i10 / 2;
                        i7 = i6;
                    } else {
                        i7 = i11 / 2;
                    }
                }
            }
        }
        int height = (((i7 == 0 || iArr[1] >= i7) ? rect.bottom : i7) - (O.n.a(this) ? iArr[1] : view.getHeight() + iArr[1])) - i5;
        int i12 = iArr[1];
        if (i7 == 0 || i12 < i7) {
            i7 = rect.top;
        }
        int iMax = Math.max(height, (i12 - i7) + i5);
        if (getBackground() == null) {
            return iMax;
        }
        Drawable background = getBackground();
        Rect rect2 = this.f8060b;
        background.getPadding(rect2);
        return iMax - (rect2.top + rect2.bottom);
    }

    @Override // android.widget.PopupWindow
    public final void setBackgroundDrawable(Drawable drawable) {
        this.f8063e = true;
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.widget.PopupWindow
    public final void showAsDropDown(View view, int i5, int i6) {
        super.showAsDropDown(view, i5, i6);
    }

    @Override // android.widget.PopupWindow
    public final void update(View view, int i5, int i6, int i7, int i8) {
        super.update(view, i5, i6, i7, i8);
    }

    @Override // android.widget.PopupWindow
    public final void showAsDropDown(View view, int i5, int i6, int i7) {
        super.showAsDropDown(view, i5, i6, i7);
    }
}
