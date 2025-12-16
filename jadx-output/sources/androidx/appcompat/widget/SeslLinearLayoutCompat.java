package androidx.appcompat.widget;

import A3.D;
import J.N;
import J.Q;
import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.graphics.drawable.SeslRecoilDrawable;
import c.AbstractC0206a;
import java.util.WeakHashMap;
import k.AbstractC0619q0;
import k.C0555A;

/* loaded from: classes.dex */
public class SeslLinearLayoutCompat extends AbstractC0619q0 {

    /* renamed from: r, reason: collision with root package name */
    public final C0555A f3413r;

    /* renamed from: s, reason: collision with root package name */
    public final D f3414s;

    /* renamed from: t, reason: collision with root package name */
    public final androidx.appcompat.util.b f3415t;

    public SeslLinearLayoutCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        int[] iArr = AbstractC0206a.f5181w;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        WeakHashMap weakHashMap = Q.f940a;
        N.d(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        int i5 = typedArrayObtainStyledAttributes.getInt(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        androidx.appcompat.util.b bVar = new androidx.appcompat.util.b(context);
        this.f3415t = bVar;
        bVar.setRoundedCorners(i5);
        C0555A c0555a = new C0555A();
        c0555a.f7653c = null;
        this.f3413r = c0555a;
        this.f3414s = new D(context, 27);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.f3415t.drawRoundedCorner(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 66) {
            int action = keyEvent.getAction();
            D d2 = this.f3414s;
            if (action == 0) {
                View focusedChild = getFocusedChild();
                if (focusedChild != null) {
                    d2.K0(focusedChild);
                }
            } else {
                d2.L0();
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View childAt;
        int action = motionEvent.getAction();
        D d2 = this.f3414s;
        C0555A c0555a = this.f3413r;
        if (action == 0) {
            int i5 = 0;
            while (true) {
                if (i5 >= getChildCount()) {
                    childAt = null;
                    break;
                }
                childAt = getChildAt(i5);
                if (m(childAt, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    break;
                }
                i5++;
            }
            if (childAt != null) {
                View viewL = l(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
                if (viewL != null && viewL != childAt) {
                    if (viewL.getHeight() * viewL.getWidth() < childAt.getHeight() * childAt.getWidth() * 0.5d) {
                        viewL = null;
                    }
                }
                if (viewL != null) {
                    Drawable drawable = (Drawable) c0555a.f7653c;
                    if (drawable != null) {
                        drawable.setState(new int[0]);
                        c0555a.f7653c = null;
                    }
                    Drawable background = viewL.getBackground();
                    c0555a.f7653c = background;
                    if (background != null) {
                        background.setState(new int[]{R.attr.state_hovered});
                    }
                    d2.K0(viewL);
                }
            }
        } else if (action == 1) {
            Drawable drawable2 = (Drawable) c0555a.f7653c;
            if (drawable2 != null) {
                drawable2.setState(new int[0]);
                c0555a.f7653c = null;
            }
            d2.L0();
        } else if (action == 3) {
            Drawable drawable3 = (Drawable) c0555a.f7653c;
            if (drawable3 != null) {
                if (drawable3 instanceof SeslRecoilDrawable) {
                    ((SeslRecoilDrawable) drawable3).setState(new int[0]);
                } else {
                    drawable3.setState(new int[0]);
                }
                c0555a.f7653c = null;
            }
            d2.L0();
        } else if (action != 211) {
            if (action == 212) {
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public androidx.appcompat.util.b getRoundedCorner() {
        return this.f3415t;
    }

    public final View l(View view, int i5, int i6) {
        View viewL = null;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i7 = 0; i7 < viewGroup.getChildCount(); i7++) {
                View childAt = viewGroup.getChildAt(i7);
                if (m(childAt, i5, i6) && (viewL = l(childAt, i5, i6)) != null) {
                    break;
                }
            }
        }
        return (viewL == null && view.isClickable() && view.getVisibility() == 0 && view.isEnabled()) ? view : viewL;
    }

    public final boolean m(View view, int i5, int i6) {
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        view.getGlobalVisibleRect(rect2);
        getGlobalVisibleRect(rect);
        return rect2.contains(rect.width() + ((i5 + rect.left) - getWidth()), rect.height() + ((i6 + rect.top) - getHeight()));
    }
}
