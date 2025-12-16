package k;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import c.AbstractC0206a;
import java.util.WeakHashMap;

/* renamed from: k.q0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0619q0 extends ViewGroup {

    /* renamed from: c, reason: collision with root package name */
    public boolean f7960c;

    /* renamed from: d, reason: collision with root package name */
    public int f7961d;

    /* renamed from: e, reason: collision with root package name */
    public int f7962e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f7963g;

    /* renamed from: h, reason: collision with root package name */
    public int f7964h;

    /* renamed from: i, reason: collision with root package name */
    public float f7965i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f7966j;

    /* renamed from: k, reason: collision with root package name */
    public int[] f7967k;

    /* renamed from: l, reason: collision with root package name */
    public int[] f7968l;

    /* renamed from: m, reason: collision with root package name */
    public Drawable f7969m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f7970o;

    /* renamed from: p, reason: collision with root package name */
    public int f7971p;

    /* renamed from: q, reason: collision with root package name */
    public int f7972q;

    public AbstractC0619q0(Context context, AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f7960c = true;
        this.f7961d = -1;
        this.f7962e = 0;
        this.f7963g = 8388659;
        int[] iArr = AbstractC0206a.n;
        J.r0 r0VarM = J.r0.m(context, attributeSet, iArr, i5, 0);
        WeakHashMap weakHashMap = J.Q.f940a;
        J.N.d(this, context, iArr, attributeSet, (TypedArray) r0VarM.f1007d, i5, 0);
        TypedArray typedArray = (TypedArray) r0VarM.f1007d;
        int i6 = typedArray.getInt(1, -1);
        if (i6 >= 0) {
            setOrientation(i6);
        }
        int i7 = typedArray.getInt(0, -1);
        if (i7 >= 0) {
            setGravity(i7);
        }
        boolean z4 = typedArray.getBoolean(2, true);
        if (!z4) {
            setBaselineAligned(z4);
        }
        this.f7965i = typedArray.getFloat(4, -1.0f);
        this.f7961d = typedArray.getInt(3, -1);
        this.f7966j = typedArray.getBoolean(7, false);
        setDividerDrawable(r0VarM.g(5));
        this.f7971p = typedArray.getInt(8, 0);
        this.f7972q = typedArray.getDimensionPixelSize(6, 0);
        r0VarM.n();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0617p0;
    }

    public final void f(Canvas canvas, int i5) {
        this.f7969m.setBounds(getPaddingLeft() + this.f7972q, i5, (getWidth() - getPaddingRight()) - this.f7972q, this.f7970o + i5);
        this.f7969m.draw(canvas);
    }

    public final void g(Canvas canvas, int i5) {
        this.f7969m.setBounds(i5, getPaddingTop() + this.f7972q, this.n + i5, (getHeight() - getPaddingBottom()) - this.f7972q);
        this.f7969m.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i5;
        if (this.f7961d < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i6 = this.f7961d;
        if (childCount <= i6) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i6);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f7961d == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.f7962e;
        if (this.f == 1 && (i5 = this.f7963g & 112) != 48) {
            if (i5 == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f7964h) / 2;
            } else if (i5 == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.f7964h;
            }
        }
        return bottom + ((LinearLayout.LayoutParams) ((C0617p0) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f7961d;
    }

    public Drawable getDividerDrawable() {
        return this.f7969m;
    }

    public int getDividerPadding() {
        return this.f7972q;
    }

    public int getDividerWidth() {
        return this.n;
    }

    public int getGravity() {
        return this.f7963g;
    }

    public int getOrientation() {
        return this.f;
    }

    public int getShowDividers() {
        return this.f7971p;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f7965i;
    }

    @Override // android.view.ViewGroup
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public C0617p0 generateDefaultLayoutParams() {
        int i5 = this.f;
        if (i5 == 0) {
            return new C0617p0(-2, -2);
        }
        if (i5 == 1) {
            return new C0617p0(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public C0617p0 generateLayoutParams(AttributeSet attributeSet) {
        return new C0617p0(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public C0617p0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0617p0(layoutParams);
    }

    public final boolean k(int i5) {
        if (i5 == 0) {
            return (this.f7971p & 1) != 0;
        }
        if (i5 == getChildCount()) {
            return (this.f7971p & 4) != 0;
        }
        if ((this.f7971p & 2) == 0) {
            return false;
        }
        for (int i6 = i5 - 1; i6 >= 0; i6--) {
            if (getChildAt(i6).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i5;
        if (this.f7969m == null) {
            return;
        }
        int i6 = 0;
        if (this.f == 1) {
            int virtualChildCount = getVirtualChildCount();
            while (i6 < virtualChildCount) {
                View childAt = getChildAt(i6);
                if (childAt != null && childAt.getVisibility() != 8 && k(i6)) {
                    f(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((C0617p0) childAt.getLayoutParams())).topMargin) - this.f7970o);
                }
                i6++;
            }
            if (k(virtualChildCount)) {
                View childAt2 = getChildAt(virtualChildCount - 1);
                f(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f7970o : childAt2.getBottom() + ((LinearLayout.LayoutParams) ((C0617p0) childAt2.getLayoutParams())).bottomMargin);
                return;
            }
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean zA = N1.a(this);
        while (i6 < virtualChildCount2) {
            View childAt3 = getChildAt(i6);
            if (childAt3 != null && childAt3.getVisibility() != 8 && k(i6)) {
                C0617p0 c0617p0 = (C0617p0) childAt3.getLayoutParams();
                g(canvas, zA ? childAt3.getRight() + ((LinearLayout.LayoutParams) c0617p0).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) c0617p0).leftMargin) - this.n);
            }
            i6++;
        }
        if (k(virtualChildCount2)) {
            View childAt4 = getChildAt(virtualChildCount2 - 1);
            if (childAt4 != null) {
                C0617p0 c0617p02 = (C0617p0) childAt4.getLayoutParams();
                if (zA) {
                    left = childAt4.getLeft() - ((LinearLayout.LayoutParams) c0617p02).leftMargin;
                    i5 = this.n;
                    right = left - i5;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) c0617p02).rightMargin;
                }
            } else if (zA) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i5 = this.n;
                right = left - i5;
            }
            g(canvas, right);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x019e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int measuredHeight;
        int i18;
        int i19;
        int i20;
        int i21 = 8;
        if (this.f == 1) {
            int paddingLeft = getPaddingLeft();
            int i22 = i7 - i5;
            int paddingRight = i22 - getPaddingRight();
            int paddingRight2 = (i22 - paddingLeft) - getPaddingRight();
            int virtualChildCount = getVirtualChildCount();
            int i23 = this.f7963g;
            int i24 = i23 & 112;
            int i25 = 8388615 & i23;
            int paddingTop = i24 != 16 ? i24 != 80 ? getPaddingTop() : ((getPaddingTop() + i8) - i6) - this.f7964h : getPaddingTop() + (((i8 - i6) - this.f7964h) / 2);
            int i26 = 0;
            while (i26 < virtualChildCount) {
                View childAt = getChildAt(i26);
                if (childAt != null && childAt.getVisibility() != i21) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight2 = childAt.getMeasuredHeight();
                    C0617p0 c0617p0 = (C0617p0) childAt.getLayoutParams();
                    int i27 = ((LinearLayout.LayoutParams) c0617p0).gravity;
                    if (i27 < 0) {
                        i27 = i25;
                    }
                    WeakHashMap weakHashMap = J.Q.f940a;
                    int absoluteGravity = Gravity.getAbsoluteGravity(i27, getLayoutDirection()) & 7;
                    if (absoluteGravity == 1) {
                        i18 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout.LayoutParams) c0617p0).leftMargin;
                        i19 = ((LinearLayout.LayoutParams) c0617p0).rightMargin;
                    } else if (absoluteGravity != 5) {
                        i20 = ((LinearLayout.LayoutParams) c0617p0).leftMargin + paddingLeft;
                        if (k(i26)) {
                            paddingTop += this.f7970o;
                        }
                        int i28 = paddingTop + ((LinearLayout.LayoutParams) c0617p0).topMargin;
                        childAt.layout(i20, i28, measuredWidth + i20, i28 + measuredHeight2);
                        paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) c0617p0).bottomMargin + i28;
                    } else {
                        i18 = paddingRight - measuredWidth;
                        i19 = ((LinearLayout.LayoutParams) c0617p0).rightMargin;
                    }
                    i20 = i18 - i19;
                    if (k(i26)) {
                    }
                    int i282 = paddingTop + ((LinearLayout.LayoutParams) c0617p0).topMargin;
                    childAt.layout(i20, i282, measuredWidth + i20, i282 + measuredHeight2);
                    paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) c0617p0).bottomMargin + i282;
                }
                i26++;
                i21 = 8;
            }
            return;
        }
        boolean zA = N1.a(this);
        int paddingTop2 = getPaddingTop();
        int i29 = i8 - i6;
        int paddingBottom = i29 - getPaddingBottom();
        int paddingBottom2 = (i29 - paddingTop2) - getPaddingBottom();
        int virtualChildCount2 = getVirtualChildCount();
        int i30 = this.f7963g;
        int i31 = 8388615 & i30;
        int i32 = i30 & 112;
        boolean z5 = this.f7960c;
        int[] iArr = this.f7967k;
        int[] iArr2 = this.f7968l;
        WeakHashMap weakHashMap2 = J.Q.f940a;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i31, getLayoutDirection());
        int paddingLeft2 = absoluteGravity2 != 1 ? absoluteGravity2 != 5 ? getPaddingLeft() : ((getPaddingLeft() + i7) - i5) - this.f7964h : getPaddingLeft() + (((i7 - i5) - this.f7964h) / 2);
        if (zA) {
            i10 = virtualChildCount2 - 1;
            i9 = -1;
        } else {
            i9 = 1;
            i10 = 0;
        }
        int i33 = 0;
        while (i33 < virtualChildCount2) {
            int i34 = (i9 * i33) + i10;
            View childAt2 = getChildAt(i34);
            if (childAt2 == null) {
                i11 = i10;
                i12 = i9;
                i13 = virtualChildCount2;
                i14 = i32;
                i15 = 1;
            } else {
                i11 = i10;
                if (childAt2.getVisibility() != 8) {
                    int measuredWidth2 = childAt2.getMeasuredWidth();
                    int measuredHeight3 = childAt2.getMeasuredHeight();
                    C0617p0 c0617p02 = (C0617p0) childAt2.getLayoutParams();
                    i12 = i9;
                    if (z5) {
                        i13 = virtualChildCount2;
                        int baseline = ((LinearLayout.LayoutParams) c0617p02).height != -1 ? childAt2.getBaseline() : -1;
                        i16 = ((LinearLayout.LayoutParams) c0617p02).gravity;
                        if (i16 < 0) {
                            i16 = i32;
                        }
                        i17 = i16 & 112;
                        i14 = i32;
                        if (i17 != 16) {
                            measuredHeight = ((((paddingBottom2 - measuredHeight3) / 2) + paddingTop2) + ((LinearLayout.LayoutParams) c0617p02).topMargin) - ((LinearLayout.LayoutParams) c0617p02).bottomMargin;
                        } else if (i17 == 48) {
                            measuredHeight = ((LinearLayout.LayoutParams) c0617p02).topMargin + paddingTop2;
                            if (baseline != -1) {
                                measuredHeight = (iArr[1] - baseline) + measuredHeight;
                            }
                        } else if (i17 != 80) {
                            measuredHeight = paddingTop2;
                        } else {
                            measuredHeight = (paddingBottom - measuredHeight3) - ((LinearLayout.LayoutParams) c0617p02).bottomMargin;
                            if (baseline != -1) {
                                measuredHeight -= iArr2[2] - (childAt2.getMeasuredHeight() - baseline);
                            }
                        }
                        if (k(i34)) {
                            paddingLeft2 += this.n;
                        }
                        int i35 = paddingLeft2 + ((LinearLayout.LayoutParams) c0617p02).leftMargin;
                        childAt2.layout(i35, measuredHeight, i35 + measuredWidth2, measuredHeight + measuredHeight3);
                        paddingLeft2 = measuredWidth2 + ((LinearLayout.LayoutParams) c0617p02).rightMargin + i35;
                    } else {
                        i13 = virtualChildCount2;
                    }
                    i16 = ((LinearLayout.LayoutParams) c0617p02).gravity;
                    if (i16 < 0) {
                    }
                    i17 = i16 & 112;
                    i14 = i32;
                    if (i17 != 16) {
                    }
                    if (k(i34)) {
                    }
                    int i352 = paddingLeft2 + ((LinearLayout.LayoutParams) c0617p02).leftMargin;
                    childAt2.layout(i352, measuredHeight, i352 + measuredWidth2, measuredHeight + measuredHeight3);
                    paddingLeft2 = measuredWidth2 + ((LinearLayout.LayoutParams) c0617p02).rightMargin + i352;
                } else {
                    i12 = i9;
                    i13 = virtualChildCount2;
                    i14 = i32;
                }
                i15 = 1;
            }
            i33 += i15;
            i10 = i11;
            i9 = i12;
            virtualChildCount2 = i13;
            i32 = i14;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:153:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x048b  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x04b8  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x04cc  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04de  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x04f2  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0537  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0548  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0550  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x055b  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x05e4  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0691  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0698  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x06b4  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x07cb  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0806  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x083d  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x0860  */
    /* JADX WARN: Removed duplicated region for block: B:442:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i5, int i6) {
        char c2;
        int i7;
        int iMax;
        float f;
        int i8;
        int i9;
        int i10;
        int i11;
        char c5;
        int i12;
        int i13;
        int i14;
        int i15;
        float f5;
        int i16;
        int i17;
        int baseline;
        int i18;
        int i19;
        float f6;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        boolean z4;
        boolean z5;
        C0617p0 c0617p0;
        boolean z6;
        int i25;
        boolean z7;
        int i26;
        int i27;
        int baseline2;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        boolean z8;
        C0617p0 c0617p02;
        boolean z9;
        int i37;
        boolean z10;
        int iMax2;
        int i38 = -2;
        int i39 = 1073741824;
        int i40 = 8;
        int i41 = Integer.MIN_VALUE;
        float f7 = 0.0f;
        boolean z11 = true;
        if (this.f == 1) {
            this.f7964h = 0;
            int virtualChildCount = getVirtualChildCount();
            int mode = View.MeasureSpec.getMode(i5);
            int mode2 = View.MeasureSpec.getMode(i6);
            int i42 = this.f7961d;
            boolean z12 = this.f7966j;
            boolean z13 = true;
            int i43 = 0;
            int iMax3 = 0;
            int iMax4 = 0;
            boolean z14 = false;
            int iMax5 = 0;
            int i44 = 0;
            int i45 = 0;
            boolean z15 = false;
            float f8 = 0.0f;
            while (i43 < virtualChildCount) {
                View childAt = getChildAt(i43);
                if (childAt == null) {
                    this.f7964h = this.f7964h;
                } else {
                    if (childAt.getVisibility() != i40) {
                        if (k(i43)) {
                            this.f7964h += this.f7970o;
                        }
                        C0617p0 c0617p03 = (C0617p0) childAt.getLayoutParams();
                        float f9 = ((LinearLayout.LayoutParams) c0617p03).weight;
                        f8 += f9;
                        if (mode2 == i39 && ((LinearLayout.LayoutParams) c0617p03).height == 0 && f9 > f7) {
                            int i46 = this.f7964h;
                            this.f7964h = Math.max(i46, ((LinearLayout.LayoutParams) c0617p03).topMargin + i46 + ((LinearLayout.LayoutParams) c0617p03).bottomMargin);
                            i33 = i42;
                            i34 = mode2;
                            i35 = mode;
                            i36 = virtualChildCount;
                            c0617p02 = c0617p03;
                            z9 = true;
                            z8 = true;
                        } else {
                            if (((LinearLayout.LayoutParams) c0617p03).height != 0 || f9 <= f7) {
                                i32 = i41;
                            } else {
                                ((LinearLayout.LayoutParams) c0617p03).height = i38;
                                i32 = 0;
                            }
                            int i47 = f8 == f7 ? this.f7964h : 0;
                            i33 = i42;
                            i34 = mode2;
                            i35 = mode;
                            i36 = virtualChildCount;
                            z8 = true;
                            c0617p02 = c0617p03;
                            measureChildWithMargins(childAt, i5, 0, i6, i47);
                            if (i32 != i41) {
                                ((LinearLayout.LayoutParams) c0617p02).height = i32;
                            }
                            int measuredHeight = childAt.getMeasuredHeight();
                            int i48 = this.f7964h;
                            this.f7964h = Math.max(i48, i48 + measuredHeight + ((LinearLayout.LayoutParams) c0617p02).topMargin + ((LinearLayout.LayoutParams) c0617p02).bottomMargin);
                            int i49 = iMax5;
                            if (z12) {
                                iMax5 = Math.max(measuredHeight, i49);
                            }
                            z9 = z14;
                        }
                        if (i33 >= 0 && i33 == i43 + 1) {
                            this.f7962e = this.f7964h;
                        }
                        if (i43 < i33 && ((LinearLayout.LayoutParams) c0617p02).weight > 0.0f) {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                        i37 = i35;
                        if (i37 == 1073741824 || ((LinearLayout.LayoutParams) c0617p02).width != -1) {
                            z10 = false;
                        } else {
                            z10 = z8;
                            z15 = z10;
                        }
                        int i50 = ((LinearLayout.LayoutParams) c0617p02).leftMargin + ((LinearLayout.LayoutParams) c0617p02).rightMargin;
                        int measuredWidth = childAt.getMeasuredWidth() + i50;
                        iMax2 = Math.max(i44, measuredWidth);
                        int iCombineMeasuredStates = View.combineMeasuredStates(i45, childAt.getMeasuredState());
                        boolean z16 = (z13 && ((LinearLayout.LayoutParams) c0617p02).width == -1) ? z8 : false;
                        if (((LinearLayout.LayoutParams) c0617p02).weight > 0.0f) {
                            if (!z10) {
                                i50 = measuredWidth;
                            }
                            iMax4 = Math.max(iMax4, i50);
                        } else {
                            int i51 = iMax4;
                            if (!z10) {
                                i50 = measuredWidth;
                            }
                            iMax3 = Math.max(iMax3, i50);
                            iMax4 = i51;
                        }
                        z14 = z9;
                        i45 = iCombineMeasuredStates;
                        z13 = z16;
                    }
                    i43++;
                    mode = i37;
                    i44 = iMax2;
                    i42 = i33;
                    z11 = z8;
                    mode2 = i34;
                    virtualChildCount = i36;
                    i38 = -2;
                    i39 = 1073741824;
                    i40 = 8;
                    i41 = Integer.MIN_VALUE;
                    f7 = 0.0f;
                }
                i33 = i42;
                i34 = mode2;
                i37 = mode;
                i36 = virtualChildCount;
                iMax2 = i44;
                z8 = true;
                i43++;
                mode = i37;
                i44 = iMax2;
                i42 = i33;
                z11 = z8;
                mode2 = i34;
                virtualChildCount = i36;
                i38 = -2;
                i39 = 1073741824;
                i40 = 8;
                i41 = Integer.MIN_VALUE;
                f7 = 0.0f;
            }
            int i52 = mode2;
            int i53 = mode;
            int i54 = virtualChildCount;
            boolean z17 = z11;
            int iMax6 = iMax3;
            int i55 = iMax4;
            int i56 = iMax5;
            int i57 = i44;
            int iCombineMeasuredStates2 = i45;
            if (this.f7964h > 0 && k(i54)) {
                this.f7964h += this.f7970o;
            }
            int i58 = i52;
            if (z12 && (i58 == Integer.MIN_VALUE || i58 == 0)) {
                this.f7964h = 0;
                for (int i59 = 0; i59 < i54; i59++) {
                    View childAt2 = getChildAt(i59);
                    if (childAt2 == null) {
                        this.f7964h = this.f7964h;
                    } else if (childAt2.getVisibility() != 8) {
                        C0617p0 c0617p04 = (C0617p0) childAt2.getLayoutParams();
                        int i60 = this.f7964h;
                        this.f7964h = Math.max(i60, i60 + i56 + ((LinearLayout.LayoutParams) c0617p04).topMargin + ((LinearLayout.LayoutParams) c0617p04).bottomMargin);
                    }
                }
            }
            int paddingBottom = getPaddingBottom() + getPaddingTop() + this.f7964h;
            this.f7964h = paddingBottom;
            int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i6, 0);
            int i61 = (16777215 & iResolveSizeAndState) - this.f7964h;
            if (z14 || (i61 != 0 && f8 > 0.0f)) {
                float f10 = this.f7965i;
                if (f10 > 0.0f) {
                    f8 = f10;
                }
                this.f7964h = 0;
                int i62 = 0;
                while (i62 < i54) {
                    View childAt3 = getChildAt(i62);
                    if (childAt3.getVisibility() == 8) {
                        i29 = i58;
                    } else {
                        C0617p0 c0617p05 = (C0617p0) childAt3.getLayoutParams();
                        float f11 = ((LinearLayout.LayoutParams) c0617p05).weight;
                        if (f11 > 0.0f) {
                            int i63 = (int) ((i61 * f11) / f8);
                            f8 -= f11;
                            int i64 = i61 - i63;
                            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i5, getPaddingRight() + getPaddingLeft() + ((LinearLayout.LayoutParams) c0617p05).leftMargin + ((LinearLayout.LayoutParams) c0617p05).rightMargin, ((LinearLayout.LayoutParams) c0617p05).width);
                            if (((LinearLayout.LayoutParams) c0617p05).height == 0) {
                                i31 = 1073741824;
                                if (i58 == 1073741824) {
                                    if (i63 <= 0) {
                                        i63 = 0;
                                    }
                                    childAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i63, 1073741824));
                                }
                                iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, childAt3.getMeasuredState() & (-256));
                                i61 = i64;
                            } else {
                                i31 = 1073741824;
                            }
                            int measuredHeight2 = childAt3.getMeasuredHeight() + i63;
                            if (measuredHeight2 < 0) {
                                measuredHeight2 = 0;
                            }
                            childAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, i31));
                            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, childAt3.getMeasuredState() & (-256));
                            i61 = i64;
                        }
                        int i65 = ((LinearLayout.LayoutParams) c0617p05).leftMargin + ((LinearLayout.LayoutParams) c0617p05).rightMargin;
                        int measuredWidth2 = childAt3.getMeasuredWidth() + i65;
                        int iMax7 = Math.max(i57, measuredWidth2);
                        if (i53 != 1073741824) {
                            i29 = i58;
                            i30 = -1;
                            if (((LinearLayout.LayoutParams) c0617p05).width != -1) {
                            }
                            iMax6 = Math.max(iMax6, i65);
                            boolean z18 = (z13 || ((LinearLayout.LayoutParams) c0617p05).width != i30) ? false : z17;
                            int i66 = this.f7964h;
                            this.f7964h = Math.max(i66, childAt3.getMeasuredHeight() + i66 + ((LinearLayout.LayoutParams) c0617p05).topMargin + ((LinearLayout.LayoutParams) c0617p05).bottomMargin);
                            z13 = z18;
                            i57 = iMax7;
                        } else {
                            i29 = i58;
                            i30 = -1;
                        }
                        i65 = measuredWidth2;
                        iMax6 = Math.max(iMax6, i65);
                        if (z13) {
                            int i662 = this.f7964h;
                            this.f7964h = Math.max(i662, childAt3.getMeasuredHeight() + i662 + ((LinearLayout.LayoutParams) c0617p05).topMargin + ((LinearLayout.LayoutParams) c0617p05).bottomMargin);
                            z13 = z18;
                            i57 = iMax7;
                        }
                    }
                    i62++;
                    i58 = i29;
                }
                this.f7964h = getPaddingBottom() + getPaddingTop() + this.f7964h;
            } else {
                iMax6 = Math.max(iMax6, i55);
                if (z12 && i58 != 1073741824) {
                    for (int i67 = 0; i67 < i54; i67++) {
                        View childAt4 = getChildAt(i67);
                        if (childAt4 != null && childAt4.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((C0617p0) childAt4.getLayoutParams())).weight > 0.0f) {
                            childAt4.measure(View.MeasureSpec.makeMeasureSpec(childAt4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i56, 1073741824));
                        }
                    }
                }
            }
            int i68 = i57;
            if (z13 || i53 == 1073741824) {
                iMax6 = i68;
            }
            setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax6, getSuggestedMinimumWidth()), i5, iCombineMeasuredStates2), iResolveSizeAndState);
            if (z15) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
                for (int i69 = 0; i69 < i54; i69++) {
                    View childAt5 = getChildAt(i69);
                    if (childAt5.getVisibility() != 8) {
                        C0617p0 c0617p06 = (C0617p0) childAt5.getLayoutParams();
                        if (((LinearLayout.LayoutParams) c0617p06).width == -1) {
                            int i70 = ((LinearLayout.LayoutParams) c0617p06).height;
                            ((LinearLayout.LayoutParams) c0617p06).height = childAt5.getMeasuredHeight();
                            measureChildWithMargins(childAt5, iMakeMeasureSpec, 0, i6, 0);
                            ((LinearLayout.LayoutParams) c0617p06).height = i70;
                        }
                    }
                }
                return;
            }
            return;
        }
        this.f7964h = 0;
        int virtualChildCount2 = getVirtualChildCount();
        int mode3 = View.MeasureSpec.getMode(i5);
        int mode4 = View.MeasureSpec.getMode(i6);
        if (this.f7967k == null || this.f7968l == null) {
            this.f7967k = new int[4];
            this.f7968l = new int[4];
        }
        int[] iArr = this.f7967k;
        int[] iArr2 = this.f7968l;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z19 = this.f7960c;
        boolean z20 = this.f7966j;
        boolean z21 = mode3 == 1073741824;
        boolean z22 = true;
        int iMax8 = 0;
        float f12 = 0.0f;
        int i71 = 0;
        int i72 = 0;
        int i73 = 0;
        int iMax9 = 0;
        int iMax10 = 0;
        boolean z23 = false;
        boolean z24 = false;
        while (i72 < virtualChildCount2) {
            View childAt6 = getChildAt(i72);
            if (childAt6 == null) {
                this.f7964h = this.f7964h;
                i24 = i72;
                z4 = z20;
                z5 = z19;
            } else {
                int i74 = iMax8;
                int i75 = i71;
                if (childAt6.getVisibility() == 8) {
                    z5 = z19;
                    iMax8 = i74;
                    i71 = i75;
                    i24 = i72;
                    z4 = z20;
                } else {
                    if (k(i72)) {
                        this.f7964h += this.n;
                    }
                    C0617p0 c0617p07 = (C0617p0) childAt6.getLayoutParams();
                    float f13 = ((LinearLayout.LayoutParams) c0617p07).weight;
                    float f14 = f12 + f13;
                    if (mode3 == 1073741824 && ((LinearLayout.LayoutParams) c0617p07).width == 0 && f13 > 0.0f) {
                        if (z21) {
                            i28 = i72;
                            this.f7964h = ((LinearLayout.LayoutParams) c0617p07).leftMargin + ((LinearLayout.LayoutParams) c0617p07).rightMargin + this.f7964h;
                        } else {
                            i28 = i72;
                            int i76 = this.f7964h;
                            this.f7964h = Math.max(i76, ((LinearLayout.LayoutParams) c0617p07).leftMargin + i76 + ((LinearLayout.LayoutParams) c0617p07).rightMargin);
                        }
                        if (z19) {
                            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                            childAt6.measure(iMakeMeasureSpec2, iMakeMeasureSpec2);
                            c0617p0 = c0617p07;
                            i21 = i74;
                            i22 = i75;
                            i24 = i28;
                            z4 = z20;
                            z5 = z19;
                        } else {
                            c0617p0 = c0617p07;
                            i21 = i74;
                            i22 = i75;
                            i24 = i28;
                            i25 = 1073741824;
                            z4 = z20;
                            z5 = z19;
                            z6 = true;
                            if (mode4 == i25 && ((LinearLayout.LayoutParams) c0617p0).height == -1) {
                                z7 = true;
                                z24 = true;
                            } else {
                                z7 = false;
                            }
                            i26 = ((LinearLayout.LayoutParams) c0617p0).topMargin + ((LinearLayout.LayoutParams) c0617p0).bottomMargin;
                            int measuredHeight3 = childAt6.getMeasuredHeight() + i26;
                            int iCombineMeasuredStates3 = View.combineMeasuredStates(i73, childAt6.getMeasuredState());
                            if (z5 || (baseline2 = childAt6.getBaseline()) == -1) {
                                i27 = i26;
                            } else {
                                int i77 = ((LinearLayout.LayoutParams) c0617p0).gravity;
                                if (i77 < 0) {
                                    i77 = this.f7963g;
                                }
                                int i78 = (((i77 & 112) >> 4) & (-2)) >> 1;
                                i27 = i26;
                                iArr[i78] = Math.max(iArr[i78], baseline2);
                                iArr2[i78] = Math.max(iArr2[i78], measuredHeight3 - baseline2);
                            }
                            int iMax11 = Math.max(i22, measuredHeight3);
                            boolean z25 = !z22 && ((LinearLayout.LayoutParams) c0617p0).height == -1;
                            if (((LinearLayout.LayoutParams) c0617p0).weight <= 0.0f) {
                                if (z7) {
                                    measuredHeight3 = i27;
                                }
                                iMax10 = Math.max(iMax10, measuredHeight3);
                                iMax8 = i21;
                            } else {
                                if (z7) {
                                    measuredHeight3 = i27;
                                }
                                iMax8 = Math.max(i21, measuredHeight3);
                            }
                            i71 = iMax11;
                            i73 = iCombineMeasuredStates3;
                            z23 = z6;
                            z22 = z25;
                            f12 = f14;
                        }
                    } else {
                        int i79 = i72;
                        if (((LinearLayout.LayoutParams) c0617p07).width == 0) {
                            f6 = 0.0f;
                            if (f13 > 0.0f) {
                                ((LinearLayout.LayoutParams) c0617p07).width = -2;
                                i20 = 0;
                            }
                            i21 = i74;
                            i22 = i75;
                            i23 = i20;
                            i24 = i79;
                            z4 = z20;
                            z5 = z19;
                            measureChildWithMargins(childAt6, i5, f14 != f6 ? this.f7964h : 0, i6, 0);
                            if (i23 == Integer.MIN_VALUE) {
                                c0617p0 = c0617p07;
                                ((LinearLayout.LayoutParams) c0617p0).width = i23;
                            } else {
                                c0617p0 = c0617p07;
                            }
                            int measuredWidth3 = childAt6.getMeasuredWidth();
                            if (z21) {
                                int i80 = this.f7964h;
                                this.f7964h = Math.max(i80, i80 + measuredWidth3 + ((LinearLayout.LayoutParams) c0617p0).leftMargin + ((LinearLayout.LayoutParams) c0617p0).rightMargin);
                            } else {
                                this.f7964h = ((LinearLayout.LayoutParams) c0617p0).leftMargin + measuredWidth3 + ((LinearLayout.LayoutParams) c0617p0).rightMargin + this.f7964h;
                            }
                            if (z4) {
                                iMax9 = Math.max(measuredWidth3, iMax9);
                            }
                        } else {
                            f6 = 0.0f;
                        }
                        i20 = Integer.MIN_VALUE;
                        i21 = i74;
                        i22 = i75;
                        i23 = i20;
                        i24 = i79;
                        z4 = z20;
                        z5 = z19;
                        measureChildWithMargins(childAt6, i5, f14 != f6 ? this.f7964h : 0, i6, 0);
                        if (i23 == Integer.MIN_VALUE) {
                        }
                        int measuredWidth32 = childAt6.getMeasuredWidth();
                        if (z21) {
                        }
                        if (z4) {
                        }
                    }
                    z6 = z23;
                    i25 = 1073741824;
                    if (mode4 == i25) {
                        z7 = false;
                        i26 = ((LinearLayout.LayoutParams) c0617p0).topMargin + ((LinearLayout.LayoutParams) c0617p0).bottomMargin;
                        int measuredHeight32 = childAt6.getMeasuredHeight() + i26;
                        int iCombineMeasuredStates32 = View.combineMeasuredStates(i73, childAt6.getMeasuredState());
                        if (z5) {
                            i27 = i26;
                            int iMax112 = Math.max(i22, measuredHeight32);
                            if (z22) {
                                if (((LinearLayout.LayoutParams) c0617p0).weight <= 0.0f) {
                                }
                                i71 = iMax112;
                                i73 = iCombineMeasuredStates32;
                                z23 = z6;
                                z22 = z25;
                                f12 = f14;
                            }
                        }
                    }
                }
            }
            i72 = i24 + 1;
            z20 = z4;
            z19 = z5;
        }
        int i81 = i71;
        boolean z26 = z20;
        boolean z27 = z19;
        if (this.f7964h > 0 && k(virtualChildCount2)) {
            this.f7964h += this.n;
        }
        int i82 = iArr[1];
        if (i82 == -1 && iArr[0] == -1 && iArr[2] == -1) {
            c2 = 3;
            if (iArr[3] == -1) {
                iMax = i81;
                i7 = i73;
            }
            if (z26 && (mode3 == Integer.MIN_VALUE || mode3 == 0)) {
                this.f7964h = 0;
                for (i19 = 0; i19 < virtualChildCount2; i19++) {
                    View childAt7 = getChildAt(i19);
                    if (childAt7 == null) {
                        this.f7964h = this.f7964h;
                    } else if (childAt7.getVisibility() != 8) {
                        C0617p0 c0617p08 = (C0617p0) childAt7.getLayoutParams();
                        if (z21) {
                            this.f7964h = ((LinearLayout.LayoutParams) c0617p08).leftMargin + iMax9 + ((LinearLayout.LayoutParams) c0617p08).rightMargin + this.f7964h;
                        } else {
                            int i83 = this.f7964h;
                            this.f7964h = Math.max(i83, i83 + iMax9 + ((LinearLayout.LayoutParams) c0617p08).leftMargin + ((LinearLayout.LayoutParams) c0617p08).rightMargin);
                        }
                    }
                }
            }
            int paddingRight = getPaddingRight() + getPaddingLeft() + this.f7964h;
            this.f7964h = paddingRight;
            int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i5, 0);
            int i84 = (16777215 & iResolveSizeAndState2) - this.f7964h;
            if (!z23 || (i84 != 0 && f12 > 0.0f)) {
                f = this.f7965i;
                if (f > 0.0f) {
                    f12 = f;
                }
                iArr[3] = -1;
                iArr[2] = -1;
                iArr[1] = -1;
                iArr[0] = -1;
                iArr2[3] = -1;
                iArr2[2] = -1;
                iArr2[1] = -1;
                iArr2[0] = -1;
                this.f7964h = 0;
                int iCombineMeasuredStates4 = i7;
                iMax = -1;
                i8 = 0;
                while (i8 < virtualChildCount2) {
                    View childAt8 = getChildAt(i8);
                    if (childAt8 == null || childAt8.getVisibility() == 8) {
                        i13 = i84;
                        i14 = virtualChildCount2;
                    } else {
                        C0617p0 c0617p09 = (C0617p0) childAt8.getLayoutParams();
                        float f15 = ((LinearLayout.LayoutParams) c0617p09).weight;
                        if (f15 > 0.0f) {
                            i14 = virtualChildCount2;
                            int i85 = (int) ((i84 * f15) / f12);
                            float f16 = f12 - f15;
                            int i86 = i84 - i85;
                            int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i6, getPaddingBottom() + getPaddingTop() + ((LinearLayout.LayoutParams) c0617p09).topMargin + ((LinearLayout.LayoutParams) c0617p09).bottomMargin, ((LinearLayout.LayoutParams) c0617p09).height);
                            if (((LinearLayout.LayoutParams) c0617p09).width == 0) {
                                i18 = 1073741824;
                                if (mode3 == 1073741824) {
                                    if (i85 <= 0) {
                                        i85 = 0;
                                    }
                                    childAt8.measure(View.MeasureSpec.makeMeasureSpec(i85, 1073741824), childMeasureSpec2);
                                }
                                iCombineMeasuredStates4 = View.combineMeasuredStates(iCombineMeasuredStates4, childAt8.getMeasuredState() & (-16777216));
                                f12 = f16;
                                i15 = i86;
                            } else {
                                i18 = 1073741824;
                            }
                            int measuredWidth4 = childAt8.getMeasuredWidth() + i85;
                            if (measuredWidth4 < 0) {
                                measuredWidth4 = 0;
                            }
                            childAt8.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth4, i18), childMeasureSpec2);
                            iCombineMeasuredStates4 = View.combineMeasuredStates(iCombineMeasuredStates4, childAt8.getMeasuredState() & (-16777216));
                            f12 = f16;
                            i15 = i86;
                        } else {
                            i15 = i84;
                            i14 = virtualChildCount2;
                        }
                        if (z21) {
                            f5 = f12;
                            this.f7964h = childAt8.getMeasuredWidth() + ((LinearLayout.LayoutParams) c0617p09).leftMargin + ((LinearLayout.LayoutParams) c0617p09).rightMargin + this.f7964h;
                            i16 = i15;
                        } else {
                            f5 = f12;
                            int i87 = this.f7964h;
                            i16 = i15;
                            this.f7964h = Math.max(i87, childAt8.getMeasuredWidth() + i87 + ((LinearLayout.LayoutParams) c0617p09).leftMargin + ((LinearLayout.LayoutParams) c0617p09).rightMargin);
                        }
                        boolean z28 = mode4 != 1073741824 && ((LinearLayout.LayoutParams) c0617p09).height == -1;
                        int i88 = ((LinearLayout.LayoutParams) c0617p09).topMargin + ((LinearLayout.LayoutParams) c0617p09).bottomMargin;
                        int measuredHeight4 = childAt8.getMeasuredHeight() + i88;
                        iMax = Math.max(iMax, measuredHeight4);
                        if (!z28) {
                            i88 = measuredHeight4;
                        }
                        iMax8 = Math.max(iMax8, i88);
                        if (z22) {
                            i17 = -1;
                            boolean z29 = ((LinearLayout.LayoutParams) c0617p09).height == -1;
                            if (!z27 && (baseline = childAt8.getBaseline()) != i17) {
                                int i89 = ((LinearLayout.LayoutParams) c0617p09).gravity;
                                if (i89 < 0) {
                                    i89 = this.f7963g;
                                }
                                int i90 = (((i89 & 112) >> 4) & (-2)) >> 1;
                                iArr[i90] = Math.max(iArr[i90], baseline);
                                iArr2[i90] = Math.max(iArr2[i90], measuredHeight4 - baseline);
                            }
                            z22 = z29;
                            i13 = i16;
                            f12 = f5;
                        } else {
                            i17 = -1;
                        }
                        if (!z27) {
                            z22 = z29;
                            i13 = i16;
                            f12 = f5;
                        }
                    }
                    i8++;
                    i84 = i13;
                    virtualChildCount2 = i14;
                }
                i9 = i6;
                i10 = virtualChildCount2;
                this.f7964h = getPaddingRight() + getPaddingLeft() + this.f7964h;
                i11 = iArr[1];
                if (i11 != -1 && iArr[0] == -1 && iArr[2] == -1) {
                    c5 = 3;
                    if (iArr[3] == -1) {
                        i12 = 0;
                    }
                    i7 = iCombineMeasuredStates4;
                } else {
                    c5 = 3;
                }
                i12 = 0;
                iMax = Math.max(iMax, Math.max(iArr2[c5], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c5], Math.max(iArr[0], Math.max(i11, iArr[2]))));
                i7 = iCombineMeasuredStates4;
            } else {
                iMax8 = Math.max(iMax8, iMax10);
                if (z26 && mode3 != 1073741824) {
                    for (int i91 = 0; i91 < virtualChildCount2; i91++) {
                        View childAt9 = getChildAt(i91);
                        if (childAt9 != null && childAt9.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((C0617p0) childAt9.getLayoutParams())).weight > 0.0f) {
                            childAt9.measure(View.MeasureSpec.makeMeasureSpec(iMax9, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt9.getMeasuredHeight(), 1073741824));
                        }
                    }
                }
                i9 = i6;
                i10 = virtualChildCount2;
                i12 = 0;
            }
            if (!z22 || mode4 == 1073741824) {
                iMax8 = iMax;
            }
            setMeasuredDimension((i7 & (-16777216)) | iResolveSizeAndState2, View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax8, getSuggestedMinimumHeight()), i9, i7 << 16));
            if (z24) {
                return;
            }
            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
            int i92 = i10;
            while (i12 < i92) {
                View childAt10 = getChildAt(i12);
                if (childAt10.getVisibility() != 8) {
                    C0617p0 c0617p010 = (C0617p0) childAt10.getLayoutParams();
                    if (((LinearLayout.LayoutParams) c0617p010).height == -1) {
                        int i93 = ((LinearLayout.LayoutParams) c0617p010).width;
                        ((LinearLayout.LayoutParams) c0617p010).width = childAt10.getMeasuredWidth();
                        measureChildWithMargins(childAt10, i5, 0, iMakeMeasureSpec3, 0);
                        ((LinearLayout.LayoutParams) c0617p010).width = i93;
                    }
                }
                i12++;
            }
            return;
        }
        c2 = 3;
        i7 = i73;
        iMax = Math.max(i81, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c2], Math.max(iArr[0], Math.max(i82, iArr[2]))));
        if (z26) {
            this.f7964h = 0;
            while (i19 < virtualChildCount2) {
            }
        }
        int paddingRight2 = getPaddingRight() + getPaddingLeft() + this.f7964h;
        this.f7964h = paddingRight2;
        int iResolveSizeAndState22 = View.resolveSizeAndState(Math.max(paddingRight2, getSuggestedMinimumWidth()), i5, 0);
        int i842 = (16777215 & iResolveSizeAndState22) - this.f7964h;
        if (z23) {
            f = this.f7965i;
            if (f > 0.0f) {
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            this.f7964h = 0;
            int iCombineMeasuredStates42 = i7;
            iMax = -1;
            i8 = 0;
            while (i8 < virtualChildCount2) {
            }
            i9 = i6;
            i10 = virtualChildCount2;
            this.f7964h = getPaddingRight() + getPaddingLeft() + this.f7964h;
            i11 = iArr[1];
            if (i11 != -1) {
                c5 = 3;
                i12 = 0;
                iMax = Math.max(iMax, Math.max(iArr2[c5], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c5], Math.max(iArr[0], Math.max(i11, iArr[2]))));
                i7 = iCombineMeasuredStates42;
            }
        }
        if (!z22) {
            iMax8 = iMax;
        }
        setMeasuredDimension((i7 & (-16777216)) | iResolveSizeAndState22, View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax8, getSuggestedMinimumHeight()), i9, i7 << 16));
        if (z24) {
        }
    }

    public void setBaselineAligned(boolean z4) {
        this.f7960c = z4;
    }

    public void setBaselineAlignedChildIndex(int i5) {
        if (i5 >= 0 && i5 < getChildCount()) {
            this.f7961d = i5;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f7969m) {
            return;
        }
        this.f7969m = drawable;
        if (drawable != null) {
            this.n = drawable.getIntrinsicWidth();
            this.f7970o = drawable.getIntrinsicHeight();
        } else {
            this.n = 0;
            this.f7970o = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i5) {
        this.f7972q = i5;
    }

    public void setGravity(int i5) {
        if (this.f7963g != i5) {
            if ((8388615 & i5) == 0) {
                i5 |= 8388611;
            }
            if ((i5 & 112) == 0) {
                i5 |= 48;
            }
            this.f7963g = i5;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i5) {
        int i6 = i5 & 8388615;
        int i7 = this.f7963g;
        if ((8388615 & i7) != i6) {
            this.f7963g = i6 | ((-8388616) & i7);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z4) {
        this.f7966j = z4;
    }

    public void setOrientation(int i5) {
        if (this.f != i5) {
            this.f = i5;
            requestLayout();
        }
    }

    public void setShowDividers(int i5) {
        if (i5 != this.f7971p) {
            requestLayout();
        }
        this.f7971p = i5;
    }

    public void setVerticalGravity(int i5) {
        int i6 = i5 & 112;
        int i7 = this.f7963g;
        if ((i7 & 112) != i6) {
            this.f7963g = i6 | (i7 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f7965i = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
