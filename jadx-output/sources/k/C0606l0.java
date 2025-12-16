package k;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.wssyncmldm.R;
import java.lang.reflect.Field;

/* renamed from: k.l0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0606l0 extends ListView {

    /* renamed from: c, reason: collision with root package name */
    public final Rect f7905c;

    /* renamed from: d, reason: collision with root package name */
    public int f7906d;

    /* renamed from: e, reason: collision with root package name */
    public int f7907e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f7908g;

    /* renamed from: h, reason: collision with root package name */
    public int f7909h;

    /* renamed from: i, reason: collision with root package name */
    public C0600j0 f7910i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f7911j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f7912k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f7913l;

    /* renamed from: m, reason: collision with root package name */
    public O.g f7914m;
    public RunnableC0603k0 n;

    public C0606l0(Context context, boolean z4) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.f7905c = new Rect();
        this.f7906d = 0;
        this.f7907e = 0;
        this.f = 0;
        this.f7908g = 0;
        this.f7912k = z4;
        setCacheColorHint(0);
    }

    public final int a(int i5, int i6) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i7 = 0;
        View view = null;
        for (int i8 = 0; i8 < count; i8++) {
            int itemViewType = adapter.getItemViewType(i8);
            if (itemViewType != i7) {
                view = null;
                i7 = itemViewType;
            }
            view = adapter.getView(i8, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i9 = layoutParams.height;
            view.measure(i5, i9 > 0 ? View.MeasureSpec.makeMeasureSpec(i9, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i8 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i6) {
                return i6;
            }
        }
        return measuredHeight;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b(MotionEvent motionEvent, int i5) throws Resources.NotFoundException {
        boolean z4;
        View childAt;
        View childAt2;
        int actionMasked = motionEvent.getActionMasked();
        boolean z5 = false;
        if (actionMasked == 1) {
            z4 = false;
        } else {
            if (actionMasked != 2) {
                z4 = actionMasked != 3;
                if (z4 || z5) {
                    this.f7913l = false;
                    setPressed(false);
                    drawableStateChanged();
                    childAt2 = getChildAt(this.f7909h - getFirstVisiblePosition());
                    if (childAt2 != null) {
                        childAt2.setPressed(false);
                    }
                }
                if (z4) {
                    O.g gVar = this.f7914m;
                    if (gVar != null) {
                        if (gVar.f1932r) {
                            gVar.d();
                        }
                        gVar.f1932r = false;
                    }
                } else {
                    if (this.f7914m == null) {
                        this.f7914m = new O.g(this);
                    }
                    O.g gVar2 = this.f7914m;
                    boolean z6 = gVar2.f1932r;
                    gVar2.f1932r = true;
                    gVar2.onTouch(this, motionEvent);
                }
                return z4;
            }
            z4 = true;
        }
        int iFindPointerIndex = motionEvent.findPointerIndex(i5);
        if (iFindPointerIndex >= 0) {
            int x4 = (int) motionEvent.getX(iFindPointerIndex);
            int y3 = (int) motionEvent.getY(iFindPointerIndex);
            int iPointToPosition = pointToPosition(x4, y3);
            if (iPointToPosition == -1) {
                z5 = true;
            } else {
                View childAt3 = getChildAt(iPointToPosition - getFirstVisiblePosition());
                float f = x4;
                float f5 = y3;
                this.f7913l = true;
                AbstractC0594h0.a(this, f, f5);
                if (!isPressed()) {
                    setPressed(true);
                }
                layoutChildren();
                int i6 = this.f7909h;
                if (i6 != -1 && (childAt = getChildAt(i6 - getFirstVisiblePosition())) != null && childAt != childAt3 && childAt.isPressed()) {
                    childAt.setPressed(false);
                }
                this.f7909h = iPointToPosition;
                AbstractC0594h0.a(childAt3, f - childAt3.getLeft(), f5 - childAt3.getTop());
                if (!childAt3.isPressed()) {
                    childAt3.setPressed(true);
                }
                Drawable selector = getSelector();
                boolean z7 = (selector == null || iPointToPosition == -1) ? false : true;
                if (z7) {
                    selector.setVisible(false, false);
                }
                int left = childAt3.getLeft();
                int top = childAt3.getTop();
                int right = childAt3.getRight();
                int bottom = childAt3.getBottom();
                Rect rect = this.f7905c;
                rect.set(left, top, right, bottom);
                rect.left -= this.f7906d;
                rect.top -= this.f7907e;
                rect.right += this.f;
                rect.bottom += this.f7908g;
                int i7 = F.b.f653a;
                boolean zA = AbstractC0597i0.a(this);
                if (childAt3.isEnabled() != zA) {
                    AbstractC0597i0.b(this, !zA);
                    if (iPointToPosition != -1) {
                        refreshDrawableState();
                    }
                }
                if (z7) {
                    float fExactCenterX = rect.exactCenterX();
                    float fExactCenterY = rect.exactCenterY();
                    selector.setVisible(getVisibility() == 0, false);
                    C.a.e(selector, fExactCenterX, fExactCenterY);
                }
                Drawable selector2 = getSelector();
                if (selector2 != null && iPointToPosition != -1) {
                    C.a.e(selector2, f, f5);
                }
                C0600j0 c0600j0 = this.f7910i;
                if (c0600j0 != null) {
                    c0600j0.f7868d = false;
                }
                refreshDrawableState();
                if (actionMasked == 1) {
                    performItemClick(childAt3, iPointToPosition, getItemIdAtPosition(iPointToPosition));
                }
                z4 = true;
                z5 = false;
            }
        }
        if (z4) {
            this.f7913l = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.f7909h - getFirstVisiblePosition());
            if (childAt2 != null) {
            }
        }
        if (z4) {
        }
        return z4;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        Rect rect = this.f7905c;
        if (!rect.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(rect);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.n != null) {
            return;
        }
        super.drawableStateChanged();
        C0600j0 c0600j0 = this.f7910i;
        if (c0600j0 != null) {
            c0600j0.f7868d = true;
        }
        Drawable selector = getSelector();
        if (selector != null && this.f7913l && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean hasFocus() {
        return this.f7912k || super.hasFocus();
    }

    @Override // android.view.View
    public final boolean hasWindowFocus() {
        return this.f7912k || super.hasWindowFocus();
    }

    @Override // android.view.View
    public final boolean isFocused() {
        return this.f7912k || super.isFocused();
    }

    @Override // android.view.View
    public final boolean isInTouchMode() {
        return (this.f7912k && this.f7911j) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.n = null;
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onHoverEvent(MotionEvent motionEvent) throws NoSuchFieldException, SecurityException {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.n == null) {
            RunnableC0603k0 runnableC0603k0 = new RunnableC0603k0(0, this);
            this.n = runnableC0603k0;
            post(runnableC0603k0);
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            Field fieldI = i3.x.I(AdapterView.class, "mSelectedPosition");
            if (fieldI != null) {
                Object objA = i3.x.A(this, fieldI);
                int iIntValue = objA instanceof Integer ? ((Integer) objA).intValue() : -1;
                if (iPointToPosition != -1 && iPointToPosition != iIntValue) {
                    if (getChildAt(iPointToPosition - getFirstVisiblePosition()).isEnabled()) {
                        requestFocus();
                        if (!isHovered()) {
                            setHovered(true);
                        }
                    }
                    drawableStateChanged();
                }
            }
        } else {
            setSelection(-1);
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f7909h = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC0603k0 runnableC0603k0 = this.n;
        if (runnableC0603k0 != null) {
            C0606l0 c0606l0 = (C0606l0) runnableC0603k0.f7902d;
            c0606l0.n = null;
            c0606l0.removeCallbacks(runnableC0603k0);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z4) {
        this.f7911j = z4;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        C0600j0 c0600j0;
        if (drawable != null) {
            c0600j0 = new C0600j0(drawable);
            c0600j0.f7868d = true;
        } else {
            c0600j0 = null;
        }
        this.f7910i = c0600j0;
        super.setSelector(c0600j0);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f7906d = rect.left;
        this.f7907e = rect.top;
        this.f = rect.right;
        this.f7908g = rect.bottom;
    }
}
