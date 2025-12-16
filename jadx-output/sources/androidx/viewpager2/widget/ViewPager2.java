package androidx.viewpager2.widget;

import G0.a;
import H0.b;
import H0.c;
import H0.d;
import H0.e;
import H0.g;
import H0.i;
import H0.j;
import H0.l;
import H0.m;
import H0.n;
import H0.o;
import J.Q;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.PathInterpolator;
import androidx.emoji2.text.f;
import com.google.firebase.messaging.p;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import j0.AbstractC0526A;
import j0.C0550w;
import j0.F;
import j0.J;
import java.util.ArrayList;
import java.util.WeakHashMap;
import s2.C0837c;

/* loaded from: classes.dex */
public final class ViewPager2 extends ViewGroup {

    /* renamed from: C, reason: collision with root package name */
    public static final PathInterpolator f5026C = new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f);

    /* renamed from: A, reason: collision with root package name */
    public int f5027A;

    /* renamed from: B, reason: collision with root package name */
    public f f5028B;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f5029c;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f5030d;

    /* renamed from: e, reason: collision with root package name */
    public final H0.f f5031e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5032g;

    /* renamed from: h, reason: collision with root package name */
    public final e f5033h;

    /* renamed from: i, reason: collision with root package name */
    public final i f5034i;

    /* renamed from: j, reason: collision with root package name */
    public int f5035j;

    /* renamed from: k, reason: collision with root package name */
    public Parcelable f5036k;

    /* renamed from: l, reason: collision with root package name */
    public final n f5037l;

    /* renamed from: m, reason: collision with root package name */
    public final m f5038m;
    public final d n;

    /* renamed from: o, reason: collision with root package name */
    public final H0.f f5039o;

    /* renamed from: p, reason: collision with root package name */
    public final C0837c f5040p;

    /* renamed from: q, reason: collision with root package name */
    public final b f5041q;

    /* renamed from: r, reason: collision with root package name */
    public F f5042r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f5043s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f5044t;

    /* renamed from: u, reason: collision with root package name */
    public int f5045u;

    /* renamed from: v, reason: collision with root package name */
    public final p f5046v;

    /* renamed from: w, reason: collision with root package name */
    public ValueAnimator f5047w;

    /* renamed from: x, reason: collision with root package name */
    public ValueAnimator f5048x;

    /* renamed from: y, reason: collision with root package name */
    public float f5049y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f5050z;

    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5029c = new Rect();
        this.f5030d = new Rect();
        H0.f fVar = new H0.f();
        this.f5031e = fVar;
        int i5 = 0;
        this.f5032g = false;
        this.f5033h = new e(i5, this);
        this.f5035j = -1;
        this.f5042r = null;
        this.f5043s = false;
        int i6 = 1;
        this.f5044t = true;
        this.f5045u = -1;
        this.f5049y = 1.0f;
        this.f5050z = false;
        this.f5027A = 0;
        this.f5046v = new p(this);
        n nVar = new n(this, context);
        this.f5037l = nVar;
        WeakHashMap weakHashMap = Q.f940a;
        nVar.setId(View.generateViewId());
        this.f5037l.setDescendantFocusability(NetworkAnalyticsConstants.DataPoints.FLAG_PPID);
        i iVar = new i(this);
        this.f5034i = iVar;
        this.f5037l.setLayoutManager(iVar);
        this.f5037l.setScrollingTouchSlop(1);
        int[] iArr = a.f805a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        saveAttributeDataForStyleable(context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        try {
            setOrientation(typedArrayObtainStyledAttributes.getInt(0, 0));
            typedArrayObtainStyledAttributes.recycle();
            this.f5037l.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            n nVar2 = this.f5037l;
            g gVar = new g();
            if (nVar2.E == null) {
                nVar2.E = new ArrayList();
            }
            nVar2.E.add(gVar);
            d dVar = new d(this);
            this.n = dVar;
            this.f5040p = new C0837c(dVar);
            m mVar = new m(this);
            this.f5038m = mVar;
            mVar.a(this.f5037l);
            this.f5037l.k(this.n);
            H0.f fVar2 = new H0.f();
            this.f5039o = fVar2;
            this.n.f833a = fVar2;
            H0.f fVar3 = new H0.f(this, i5);
            H0.f fVar4 = new H0.f(this, i6);
            ((ArrayList) fVar2.f848b).add(fVar3);
            ((ArrayList) this.f5039o.f848b).add(fVar4);
            this.f5046v.E(this.f5037l);
            ((ArrayList) this.f5039o.f848b).add(fVar);
            b bVar = new b();
            this.f5041q = bVar;
            ((ArrayList) this.f5039o.f848b).add(bVar);
            n nVar3 = this.f5037l;
            attachViewToParent(nVar3, 0, nVar3.getLayoutParams());
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public static void a(ViewPager2 viewPager2) {
        View viewE;
        m mVar = viewPager2.f5038m;
        if (mVar == null || (viewE = mVar.e(viewPager2.f5034i)) == null) {
            return;
        }
        int iIndexOfChild = viewPager2.f5037l.indexOfChild(viewE);
        i iVar = viewPager2.f5034i;
        f fVar = viewPager2.f5028B;
        if (fVar == null || ((J) fVar.f3692b) != iVar) {
            viewPager2.f5028B = new C0550w(iVar, 0);
        }
        f fVar2 = viewPager2.f5028B;
        viewPager2.f5028B = fVar2;
        int iE = fVar2.e(viewE);
        View childAt = viewPager2.f5037l.getChildAt(iE < 0 ? iIndexOfChild + 1 : iIndexOfChild - 1);
        int i5 = iE < 0 ? iE * (-1) : iE;
        float width = ((((viewE.getWidth() - i5) / viewE.getWidth()) * 0.1f) + 0.9f) * viewPager2.f5049y;
        float f = i5;
        float width2 = (((f / viewE.getWidth()) * 0.1f) + 0.9f) * viewPager2.f5049y;
        float f5 = iE > 0 ? -4 : 4;
        float width3 = ((viewE.getWidth() - i5) / viewE.getWidth()) * f5;
        viewE.setScaleX(width);
        viewE.setScaleY(width);
        viewE.setRotationY((f / viewE.getWidth()) * f5);
        if (childAt != null) {
            childAt.setScaleX(width2);
            childAt.setScaleY(width2);
            childAt.setRotationY(-width3);
        }
    }

    public final void b() {
        AbstractC0526A adapter;
        if (this.f5035j == -1 || (adapter = getAdapter()) == null) {
            return;
        }
        if (this.f5036k != null) {
            this.f5036k = null;
        }
        int iMax = Math.max(0, Math.min(this.f5035j, adapter.a() - 1));
        this.f = iMax;
        this.f5035j = -1;
        this.f5037l.v0(iMax);
        this.f5046v.L();
    }

    public final void c(int i5) {
        if (((d) this.f5040p.f9022c).f844m) {
            throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
        }
        d(i5);
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i5) {
        return this.f5037l.canScrollHorizontally(i5);
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i5) {
        return this.f5037l.canScrollVertically(i5);
    }

    public final void d(int i5) {
        j jVar;
        AbstractC0526A adapter = getAdapter();
        if (adapter == null) {
            if (this.f5035j != -1) {
                this.f5035j = Math.max(i5, 0);
                return;
            }
            return;
        }
        if (adapter.a() <= 0) {
            return;
        }
        int iMin = Math.min(Math.max(i5, 0), adapter.a() - 1);
        int i6 = this.f;
        if ((iMin == i6 && this.n.f == 0) || iMin == i6) {
            return;
        }
        double d2 = i6;
        this.f = iMin;
        this.f5046v.L();
        d dVar = this.n;
        if (dVar.f != 0) {
            dVar.e();
            c cVar = dVar.f838g;
            d2 = cVar.f830a + cVar.f831b;
        }
        d dVar2 = this.n;
        dVar2.getClass();
        dVar2.f837e = 2;
        dVar2.f844m = false;
        boolean z4 = dVar2.f840i != iMin;
        dVar2.f840i = iMin;
        dVar2.c(2);
        if (z4 && (jVar = dVar2.f833a) != null) {
            jVar.c(iMin);
        }
        double d5 = iMin;
        if (Math.abs(d5 - d2) <= 3.0d) {
            this.f5037l.B0(iMin);
            return;
        }
        this.f5037l.v0(d5 > d2 ? iMin - 3 : iMin + 3);
        n nVar = this.f5037l;
        nVar.post(new G.b(iMin, nVar));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        Parcelable parcelable = (Parcelable) sparseArray.get(getId());
        if (parcelable instanceof o) {
            int i5 = ((o) parcelable).f854c;
            sparseArray.put(this.f5037l.getId(), (Parcelable) sparseArray.get(i5));
            sparseArray.remove(i5);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        b();
    }

    public final void e() {
        m mVar = this.f5038m;
        if (mVar == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        View viewE = mVar.e(this.f5034i);
        if (viewE == null) {
            return;
        }
        this.f5034i.getClass();
        int iF = J.F(viewE);
        if (iF != this.f && getScrollState() == 0) {
            this.f5039o.c(iF);
        }
        this.f5032g = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        this.f5046v.getClass();
        this.f5046v.getClass();
        return "androidx.viewpager.widget.ViewPager";
    }

    public AbstractC0526A getAdapter() {
        return this.f5037l.getAdapter();
    }

    public int getCurrentItem() {
        return this.f;
    }

    public int getItemDecorationCount() {
        return this.f5037l.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.f5045u;
    }

    public int getOrientation() {
        return this.f5034i.f4759p;
    }

    public int getPageSize() {
        int height;
        int paddingBottom;
        n nVar = this.f5037l;
        if (getOrientation() == 0) {
            height = nVar.getWidth() - nVar.getPaddingLeft();
            paddingBottom = nVar.getPaddingRight();
        } else {
            height = nVar.getHeight() - nVar.getPaddingTop();
            paddingBottom = nVar.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public int getScrollState() {
        return this.n.f;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int iA;
        int iA2;
        int iA3;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        ViewPager2 viewPager2 = (ViewPager2) this.f5046v.f6260g;
        if (viewPager2.getAdapter() == null) {
            iA = 0;
            iA2 = 0;
        } else if (viewPager2.getOrientation() == 1) {
            iA = viewPager2.getAdapter().a();
            iA2 = 0;
        } else {
            iA2 = viewPager2.getAdapter().a();
            iA = 0;
        }
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(iA, iA2, false, 0));
        AbstractC0526A adapter = viewPager2.getAdapter();
        if (adapter == null || (iA3 = adapter.a()) == 0 || !viewPager2.f5044t) {
            return;
        }
        if (viewPager2.f > 0) {
            accessibilityNodeInfo.addAction(8192);
        }
        if (viewPager2.f < iA3 - 1) {
            accessibilityNodeInfo.addAction(4096);
        }
        accessibilityNodeInfo.setScrollable(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int measuredWidth = this.f5037l.getMeasuredWidth();
        int measuredHeight = this.f5037l.getMeasuredHeight();
        int paddingLeft = getPaddingLeft();
        Rect rect = this.f5029c;
        rect.left = paddingLeft;
        rect.right = (i7 - i5) - getPaddingRight();
        rect.top = getPaddingTop();
        rect.bottom = (i8 - i6) - getPaddingBottom();
        Rect rect2 = this.f5030d;
        Gravity.apply(8388659, measuredWidth, measuredHeight, rect, rect2);
        this.f5037l.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
        if (this.f5032g) {
            e();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i5, int i6) {
        measureChild(this.f5037l, i5, i6);
        int measuredWidth = this.f5037l.getMeasuredWidth();
        int measuredHeight = this.f5037l.getMeasuredHeight();
        int measuredState = this.f5037l.getMeasuredState();
        int paddingRight = getPaddingRight() + getPaddingLeft() + measuredWidth;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + measuredHeight;
        setMeasuredDimension(View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i5, measuredState), View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i6, measuredState << 16));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof o)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        o oVar = (o) parcelable;
        super.onRestoreInstanceState(oVar.getSuperState());
        this.f5035j = oVar.f855d;
        this.f5036k = oVar.f856e;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        o oVar = new o(super.onSaveInstanceState());
        oVar.f854c = this.f5037l.getId();
        int i5 = this.f5035j;
        if (i5 == -1) {
            i5 = this.f;
        }
        oVar.f855d = i5;
        Parcelable parcelable = this.f5036k;
        if (parcelable != null) {
            oVar.f856e = parcelable;
        } else {
            this.f5037l.getAdapter();
        }
        return oVar;
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        throw new IllegalStateException("ViewPager2 does not support direct child views");
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i5, Bundle bundle) {
        this.f5046v.getClass();
        if (i5 != 8192 && i5 != 4096) {
            return super.performAccessibilityAction(i5, bundle);
        }
        p pVar = this.f5046v;
        pVar.getClass();
        if (i5 != 8192 && i5 != 4096) {
            throw new IllegalStateException();
        }
        ViewPager2 viewPager2 = (ViewPager2) pVar.f6260g;
        int currentItem = i5 == 8192 ? viewPager2.getCurrentItem() - 1 : viewPager2.getCurrentItem() + 1;
        if (viewPager2.f5044t) {
            viewPager2.d(currentItem);
        }
        return true;
    }

    public void setAdapter(AbstractC0526A abstractC0526A) {
        AbstractC0526A adapter = this.f5037l.getAdapter();
        p pVar = this.f5046v;
        if (adapter != null) {
            adapter.f7327a.unregisterObserver((e) pVar.f);
        } else {
            pVar.getClass();
        }
        e eVar = this.f5033h;
        if (adapter != null) {
            adapter.f7327a.unregisterObserver(eVar);
        }
        this.f5037l.setAdapter(abstractC0526A);
        this.f = 0;
        b();
        p pVar2 = this.f5046v;
        pVar2.L();
        if (abstractC0526A != null) {
            abstractC0526A.f7327a.registerObserver((e) pVar2.f);
        }
        if (abstractC0526A != null) {
            abstractC0526A.f7327a.registerObserver(eVar);
        }
    }

    public void setCurrentItem(int i5) {
        c(i5);
    }

    @Override // android.view.View
    public void setLayoutDirection(int i5) {
        super.setLayoutDirection(i5);
        this.f5046v.L();
    }

    public void setOffscreenPageLimit(int i5) {
        if (i5 < 1 && i5 != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.f5045u = i5;
        this.f5037l.requestLayout();
    }

    public void setOrientation(int i5) {
        this.f5034i.c1(i5);
        this.f5046v.L();
    }

    public void setPageTransformer(l lVar) {
        if (lVar != null) {
            if (!this.f5043s) {
                this.f5042r = this.f5037l.getItemAnimator();
                this.f5043s = true;
            }
            this.f5037l.setItemAnimator(null);
        } else if (this.f5043s) {
            this.f5037l.setItemAnimator(this.f5042r);
            this.f5042r = null;
            this.f5043s = false;
        }
        this.f5041q.getClass();
        if (lVar == null) {
            return;
        }
        this.f5041q.getClass();
        this.f5041q.getClass();
    }

    public void setUserInputEnabled(boolean z4) {
        this.f5044t = z4;
        this.f5046v.L();
    }
}
