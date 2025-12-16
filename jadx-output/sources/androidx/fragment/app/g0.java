package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.lifecycle.EnumC0150q;
import com.wssyncmldm.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import k.Q0;

/* loaded from: classes.dex */
public final class g0 {

    /* renamed from: a, reason: collision with root package name */
    public final H f3865a;

    /* renamed from: b, reason: collision with root package name */
    public final h0 f3866b;

    /* renamed from: c, reason: collision with root package name */
    public final Fragment f3867c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3868d = false;

    /* renamed from: e, reason: collision with root package name */
    public int f3869e = -1;

    public g0(H h5, h0 h0Var, Fragment fragment) {
        this.f3865a = h5;
        this.f3866b = h0Var;
        this.f3867c = fragment;
    }

    public final void a() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        Fragment fragment = this.f3867c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + fragment);
        }
        Bundle bundle = fragment.mSavedFragmentState;
        fragment.performActivityCreated(bundle != null ? bundle.getBundle("savedInstanceState") : null);
        this.f3865a.a(false);
    }

    public final void b() {
        Fragment fragment;
        View view;
        View view2;
        int iIndexOfChild = -1;
        Fragment fragment2 = this.f3867c;
        View view3 = fragment2.mContainer;
        while (true) {
            fragment = null;
            if (view3 == null) {
                break;
            }
            Object tag = view3.getTag(R.id.fragment_container_view_tag);
            Fragment fragment3 = tag instanceof Fragment ? (Fragment) tag : null;
            if (fragment3 != null) {
                fragment = fragment3;
                break;
            } else {
                Object parent = view3.getParent();
                view3 = parent instanceof View ? (View) parent : null;
            }
        }
        Fragment parentFragment = fragment2.getParentFragment();
        if (fragment != null && !fragment.equals(parentFragment)) {
            int i5 = fragment2.mContainerId;
            Z.c cVar = Z.d.f2991a;
            Z.d.b(new Z.a(fragment2, "Attempting to nest fragment " + fragment2 + " within the view of parent fragment " + fragment + " via container with ID " + i5 + " without using parent's childFragmentManager"));
            Z.d.a(fragment2).getClass();
            Object obj = Z.b.f2985e;
            if (obj instanceof Void) {
            }
        }
        h0 h0Var = this.f3866b;
        h0Var.getClass();
        ViewGroup viewGroup = fragment2.mContainer;
        if (viewGroup != null) {
            ArrayList arrayList = h0Var.f3872a;
            int iIndexOf = arrayList.indexOf(fragment2);
            int i6 = iIndexOf - 1;
            while (true) {
                if (i6 < 0) {
                    while (true) {
                        iIndexOf++;
                        if (iIndexOf >= arrayList.size()) {
                            break;
                        }
                        Fragment fragment4 = (Fragment) arrayList.get(iIndexOf);
                        if (fragment4.mContainer == viewGroup && (view = fragment4.mView) != null) {
                            iIndexOfChild = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    Fragment fragment5 = (Fragment) arrayList.get(i6);
                    if (fragment5.mContainer == viewGroup && (view2 = fragment5.mView) != null) {
                        iIndexOfChild = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i6--;
                }
            }
        }
        fragment2.mContainer.addView(fragment2.mView, iIndexOfChild);
    }

    public final void c() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        Fragment fragment = this.f3867c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto ATTACHED: " + fragment);
        }
        Fragment fragment2 = fragment.mTarget;
        g0 g0Var = null;
        h0 h0Var = this.f3866b;
        if (fragment2 != null) {
            g0 g0Var2 = (g0) h0Var.f3873b.get(fragment2.mWho);
            if (g0Var2 == null) {
                throw new IllegalStateException("Fragment " + fragment + " declared target fragment " + fragment.mTarget + " that does not belong to this FragmentManager!");
            }
            fragment.mTargetWho = fragment.mTarget.mWho;
            fragment.mTarget = null;
            g0Var = g0Var2;
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (g0Var = (g0) h0Var.f3873b.get(str)) == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(fragment);
                sb.append(" declared target fragment ");
                throw new IllegalStateException(B.f.w(sb, fragment.mTargetWho, " that does not belong to this FragmentManager!"));
            }
        }
        if (g0Var != null) {
            g0Var.k();
        }
        Z z4 = fragment.mFragmentManager;
        fragment.mHost = z4.f3803t;
        fragment.mParentFragment = z4.f3805v;
        H h5 = this.f3865a;
        h5.g(false);
        fragment.performAttach();
        h5.b(false);
    }

    public final int d() {
        Object next;
        Fragment fragment = this.f3867c;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int iMin = this.f3869e;
        int iOrdinal = fragment.mMaxState.ordinal();
        if (iOrdinal == 1) {
            iMin = Math.min(iMin, 0);
        } else if (iOrdinal == 2) {
            iMin = Math.min(iMin, 1);
        } else if (iOrdinal == 3) {
            iMin = Math.min(iMin, 5);
        } else if (iOrdinal != 4) {
            iMin = Math.min(iMin, -1);
        }
        if (fragment.mFromLayout) {
            if (fragment.mInLayout) {
                iMin = Math.max(this.f3869e, 2);
                View view = fragment.mView;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.f3869e < 4 ? Math.min(iMin, fragment.mState) : Math.min(iMin, 1);
            }
        }
        if (!fragment.mAdded) {
            iMin = Math.min(iMin, 1);
        }
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            C0120l c0120lL = C0120l.l(viewGroup, fragment.getParentFragmentManager());
            c0120lL.getClass();
            u0 u0VarJ = c0120lL.j(fragment);
            int i5 = u0VarJ != null ? u0VarJ.f3953b : 0;
            Iterator it = c0120lL.f3914c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                u0 u0Var = (u0) next;
                if (d3.i.a(u0Var.f3954c, fragment) && !u0Var.f) {
                    break;
                }
            }
            u0 u0Var2 = (u0) next;
            i = u0Var2 != null ? u0Var2.f3953b : 0;
            int i6 = i5 == 0 ? -1 : w0.f3962a[Q0.f(i5)];
            if (i6 != -1 && i6 != 1) {
                i = i5;
            }
        }
        if (i == 2) {
            iMin = Math.min(iMin, 6);
        } else if (i == 3) {
            iMin = Math.max(iMin, 3);
        } else if (fragment.mRemoving) {
            iMin = fragment.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, -1);
        }
        if (fragment.mDeferStart && fragment.mState < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + fragment);
        }
        return iMin;
    }

    public final void e() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        Fragment fragment = this.f3867c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto CREATED: " + fragment);
        }
        Bundle bundle = fragment.mSavedFragmentState;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        if (fragment.mIsCreated) {
            fragment.mState = 1;
            fragment.restoreChildFragmentState();
        } else {
            H h5 = this.f3865a;
            h5.h(false);
            fragment.performCreate(bundle2);
            h5.c(false);
        }
    }

    public final void f() throws Resources.NotFoundException {
        String resourceName;
        Fragment fragment = this.f3867c;
        if (fragment.mFromLayout) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + fragment);
        }
        Bundle bundle = fragment.mSavedFragmentState;
        ViewGroup viewGroup = null;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        LayoutInflater layoutInflaterPerformGetLayoutInflater = fragment.performGetLayoutInflater(bundle2);
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i5 = fragment.mContainerId;
            if (i5 != 0) {
                if (i5 == -1) {
                    throw new IllegalArgumentException(B.f.u("Cannot create fragment ", fragment, " for a container view with no id"));
                }
                viewGroup = (ViewGroup) fragment.mFragmentManager.f3804u.b(i5);
                if (viewGroup == null) {
                    if (!fragment.mRestored) {
                        try {
                            resourceName = fragment.getResources().getResourceName(fragment.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.mContainerId) + " (" + resourceName + ") for fragment " + fragment);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    Z.c cVar = Z.d.f2991a;
                    Z.d.b(new Z.a(fragment, "Attempting to add fragment " + fragment + " to container " + viewGroup + " which is not a FragmentContainerView"));
                    Z.d.a(fragment).getClass();
                    Object obj = Z.b.f2988i;
                    if (obj instanceof Void) {
                    }
                }
            }
        }
        fragment.mContainer = viewGroup;
        fragment.performCreateView(layoutInflaterPerformGetLayoutInflater, viewGroup, bundle2);
        if (fragment.mView != null) {
            if (Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "moveto VIEW_CREATED: " + fragment);
            }
            fragment.mView.setSaveFromParentEnabled(false);
            fragment.mView.setTag(R.id.fragment_container_view_tag, fragment);
            if (viewGroup != null) {
                b();
            }
            if (fragment.mHidden) {
                fragment.mView.setVisibility(8);
            }
            View view = fragment.mView;
            WeakHashMap weakHashMap = J.Q.f940a;
            if (view.isAttachedToWindow()) {
                J.G.c(fragment.mView);
            } else {
                View view2 = fragment.mView;
                view2.addOnAttachStateChangeListener(new f0(view2));
            }
            fragment.performViewCreated();
            this.f3865a.m(false);
            int visibility = fragment.mView.getVisibility();
            fragment.setPostOnViewCreatedAlpha(fragment.mView.getAlpha());
            if (fragment.mContainer != null && visibility == 0) {
                View viewFindFocus = fragment.mView.findFocus();
                if (viewFindFocus != null) {
                    fragment.setFocusedView(viewFindFocus);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragment);
                    }
                }
                fragment.mView.setAlpha(0.0f);
            }
        }
        fragment.mState = 2;
    }

    public final void g() {
        Fragment fragmentB;
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        Fragment fragment = this.f3867c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom CREATED: " + fragment);
        }
        boolean zIsChangingConfigurations = true;
        boolean z4 = fragment.mRemoving && !fragment.isInBackStack();
        h0 h0Var = this.f3866b;
        if (z4 && !fragment.mBeingSaved) {
            h0Var.i(null, fragment.mWho);
        }
        if (!z4) {
            c0 c0Var = h0Var.f3875d;
            if (!((c0Var.f3835a.containsKey(fragment.mWho) && c0Var.f3838d) ? c0Var.f3839e : true)) {
                String str = fragment.mTargetWho;
                if (str != null && (fragmentB = h0Var.b(str)) != null && fragmentB.mRetainInstance) {
                    fragment.mTarget = fragmentB;
                }
                fragment.mState = 0;
                return;
            }
        }
        L l5 = fragment.mHost;
        if (l5 instanceof androidx.lifecycle.d0) {
            zIsChangingConfigurations = h0Var.f3875d.f3839e;
        } else {
            Context context = l5.f3751d;
            if (context instanceof Activity) {
                zIsChangingConfigurations = true ^ ((Activity) context).isChangingConfigurations();
            }
        }
        if ((z4 && !fragment.mBeingSaved) || zIsChangingConfigurations) {
            h0Var.f3875d.c(fragment, false);
        }
        fragment.performDestroy();
        this.f3865a.d(false);
        Iterator it = h0Var.d().iterator();
        while (it.hasNext()) {
            g0 g0Var = (g0) it.next();
            if (g0Var != null) {
                String str2 = fragment.mWho;
                Fragment fragment2 = g0Var.f3867c;
                if (str2.equals(fragment2.mTargetWho)) {
                    fragment2.mTarget = fragment;
                    fragment2.mTargetWho = null;
                }
            }
        }
        String str3 = fragment.mTargetWho;
        if (str3 != null) {
            fragment.mTarget = h0Var.b(str3);
        }
        h0Var.h(this);
    }

    public final void h() {
        View view;
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        Fragment fragment = this.f3867c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + fragment);
        }
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        fragment.performDestroyView();
        this.f3865a.n(false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.k(null);
        fragment.mInLayout = false;
    }

    public final void i() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        Fragment fragment = this.f3867c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + fragment);
        }
        fragment.performDetach();
        this.f3865a.e(false);
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if (!fragment.mRemoving || fragment.isInBackStack()) {
            c0 c0Var = this.f3866b.f3875d;
            boolean z4 = true;
            if (c0Var.f3835a.containsKey(fragment.mWho) && c0Var.f3838d) {
                z4 = c0Var.f3839e;
            }
            if (!z4) {
                return;
            }
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "initState called for fragment: " + fragment);
        }
        fragment.initState();
    }

    public final void j() {
        Fragment fragment = this.f3867c;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + fragment);
            }
            Bundle bundle = fragment.mSavedFragmentState;
            Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
            fragment.performCreateView(fragment.performGetLayoutInflater(bundle2), null, bundle2);
            View view = fragment.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                fragment.mView.setTag(R.id.fragment_container_view_tag, fragment);
                if (fragment.mHidden) {
                    fragment.mView.setVisibility(8);
                }
                fragment.performViewCreated();
                this.f3865a.m(false);
                fragment.mState = 2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:143:0x017b, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        boolean z4 = this.f3868d;
        Fragment fragment = this.f3867c;
        if (z4) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + fragment);
                return;
            }
            return;
        }
        try {
            this.f3868d = true;
            boolean z5 = false;
            while (true) {
                int iD = d();
                int i5 = fragment.mState;
                int i6 = 3;
                h0 h0Var = this.f3866b;
                if (iD == i5) {
                    if (!z5 && i5 == -1 && fragment.mRemoving && !fragment.isInBackStack() && !fragment.mBeingSaved) {
                        if (Log.isLoggable("FragmentManager", 3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + fragment);
                        }
                        h0Var.f3875d.c(fragment, true);
                        h0Var.h(this);
                        if (Log.isLoggable("FragmentManager", 3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + fragment);
                        }
                        fragment.initState();
                    }
                    if (fragment.mHiddenChanged) {
                        if (fragment.mView != null && (viewGroup = fragment.mContainer) != null) {
                            C0120l c0120lL = C0120l.l(viewGroup, fragment.getParentFragmentManager());
                            if (fragment.mHidden) {
                                c0120lL.d(this);
                            } else {
                                c0120lL.f(this);
                            }
                        }
                        Z z6 = fragment.mFragmentManager;
                        if (z6 != null && fragment.mAdded && Z.G(fragment)) {
                            z6.f3777D = true;
                        }
                        fragment.mHiddenChanged = false;
                        fragment.onHiddenChanged(fragment.mHidden);
                        fragment.mChildFragmentManager.n();
                    }
                    this.f3868d = false;
                    return;
                }
                H h5 = this.f3865a;
                if (iD <= i5) {
                    switch (i5 - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            if (fragment.mBeingSaved) {
                                if (((Bundle) h0Var.f3874c.get(fragment.mWho)) == null) {
                                    h0Var.i(n(), fragment.mWho);
                                }
                            }
                            g();
                            break;
                        case 1:
                            h();
                            fragment.mState = 1;
                            break;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            break;
                        case 3:
                            if (Log.isLoggable("FragmentManager", 3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + fragment);
                            }
                            if (fragment.mBeingSaved) {
                                h0Var.i(n(), fragment.mWho);
                            } else if (fragment.mView != null && fragment.mSavedViewState == null) {
                                o();
                            }
                            if (fragment.mView != null && (viewGroup2 = fragment.mContainer) != null) {
                                C0120l.l(viewGroup2, fragment.getParentFragmentManager()).e(this);
                            }
                            fragment.mState = 3;
                            break;
                        case 4:
                            if (Log.isLoggable("FragmentManager", 3)) {
                                Log.d("FragmentManager", "movefrom STARTED: " + fragment);
                            }
                            fragment.performStop();
                            h5.l(false);
                            break;
                        case 5:
                            fragment.mState = 5;
                            break;
                        case 6:
                            if (Log.isLoggable("FragmentManager", 3)) {
                                Log.d("FragmentManager", "movefrom RESUMED: " + fragment);
                            }
                            fragment.performPause();
                            h5.f(false);
                            break;
                    }
                } else {
                    switch (i5 + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (fragment.mView != null && (viewGroup3 = fragment.mContainer) != null) {
                                C0120l c0120lL2 = C0120l.l(viewGroup3, fragment.getParentFragmentManager());
                                int visibility = fragment.mView.getVisibility();
                                if (visibility == 0) {
                                    i6 = 2;
                                } else if (visibility == 4) {
                                    i6 = 4;
                                } else if (visibility != 8) {
                                    throw new IllegalArgumentException("Unknown visibility " + visibility);
                                }
                                c0120lL2.c(i6, this);
                            }
                            fragment.mState = 4;
                            break;
                        case 5:
                            if (Log.isLoggable("FragmentManager", 3)) {
                                Log.d("FragmentManager", "moveto STARTED: " + fragment);
                            }
                            fragment.performStart();
                            h5.k(false);
                            break;
                        case 6:
                            fragment.mState = 6;
                            break;
                        case 7:
                            m();
                            break;
                    }
                }
                z5 = true;
            }
        } catch (Throwable th) {
            this.f3868d = false;
            throw th;
        }
    }

    public final void l(ClassLoader classLoader) {
        Fragment fragment = this.f3867c;
        Bundle bundle = fragment.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        if (fragment.mSavedFragmentState.getBundle("savedInstanceState") == null) {
            fragment.mSavedFragmentState.putBundle("savedInstanceState", new Bundle());
        }
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("viewState");
        fragment.mSavedViewRegistryState = fragment.mSavedFragmentState.getBundle("viewRegistryState");
        e0 e0Var = (e0) fragment.mSavedFragmentState.getParcelable("state");
        if (e0Var != null) {
            fragment.mTargetWho = e0Var.n;
            fragment.mTargetRequestCode = e0Var.f3856o;
            Boolean bool = fragment.mSavedUserVisibleHint;
            if (bool != null) {
                fragment.mUserVisibleHint = bool.booleanValue();
                fragment.mSavedUserVisibleHint = null;
            } else {
                fragment.mUserVisibleHint = e0Var.f3857p;
            }
        }
        if (fragment.mUserVisibleHint) {
            return;
        }
        fragment.mDeferStart = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        Fragment fragment = this.f3867c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto RESUMED: " + fragment);
        }
        View focusedView = fragment.getFocusedView();
        if (focusedView != null) {
            if (focusedView == fragment.mView) {
                boolean zRequestFocus = focusedView.requestFocus();
                if (Log.isLoggable("FragmentManager", 2)) {
                    StringBuilder sb = new StringBuilder("requestFocus: Restoring focused view ");
                    sb.append(focusedView);
                    sb.append(" ");
                    sb.append(zRequestFocus ? "succeeded" : "failed");
                    sb.append(" on Fragment ");
                    sb.append(fragment);
                    sb.append(" resulting in focused view ");
                    sb.append(fragment.mView.findFocus());
                    Log.v("FragmentManager", sb.toString());
                }
            } else {
                for (ViewParent parent = focusedView.getParent(); parent != null; parent = parent.getParent()) {
                    if (parent == fragment.mView) {
                        boolean zRequestFocus2 = focusedView.requestFocus();
                        if (Log.isLoggable("FragmentManager", 2)) {
                        }
                    }
                }
            }
        }
        fragment.setFocusedView(null);
        fragment.performResume();
        this.f3865a.i(false);
        this.f3866b.i(null, fragment.mWho);
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    public final Bundle n() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        Fragment fragment = this.f3867c;
        if (fragment.mState == -1 && (bundle = fragment.mSavedFragmentState) != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putParcelable("state", new e0(fragment));
        if (fragment.mState > -1) {
            Bundle bundle3 = new Bundle();
            fragment.performSaveInstanceState(bundle3);
            if (!bundle3.isEmpty()) {
                bundle2.putBundle("savedInstanceState", bundle3);
            }
            this.f3865a.j(false);
            Bundle bundle4 = new Bundle();
            fragment.mSavedStateRegistryController.c(bundle4);
            if (!bundle4.isEmpty()) {
                bundle2.putBundle("registryState", bundle4);
            }
            Bundle bundleR = fragment.mChildFragmentManager.R();
            if (!bundleR.isEmpty()) {
                bundle2.putBundle("childFragmentManager", bundleR);
            }
            if (fragment.mView != null) {
                o();
            }
            SparseArray<Parcelable> sparseArray = fragment.mSavedViewState;
            if (sparseArray != null) {
                bundle2.putSparseParcelableArray("viewState", sparseArray);
            }
            Bundle bundle5 = fragment.mSavedViewRegistryState;
            if (bundle5 != null) {
                bundle2.putBundle("viewRegistryState", bundle5);
            }
        }
        Bundle bundle6 = fragment.mArguments;
        if (bundle6 != null) {
            bundle2.putBundle("arguments", bundle6);
        }
        return bundle2;
    }

    public final void o() {
        Fragment fragment = this.f3867c;
        if (fragment.mView == null) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + fragment + " with view " + fragment.mView);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        fragment.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            fragment.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        fragment.mViewLifecycleOwner.f3944g.c(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        fragment.mSavedViewRegistryState = bundle;
    }

    public g0(H h5, h0 h0Var, ClassLoader classLoader, T t2, Bundle bundle) {
        this.f3865a = h5;
        this.f3866b = h0Var;
        e0 e0Var = (e0) bundle.getParcelable("state");
        Fragment fragmentA = t2.a(e0Var.f3846c);
        fragmentA.mWho = e0Var.f3847d;
        fragmentA.mFromLayout = e0Var.f3848e;
        fragmentA.mRestored = true;
        fragmentA.mFragmentId = e0Var.f;
        fragmentA.mContainerId = e0Var.f3849g;
        fragmentA.mTag = e0Var.f3850h;
        fragmentA.mRetainInstance = e0Var.f3851i;
        fragmentA.mRemoving = e0Var.f3852j;
        fragmentA.mDetached = e0Var.f3853k;
        fragmentA.mHidden = e0Var.f3854l;
        fragmentA.mMaxState = EnumC0150q.values()[e0Var.f3855m];
        fragmentA.mTargetWho = e0Var.n;
        fragmentA.mTargetRequestCode = e0Var.f3856o;
        fragmentA.mUserVisibleHint = e0Var.f3857p;
        this.f3867c = fragmentA;
        fragmentA.mSavedFragmentState = bundle;
        Bundle bundle2 = bundle.getBundle("arguments");
        if (bundle2 != null) {
            bundle2.setClassLoader(classLoader);
        }
        fragmentA.setArguments(bundle2);
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Instantiated fragment " + fragmentA);
        }
    }

    public g0(H h5, h0 h0Var, Fragment fragment, Bundle bundle) {
        this.f3865a = h5;
        this.f3866b = h0Var;
        this.f3867c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        fragment.mSavedFragmentState = bundle;
        fragment.mArguments = bundle.getBundle("arguments");
    }
}
