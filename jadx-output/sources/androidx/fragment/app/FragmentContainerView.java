package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.idm.fotaagent.enabler.fumo.IDMFumoExtInterface;
import com.wssyncmldm.R;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00028\u0000\"\n\b\u0000\u0010\u0010*\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/fragment/app/FragmentContainerView;", "Landroid/widget/FrameLayout;", "Landroid/animation/LayoutTransition;", "transition", "LQ2/k;", "setLayoutTransition", "(Landroid/animation/LayoutTransition;)V", "Landroid/view/View$OnApplyWindowInsetsListener;", "listener", "setOnApplyWindowInsetsListener", "(Landroid/view/View$OnApplyWindowInsetsListener;)V", "", "drawDisappearingViewsFirst", "setDrawDisappearingViewsLast", "(Z)V", "Landroidx/fragment/app/Fragment;", IDMFumoExtInterface.IDM_FUMO_BINARY_CHECK_DISABLED, "getFragment", "()Landroidx/fragment/app/Fragment;", "fragment_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes.dex */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f3740c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f3741d;

    /* renamed from: e, reason: collision with root package name */
    public View.OnApplyWindowInsetsListener f3742e;
    public boolean f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        String str;
        super(context, attributeSet, 0);
        d3.i.e("context", context);
        this.f3740c = new ArrayList();
        this.f3741d = new ArrayList();
        this.f = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Y.a.f2876b, 0, 0);
            if (classAttribute == null) {
                classAttribute = typedArrayObtainStyledAttributes.getString(0);
                str = "android:name";
            } else {
                str = "class";
            }
            typedArrayObtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + '\"');
        }
    }

    public final void a(View view) {
        if (this.f3741d.contains(view)) {
            this.f3740c.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i5, ViewGroup.LayoutParams layoutParams) {
        d3.i.e("child", view);
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof Fragment ? (Fragment) tag : null) != null) {
            super.addView(view, i5, layoutParams);
            return;
        }
        throw new IllegalStateException(("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.").toString());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        J.q0 q0VarE;
        d3.i.e("insets", windowInsets);
        J.q0 q0VarF = J.q0.f(windowInsets, null);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f3742e;
        if (onApplyWindowInsetsListener != null) {
            d3.i.b(onApplyWindowInsetsListener);
            WindowInsets windowInsetsOnApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets);
            d3.i.d("onApplyWindowInsetsListe…lyWindowInsets(v, insets)", windowInsetsOnApplyWindowInsets);
            q0VarE = J.q0.f(windowInsetsOnApplyWindowInsets, null);
        } else {
            q0VarE = J.Q.e(this, q0VarF);
        }
        d3.i.d("if (applyWindowInsetsLis…, insetsCompat)\n        }", q0VarE);
        if (!q0VarE.f1002a.j()) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                J.Q.b(getChildAt(i5), q0VarE);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        d3.i.e("canvas", canvas);
        if (this.f) {
            Iterator it = this.f3740c.iterator();
            while (it.hasNext()) {
                super.drawChild(canvas, (View) it.next(), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j3) {
        d3.i.e("canvas", canvas);
        d3.i.e("child", view);
        if (this.f) {
            ArrayList arrayList = this.f3740c;
            if ((!arrayList.isEmpty()) && arrayList.contains(view)) {
                return false;
            }
        }
        return super.drawChild(canvas, view, j3);
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        d3.i.e("view", view);
        this.f3741d.remove(view);
        if (this.f3740c.remove(view)) {
            this.f = true;
        }
        super.endViewTransition(view);
    }

    public final <F extends Fragment> F getFragment() {
        G g5;
        Fragment fragment;
        Z supportFragmentManager;
        View view = this;
        while (true) {
            g5 = null;
            if (view == null) {
                fragment = null;
                break;
            }
            Object tag = view.getTag(R.id.fragment_container_view_tag);
            fragment = tag instanceof Fragment ? (Fragment) tag : null;
            if (fragment != null) {
                break;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        if (fragment == null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    break;
                }
                if (context instanceof G) {
                    g5 = (G) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (g5 == null) {
                throw new IllegalStateException("View " + this + " is not within a subclass of FragmentActivity.");
            }
            supportFragmentManager = g5.getSupportFragmentManager();
        } else {
            if (!fragment.isAdded()) {
                throw new IllegalStateException("The Fragment " + fragment + " that owns View " + this + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
            }
            supportFragmentManager = fragment.getChildFragmentManager();
        }
        return (F) supportFragmentManager.A(getId());
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        d3.i.e("insets", windowInsets);
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (-1 >= childCount) {
                super.removeAllViewsInLayout();
                return;
            } else {
                View childAt = getChildAt(childCount);
                d3.i.d("view", childAt);
                a(childAt);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        d3.i.e("view", view);
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i5) {
        View childAt = getChildAt(i5);
        d3.i.d("view", childAt);
        a(childAt);
        super.removeViewAt(i5);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        d3.i.e("view", view);
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i5, int i6) {
        int i7 = i5 + i6;
        for (int i8 = i5; i8 < i7; i8++) {
            View childAt = getChildAt(i8);
            d3.i.d("view", childAt);
            a(childAt);
        }
        super.removeViews(i5, i6);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i5, int i6) {
        int i7 = i5 + i6;
        for (int i8 = i5; i8 < i7; i8++) {
            View childAt = getChildAt(i8);
            d3.i.d("view", childAt);
            a(childAt);
        }
        super.removeViewsInLayout(i5, i6);
    }

    public final void setDrawDisappearingViewsLast(boolean drawDisappearingViewsFirst) {
        this.f = drawDisappearingViewsFirst;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition transition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener listener) {
        d3.i.e("listener", listener);
        this.f3742e = listener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        d3.i.e("view", view);
        if (view.getParent() == this) {
            this.f3741d.add(view);
        }
        super.startViewTransition(view);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attributeSet, Z z4) {
        View view;
        super(context, attributeSet);
        d3.i.e("context", context);
        d3.i.e("attrs", attributeSet);
        d3.i.e("fm", z4);
        this.f3740c = new ArrayList();
        this.f3741d = new ArrayList();
        this.f = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Y.a.f2876b, 0, 0);
        classAttribute = classAttribute == null ? typedArrayObtainStyledAttributes.getString(0) : classAttribute;
        String string = typedArrayObtainStyledAttributes.getString(1);
        typedArrayObtainStyledAttributes.recycle();
        int id = getId();
        Fragment fragmentA = z4.A(id);
        if (classAttribute != null && fragmentA == null) {
            if (id == -1) {
                throw new IllegalStateException(B.f.v("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : ""));
            }
            T tD = z4.D();
            context.getClassLoader();
            Fragment fragmentA2 = tD.a(classAttribute);
            d3.i.d("fm.fragmentFactory.insta…ontext.classLoader, name)", fragmentA2);
            fragmentA2.mFragmentId = id;
            fragmentA2.mContainerId = id;
            fragmentA2.mTag = string;
            fragmentA2.mFragmentManager = z4;
            fragmentA2.mHost = z4.f3803t;
            fragmentA2.onInflate(context, attributeSet, (Bundle) null);
            C0109a c0109a = new C0109a(z4);
            c0109a.f3905p = true;
            fragmentA2.mContainer = this;
            c0109a.c(getId(), fragmentA2, string, 1);
            if (!c0109a.f3897g) {
                c0109a.f3898h = false;
                c0109a.f3810q.y(c0109a, true);
            } else {
                throw new IllegalStateException("This transaction is already being added to the back stack");
            }
        }
        Iterator it = z4.f3788c.d().iterator();
        while (it.hasNext()) {
            g0 g0Var = (g0) it.next();
            Fragment fragment = g0Var.f3867c;
            if (fragment.mContainerId == getId() && (view = fragment.mView) != null && view.getParent() == null) {
                fragment.mContainer = this;
                g0Var.b();
            }
        }
    }
}
