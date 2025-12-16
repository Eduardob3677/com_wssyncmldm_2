package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class N implements LayoutInflater.Factory2 {

    /* renamed from: c, reason: collision with root package name */
    public final Z f3755c;

    public N(Z z4) {
        this.f3755c = z4;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean zIsAssignableFrom;
        g0 g0VarF;
        boolean zEquals = FragmentContainerView.class.getName().equals(str);
        Z z4 = this.f3755c;
        if (zEquals) {
            return new FragmentContainerView(context, attributeSet, z4);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Y.a.f2875a);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(0);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        String string = typedArrayObtainStyledAttributes.getString(2);
        typedArrayObtainStyledAttributes.recycle();
        if (attributeValue != null) {
            try {
                zIsAssignableFrom = Fragment.class.isAssignableFrom(T.b(context.getClassLoader(), attributeValue));
            } catch (ClassNotFoundException unused) {
                zIsAssignableFrom = false;
            }
            if (zIsAssignableFrom) {
                int id = view != null ? view.getId() : 0;
                if (id == -1 && resourceId == -1 && string == null) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                }
                Fragment fragmentA = resourceId != -1 ? z4.A(resourceId) : null;
                if (fragmentA == null && string != null) {
                    fragmentA = z4.B(string);
                }
                if (fragmentA == null && id != -1) {
                    fragmentA = z4.A(id);
                }
                if (fragmentA == null) {
                    T tD = z4.D();
                    context.getClassLoader();
                    fragmentA = tD.a(attributeValue);
                    fragmentA.mFromLayout = true;
                    fragmentA.mFragmentId = resourceId != 0 ? resourceId : id;
                    fragmentA.mContainerId = id;
                    fragmentA.mTag = string;
                    fragmentA.mInLayout = true;
                    fragmentA.mFragmentManager = z4;
                    L l5 = z4.f3803t;
                    fragmentA.mHost = l5;
                    fragmentA.onInflate(l5.f3751d, attributeSet, fragmentA.mSavedFragmentState);
                    g0VarF = z4.a(fragmentA);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Fragment " + fragmentA + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                    }
                } else {
                    if (fragmentA.mInLayout) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                    }
                    fragmentA.mInLayout = true;
                    fragmentA.mFragmentManager = z4;
                    L l6 = z4.f3803t;
                    fragmentA.mHost = l6;
                    fragmentA.onInflate(l6.f3751d, attributeSet, fragmentA.mSavedFragmentState);
                    g0VarF = z4.f(fragmentA);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Retained Fragment " + fragmentA + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                    }
                }
                ViewGroup viewGroup = (ViewGroup) view;
                Z.c cVar = Z.d.f2991a;
                Z.d.b(new Z.a(fragmentA, "Attempting to use <fragment> tag to add fragment " + fragmentA + " to container " + viewGroup));
                Z.d.a(fragmentA).getClass();
                Object obj = Z.b.f2984d;
                if (obj instanceof Void) {
                }
                fragmentA.mContainer = viewGroup;
                g0VarF.k();
                g0VarF.j();
                View view2 = fragmentA.mView;
                if (view2 == null) {
                    throw new IllegalStateException(B.f.v("Fragment ", attributeValue, " did not create a view."));
                }
                if (resourceId != 0) {
                    view2.setId(resourceId);
                }
                if (fragmentA.mView.getTag() == null) {
                    fragmentA.mView.setTag(string);
                }
                fragmentA.mView.addOnAttachStateChangeListener(new M(this, g0VarF));
                return fragmentA.mView;
            }
        }
        return null;
    }
}
