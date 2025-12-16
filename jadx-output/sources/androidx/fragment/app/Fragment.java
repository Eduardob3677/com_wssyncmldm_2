package androidx.fragment.app;

import android.animation.Animator;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.lifecycle.C0157y;
import androidx.lifecycle.EnumC0149p;
import androidx.lifecycle.EnumC0150q;
import androidx.lifecycle.InterfaceC0145l;
import androidx.lifecycle.InterfaceC0153u;
import androidx.lifecycle.InterfaceC0155w;
import b.AbstractC0194a;
import c0.AbstractC0207a;
import com.wssyncmldm.R;
import h0.AbstractC0432c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import k.Q0;
import o.C0723l;
import p0.AbstractC0739a;
import y.AbstractC0923c;

/* loaded from: classes.dex */
public abstract class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, InterfaceC0155w, androidx.lifecycle.d0, InterfaceC0145l, x0.f {
    static final int ACTIVITY_CREATED = 4;
    static final int ATTACHED = 0;
    static final int AWAITING_ENTER_EFFECTS = 6;
    static final int AWAITING_EXIT_EFFECTS = 3;
    static final int CREATED = 1;
    static final int INITIALIZING = -1;
    static final int RESUMED = 7;
    static final int STARTED = 5;
    static final Object USE_DEFAULT_TRANSITION = new Object();
    static final int VIEW_CREATED = 2;
    boolean mAdded;
    C0133z mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    boolean mBeingSaved;
    private boolean mCalled;
    ViewGroup mContainer;
    int mContainerId;
    private int mContentLayoutId;
    androidx.lifecycle.b0 mDefaultFactory;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    Z mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    L mHost;
    boolean mInLayout;
    boolean mIsCreated;
    LayoutInflater mLayoutInflater;
    C0157y mLifecycleRegistry;
    Fragment mParentFragment;
    boolean mPerformedCreateView;
    Handler mPostponedHandler;
    public String mPreviousWho;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetainInstanceChangedWhileDetached;
    Bundle mSavedFragmentState;
    x0.e mSavedStateRegistryController;
    Boolean mSavedUserVisibleHint;
    Bundle mSavedViewRegistryState;
    SparseArray<Parcelable> mSavedViewState;
    String mTag;
    Fragment mTarget;
    int mTargetRequestCode;
    View mView;
    s0 mViewLifecycleOwner;
    int mState = -1;
    String mWho = UUID.randomUUID().toString();
    String mTargetWho = null;
    private Boolean mIsPrimaryNavigationFragment = null;
    Z mChildFragmentManager = new a0();
    boolean mMenuVisible = true;
    boolean mUserVisibleHint = true;
    Runnable mPostponedDurationRunnable = new RunnableC0128u(this, 0);
    EnumC0150q mMaxState = EnumC0150q.f4066g;
    androidx.lifecycle.F mViewLifecycleOwnerLiveData = new androidx.lifecycle.F();
    private final AtomicInteger mNextLocalRequestCode = new AtomicInteger();
    private final ArrayList<A> mOnPreAttachedListeners = new ArrayList<>();
    t4.a mDisposableHandle = null;
    private final A mSavedStateAttachListener = new C0129v(this);

    public Fragment() {
        d();
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    public final C0133z a() {
        if (this.mAnimationInfo == null) {
            C0133z c0133z = new C0133z();
            c0133z.f3977i = null;
            Object obj = USE_DEFAULT_TRANSITION;
            c0133z.f3978j = obj;
            c0133z.f3979k = null;
            c0133z.f3980l = obj;
            c0133z.f3981m = null;
            c0133z.n = obj;
            c0133z.f3984q = 1.0f;
            c0133z.f3985r = null;
            this.mAnimationInfo = c0133z;
        }
        return this.mAnimationInfo;
    }

    public final int b() {
        EnumC0150q enumC0150q = this.mMaxState;
        return (enumC0150q == EnumC0150q.f4064d || this.mParentFragment == null) ? enumC0150q.ordinal() : Math.min(enumC0150q.ordinal(), this.mParentFragment.b());
    }

    public final Fragment c(boolean z4) {
        String str;
        if (z4) {
            Z.c cVar = Z.d.f2991a;
            Z.d.b(new Z.f(this, "Attempting to get target fragment from fragment " + this));
            Z.d.a(this).getClass();
            Object obj = Z.b.f2987h;
            if (obj instanceof Void) {
            }
        }
        Fragment fragment = this.mTarget;
        if (fragment != null) {
            return fragment;
        }
        Z z5 = this.mFragmentManager;
        if (z5 == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return z5.f3788c.b(str);
    }

    public void callStartTransitionListener(boolean z4) {
        ViewGroup viewGroup;
        Z z5;
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z != null) {
            c0133z.f3986s = false;
        }
        if (this.mView == null || (viewGroup = this.mContainer) == null || (z5 = this.mFragmentManager) == null) {
            return;
        }
        C0120l c0120lL = C0120l.l(viewGroup, z5);
        c0120lL.m();
        if (z4) {
            this.mHost.f3752e.post(new RunnableC0121m(1, c0120lL));
        } else {
            c0120lL.h();
        }
        Handler handler = this.mPostponedHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mPostponedDurationRunnable);
            this.mPostponedHandler = null;
        }
    }

    public J createFragmentContainer() {
        return new C0130w(this);
    }

    public final void d() {
        this.mLifecycleRegistry = new C0157y(this);
        this.mSavedStateRegistryController = new x0.e(this);
        this.mDefaultFactory = null;
        if (this.mOnPreAttachedListeners.contains(this.mSavedStateAttachListener)) {
            return;
        }
        A a3 = this.mSavedStateAttachListener;
        if (this.mState >= 0) {
            a3.a();
        } else {
            this.mOnPreAttachedListeners.add(a3);
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mSavedViewRegistryState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.mSavedViewRegistryState);
        }
        Fragment fragmentC = c(false);
        if (fragmentC != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(fragmentC);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(getPopDirection());
        if (getEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(getEnterAnim());
        }
        if (getExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(getExitAnim());
        }
        if (getPopEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(getPopEnterAnim());
        }
        if (getPopExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(getPopExitAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
        }
        if (getContext() != null) {
            AbstractC0207a.a(this).b(str, printWriter);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        this.mChildFragmentManager.u(AbstractC0432c.h(str, "  "), fileDescriptor, printWriter, strArr);
    }

    public final androidx.activity.result.d e(AbstractC0194a abstractC0194a, C0131x c0131x, androidx.activity.result.b bVar) {
        if (this.mState > 1) {
            throw new IllegalStateException(B.f.u("Fragment ", this, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."));
        }
        C0132y c0132y = new C0132y(this, c0131x, new AtomicReference(), abstractC0194a, bVar);
        if (this.mState >= 0) {
            c0132y.a();
        } else {
            this.mOnPreAttachedListeners.add(c0132y);
        }
        return new androidx.activity.result.d();
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public Fragment findFragmentByWho(String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.f3788c.c(str);
    }

    public String generateActivityResultKey() {
        return "fragment_" + this.mWho + "_rq#" + this.mNextLocalRequestCode.getAndIncrement();
    }

    public final G getActivity() {
        L l5 = this.mHost;
        if (l5 == null) {
            return null;
        }
        return (G) l5.f3750c;
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null || (bool = c0133z.f3983p) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null || (bool = c0133z.f3982o) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public View getAnimatingAway() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return null;
        }
        c0133z.getClass();
        return null;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final Z getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException(B.f.u("Fragment ", this, " has not been attached yet."));
    }

    public Context getContext() {
        L l5 = this.mHost;
        if (l5 == null) {
            return null;
        }
        return l5.f3751d;
    }

    @Override // androidx.lifecycle.InterfaceC0145l
    public b0.b getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        if (application == null && Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        b0.c cVar = new b0.c();
        LinkedHashMap linkedHashMap = cVar.f5052a;
        if (application != null) {
            linkedHashMap.put(androidx.lifecycle.Z.f4046c, application);
        }
        linkedHashMap.put(androidx.lifecycle.S.f4027a, this);
        linkedHashMap.put(androidx.lifecycle.S.f4028b, this);
        if (getArguments() != null) {
            linkedHashMap.put(androidx.lifecycle.S.f4029c, getArguments());
        }
        return cVar;
    }

    public androidx.lifecycle.b0 getDefaultViewModelProviderFactory() {
        Application application;
        if (this.mFragmentManager == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (this.mDefaultFactory == null) {
            Context applicationContext = requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            if (application == null && Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory");
            }
            this.mDefaultFactory = new androidx.lifecycle.V(application, this, getArguments());
        }
        return this.mDefaultFactory;
    }

    public int getEnterAnim() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return 0;
        }
        return c0133z.f3971b;
    }

    public Object getEnterTransition() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return null;
        }
        return c0133z.f3977i;
    }

    public y.B getEnterTransitionCallback() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return null;
        }
        c0133z.getClass();
        return null;
    }

    public int getExitAnim() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return 0;
        }
        return c0133z.f3972c;
    }

    public Object getExitTransition() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return null;
        }
        return c0133z.f3979k;
    }

    public y.B getExitTransitionCallback() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return null;
        }
        c0133z.getClass();
        return null;
    }

    public View getFocusedView() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return null;
        }
        return c0133z.f3985r;
    }

    @Deprecated
    public final Z getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        L l5 = this.mHost;
        if (l5 == null) {
            return null;
        }
        return ((F) l5).f3738g;
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Override // androidx.lifecycle.InterfaceC0155w
    public androidx.lifecycle.r getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public AbstractC0207a getLoaderManager() {
        return AbstractC0207a.a(this);
    }

    public int getNextTransition() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return 0;
        }
        return c0133z.f;
    }

    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public final Z getParentFragmentManager() {
        Z z4 = this.mFragmentManager;
        if (z4 != null) {
            return z4;
        }
        throw new IllegalStateException(B.f.u("Fragment ", this, " not associated with a fragment manager."));
    }

    public boolean getPopDirection() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return false;
        }
        return c0133z.f3970a;
    }

    public int getPopEnterAnim() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return 0;
        }
        return c0133z.f3973d;
    }

    public int getPopExitAnim() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return 0;
        }
        return c0133z.f3974e;
    }

    public float getPostOnViewCreatedAlpha() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return 1.0f;
        }
        return c0133z.f3984q;
    }

    public Object getReenterTransition() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return null;
        }
        Object obj = c0133z.f3980l;
        return obj == USE_DEFAULT_TRANSITION ? getExitTransition() : obj;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        Z.c cVar = Z.d.f2991a;
        Z.d.b(new Z.e(this, "Attempting to get retain instance for fragment " + this));
        Z.d.a(this).getClass();
        Object obj = Z.b.f;
        if (obj instanceof Void) {
        }
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return null;
        }
        Object obj = c0133z.f3978j;
        return obj == USE_DEFAULT_TRANSITION ? getEnterTransition() : obj;
    }

    @Override // x0.f
    public final x0.d getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f9628b;
    }

    public Object getSharedElementEnterTransition() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return null;
        }
        return c0133z.f3981m;
    }

    public Object getSharedElementReturnTransition() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return null;
        }
        Object obj = c0133z.n;
        return obj == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : obj;
    }

    public ArrayList<String> getSharedElementSourceNames() {
        ArrayList<String> arrayList;
        C0133z c0133z = this.mAnimationInfo;
        return (c0133z == null || (arrayList = c0133z.f3975g) == null) ? new ArrayList<>() : arrayList;
    }

    public ArrayList<String> getSharedElementTargetNames() {
        ArrayList<String> arrayList;
        C0133z c0133z = this.mAnimationInfo;
        return (c0133z == null || (arrayList = c0133z.f3976h) == null) ? new ArrayList<>() : arrayList;
    }

    public final String getString(int i5) {
        return getResources().getString(i5);
    }

    public final String getTag() {
        return this.mTag;
    }

    @Deprecated
    public final Fragment getTargetFragment() {
        return c(true);
    }

    @Deprecated
    public final int getTargetRequestCode() {
        Z.c cVar = Z.d.f2991a;
        Z.d.b(new Z.f(this, "Attempting to get target request code from fragment " + this));
        Z.d.a(this).getClass();
        Object obj = Z.b.f2987h;
        if (obj instanceof Void) {
        }
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(int i5) {
        return getResources().getText(i5);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public View getView() {
        return this.mView;
    }

    public InterfaceC0155w getViewLifecycleOwner() {
        s0 s0Var = this.mViewLifecycleOwner;
        if (s0Var != null) {
            return s0Var;
        }
        throw new IllegalStateException(B.f.u("Can't access the Fragment View's LifecycleOwner for ", this, " when getView() is null i.e., before onCreateView() or after onDestroyView()"));
    }

    public androidx.lifecycle.C getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // androidx.lifecycle.d0
    public androidx.lifecycle.c0 getViewModelStore() {
        if (this.mFragmentManager == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (b() == 1) {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        HashMap map = this.mFragmentManager.f3784L.f3837c;
        androidx.lifecycle.c0 c0Var = (androidx.lifecycle.c0) map.get(this.mWho);
        if (c0Var != null) {
            return c0Var;
        }
        androidx.lifecycle.c0 c0Var2 = new androidx.lifecycle.c0();
        map.put(this.mWho, c0Var2);
        return c0Var2;
    }

    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public void initState() {
        d();
        this.mPreviousWho = this.mWho;
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new a0();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        if (!this.mHidden) {
            Z z4 = this.mFragmentManager;
            if (z4 == null) {
                return false;
            }
            Fragment fragment = this.mParentFragment;
            z4.getClass();
            if (!(fragment == null ? false : fragment.isHidden())) {
                return false;
            }
        }
        return true;
    }

    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        if (this.mMenuVisible) {
            if (this.mFragmentManager == null) {
                return true;
            }
            Fragment fragment = this.mParentFragment;
            if (fragment == null ? true : fragment.isMenuVisible()) {
                return true;
            }
        }
        return false;
    }

    public boolean isPostponed() {
        C0133z c0133z = this.mAnimationInfo;
        if (c0133z == null) {
            return false;
        }
        return c0133z.f3986s;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isResumed() {
        return this.mState >= 7;
    }

    public final boolean isStateSaved() {
        Z z4 = this.mFragmentManager;
        if (z4 == null) {
            return false;
        }
        return z4.E || z4.f3778F;
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    public void noteStateNotSaved() {
        this.mChildFragmentManager.K();
    }

    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    @Deprecated
    public void onActivityResult(int i5, int i6, Intent intent) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i5 + " resultCode: " + i6 + " data: " + intent);
        }
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        L l5 = this.mHost;
        Activity activity = l5 == null ? null : l5.f3750c;
        if (activity != null) {
            this.mCalled = false;
            onAttach(activity);
        }
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState();
        Z z4 = this.mChildFragmentManager;
        if (z4.f3802s >= 1) {
            return;
        }
        z4.E = false;
        z4.f3778F = false;
        z4.f3784L.f = false;
        z4.t(1);
    }

    public Animation onCreateAnimation(int i5, boolean z4, int i6) {
        View view;
        Context context = getContext();
        if (context == null || !TextUtils.isEmpty(Settings.System.getString(context.getContentResolver(), "current_sec_active_themepackage")) || (view = getView()) == null) {
            return null;
        }
        G activity = getActivity();
        int[] iArrH = Q0.h(2);
        int length = iArrH.length;
        int i7 = 0;
        while (true) {
            if (i7 >= length) {
                int[] iArrH2 = Q0.h(2);
                int length2 = iArrH2.length;
                int i8 = 0;
                while (true) {
                    if (i8 >= length2) {
                        break;
                    }
                    if (B.f.e(iArrH2[i8]) == i6) {
                        view.setTranslationZ(1.0f);
                        break;
                    }
                    i8++;
                }
            } else {
                if (B.f.f(iArrH[i7]) == i6) {
                    view.setTranslationZ(0.0f);
                    break;
                }
                i7++;
            }
        }
        for (int i9 : Q0.h(2)) {
            if (B.f.e(i9) == i6 || B.f.f(i9) == i6 || B.f.i(i9) == i6 || B.f.j(i9) == i6) {
                if (activity != null) {
                    activity.getWindow().getDecorView().setBackgroundColor(getResources().getColor(R.color.sesl_fragment_fgcolor));
                }
                view.setBackgroundColor(getResources().getColor(R.color.sesl_fragment_bgcolor));
                this.mDisposableHandle = new C0126s(this, new WeakReference(view));
                return null;
            }
        }
        this.mDisposableHandle = new C0126s(this, new WeakReference(view));
        return null;
    }

    public Animator onCreateAnimator(int i5, boolean z4, int i6) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Deprecated
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i5 = this.mContentLayoutId;
        if (i5 != 0) {
            return layoutInflater.inflate(i5, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    @Deprecated
    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z4) {
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        L l5 = this.mHost;
        Activity activity = l5 == null ? null : l5.f3750c;
        if (activity != null) {
            this.mCalled = false;
            onInflate(activity, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z4) {
    }

    @Deprecated
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    @Deprecated
    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z4) {
    }

    @Deprecated
    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z4) {
    }

    @Deprecated
    public void onRequestPermissionsResult(int i5, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public abstract void onSaveInstanceState(Bundle bundle);

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    public void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.K();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (!this.mCalled) {
            throw new x0(B.f.u("Fragment ", this, " did not call through to super.onActivityCreated()"));
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + this);
        }
        if (this.mView != null) {
            Bundle bundle2 = this.mSavedFragmentState;
            restoreViewState(bundle2 != null ? bundle2.getBundle("savedInstanceState") : null);
        }
        this.mSavedFragmentState = null;
        Z z4 = this.mChildFragmentManager;
        z4.E = false;
        z4.f3778F = false;
        z4.f3784L.f = false;
        z4.t(4);
    }

    public void performAttach() {
        Iterator<A> it = this.mOnPreAttachedListeners.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.mOnPreAttachedListeners.clear();
        this.mChildFragmentManager.b(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach(this.mHost.f3751d);
        if (!this.mCalled) {
            throw new x0(B.f.u("Fragment ", this, " did not call through to super.onAttach()"));
        }
        Iterator it2 = this.mFragmentManager.f3797m.iterator();
        while (it2.hasNext()) {
            ((d0) it2.next()).a(this);
        }
        Z z4 = this.mChildFragmentManager;
        z4.E = false;
        z4.f3778F = false;
        z4.f3784L.f = false;
        z4.t(0);
    }

    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
    }

    public boolean performContextItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.i(menuItem);
    }

    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.K();
        this.mState = 1;
        this.mCalled = false;
        this.mLifecycleRegistry.a(new InterfaceC0153u() { // from class: androidx.fragment.app.Fragment.6
            @Override // androidx.lifecycle.InterfaceC0153u
            public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) {
                View view;
                if (enumC0149p != EnumC0149p.ON_STOP || (view = Fragment.this.mView) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
            }
        });
        onCreate(bundle);
        this.mIsCreated = true;
        if (!this.mCalled) {
            throw new x0(B.f.u("Fragment ", this, " did not call through to super.onCreate()"));
        }
        this.mLifecycleRegistry.e(EnumC0149p.ON_CREATE);
    }

    public boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z4 = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onCreateOptionsMenu(menu, menuInflater);
            z4 = true;
        }
        return z4 | this.mChildFragmentManager.j(menu, menuInflater);
    }

    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.K();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new s0(this, getViewModelStore(), new RunnableC0127t(0, this));
        View viewOnCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = viewOnCreateView;
        if (viewOnCreateView == null) {
            if (this.mViewLifecycleOwner.f != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.mViewLifecycleOwner = null;
            return;
        }
        this.mViewLifecycleOwner.b();
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "Setting ViewLifecycleOwner on View " + this.mView + " for Fragment " + this);
        }
        androidx.lifecycle.S.h(this.mView, this.mViewLifecycleOwner);
        View view = this.mView;
        s0 s0Var = this.mViewLifecycleOwner;
        d3.i.e("<this>", view);
        view.setTag(R.id.view_tree_view_model_store_owner, s0Var);
        AbstractC0739a.r(this.mView, this.mViewLifecycleOwner);
        this.mViewLifecycleOwnerLiveData.k(this.mViewLifecycleOwner);
    }

    public void performDestroy() {
        this.mChildFragmentManager.k();
        this.mLifecycleRegistry.e(EnumC0149p.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (!this.mCalled) {
            throw new x0(B.f.u("Fragment ", this, " did not call through to super.onDestroy()"));
        }
    }

    public void performDestroyView() {
        this.mChildFragmentManager.t(1);
        if (this.mView != null) {
            s0 s0Var = this.mViewLifecycleOwner;
            s0Var.b();
            if (s0Var.f.f4073c.compareTo(EnumC0150q.f4065e) >= 0) {
                this.mViewLifecycleOwner.a(EnumC0149p.ON_DESTROY);
            }
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (!this.mCalled) {
            throw new x0(B.f.u("Fragment ", this, " did not call through to super.onDestroyView()"));
        }
        C0723l c0723l = AbstractC0207a.a(this).f5188b.f5186a;
        if (c0723l.f8443e <= 0) {
            this.mPerformedCreateView = false;
        } else {
            B.f.F(c0723l.f8442d[0]);
            throw null;
        }
    }

    public void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (!this.mCalled) {
            throw new x0(B.f.u("Fragment ", this, " did not call through to super.onDetach()"));
        }
        Z z4 = this.mChildFragmentManager;
        if (z4.f3779G) {
            return;
        }
        z4.k();
        this.mChildFragmentManager = new a0();
    }

    public LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = layoutInflaterOnGetLayoutInflater;
        return layoutInflaterOnGetLayoutInflater;
    }

    public void performLowMemory() {
        onLowMemory();
    }

    public void performMultiWindowModeChanged(boolean z4) {
        onMultiWindowModeChanged(z4);
    }

    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.o(menuItem);
    }

    public void performOptionsMenuClosed(Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        this.mChildFragmentManager.p(menu);
    }

    public void performPause() {
        this.mChildFragmentManager.t(5);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(EnumC0149p.ON_PAUSE);
        }
        this.mLifecycleRegistry.e(EnumC0149p.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (!this.mCalled) {
            throw new x0(B.f.u("Fragment ", this, " did not call through to super.onPause()"));
        }
    }

    public void performPictureInPictureModeChanged(boolean z4) {
        onPictureInPictureModeChanged(z4);
    }

    public boolean performPrepareOptionsMenu(Menu menu) {
        boolean z4 = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onPrepareOptionsMenu(menu);
            z4 = true;
        }
        return z4 | this.mChildFragmentManager.s(menu);
    }

    public void performPrimaryNavigationFragmentChanged() {
        this.mFragmentManager.getClass();
        boolean zI = Z.I(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != zI) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(zI);
            onPrimaryNavigationFragmentChanged(zI);
            Z z4 = this.mChildFragmentManager;
            z4.Z();
            z4.q(z4.f3806w);
        }
    }

    public void performResume() {
        this.mChildFragmentManager.K();
        this.mChildFragmentManager.x(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new x0(B.f.u("Fragment ", this, " did not call through to super.onResume()"));
        }
        C0157y c0157y = this.mLifecycleRegistry;
        EnumC0149p enumC0149p = EnumC0149p.ON_RESUME;
        c0157y.e(enumC0149p);
        if (this.mView != null) {
            this.mViewLifecycleOwner.f.e(enumC0149p);
        }
        Z z4 = this.mChildFragmentManager;
        z4.E = false;
        z4.f3778F = false;
        z4.f3784L.f = false;
        z4.t(7);
    }

    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
    }

    public void performStart() {
        this.mChildFragmentManager.K();
        this.mChildFragmentManager.x(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new x0(B.f.u("Fragment ", this, " did not call through to super.onStart()"));
        }
        C0157y c0157y = this.mLifecycleRegistry;
        EnumC0149p enumC0149p = EnumC0149p.ON_START;
        c0157y.e(enumC0149p);
        if (this.mView != null) {
            this.mViewLifecycleOwner.f.e(enumC0149p);
        }
        Z z4 = this.mChildFragmentManager;
        z4.E = false;
        z4.f3778F = false;
        z4.f3784L.f = false;
        z4.t(5);
    }

    public void performStop() {
        Z z4 = this.mChildFragmentManager;
        z4.f3778F = true;
        z4.f3784L.f = true;
        z4.t(4);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(EnumC0149p.ON_STOP);
        }
        this.mLifecycleRegistry.e(EnumC0149p.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (!this.mCalled) {
            throw new x0(B.f.u("Fragment ", this, " did not call through to super.onStop()"));
        }
    }

    public void performViewCreated() {
        Bundle bundle = this.mSavedFragmentState;
        onViewCreated(this.mView, bundle != null ? bundle.getBundle("savedInstanceState") : null);
        this.mChildFragmentManager.t(2);
    }

    public void postponeEnterTransition() {
        a().f3986s = true;
    }

    public final <I, O> androidx.activity.result.c registerForActivityResult(AbstractC0194a abstractC0194a, androidx.activity.result.b bVar) {
        return e(abstractC0194a, new C0131x(0, this), bVar);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(String[] strArr, int i5) {
        if (this.mHost == null) {
            throw new IllegalStateException(B.f.u("Fragment ", this, " not attached to Activity"));
        }
        Z parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.f3775B == null) {
            parentFragmentManager.f3803t.getClass();
            return;
        }
        parentFragmentManager.f3776C.addLast(new W(this.mWho, i5));
        parentFragmentManager.f3775B.a(strArr);
    }

    public final G requireActivity() {
        G activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException(B.f.u("Fragment ", this, " not attached to an activity."));
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException(B.f.u("Fragment ", this, " does not have any arguments."));
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException(B.f.u("Fragment ", this, " not attached to a context."));
    }

    @Deprecated
    public final Z requireFragmentManager() {
        return getParentFragmentManager();
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException(B.f.u("Fragment ", this, " not attached to a host."));
    }

    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException(B.f.u("Fragment ", this, " is not attached to any Fragment or host"));
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(B.f.u("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    public void restoreChildFragmentState() {
        Bundle bundle;
        Bundle bundle2 = this.mSavedFragmentState;
        if (bundle2 == null || (bundle = bundle2.getBundle("childFragmentManager")) == null) {
            return;
        }
        this.mChildFragmentManager.Q(bundle);
        Z z4 = this.mChildFragmentManager;
        z4.E = false;
        z4.f3778F = false;
        z4.f3784L.f = false;
        z4.t(1);
    }

    public final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (!this.mCalled) {
            throw new x0(B.f.u("Fragment ", this, " did not call through to super.onViewStateRestored()"));
        }
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(EnumC0149p.ON_CREATE);
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z4) {
        a().f3983p = Boolean.valueOf(z4);
    }

    public void setAllowReturnTransitionOverlap(boolean z4) {
        a().f3982o = Boolean.valueOf(z4);
    }

    public void setAnimations(int i5, int i6, int i7, int i8) {
        if (this.mAnimationInfo == null && i5 == 0 && i6 == 0 && i7 == 0 && i8 == 0) {
            return;
        }
        a().f3971b = i5;
        a().f3972c = i6;
        a().f3973d = i7;
        a().f3974e = i8;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(y.B b3) {
        a().getClass();
    }

    public void setEnterTransition(Object obj) {
        a().f3977i = obj;
    }

    public void setExitSharedElementCallback(y.B b3) {
        a().getClass();
    }

    public void setExitTransition(Object obj) {
        a().f3979k = obj;
    }

    public void setFocusedView(View view) {
        a().f3985r = view;
    }

    @Deprecated
    public void setHasOptionsMenu(boolean z4) {
        if (this.mHasMenu != z4) {
            this.mHasMenu = z4;
            if (!isAdded() || isHidden()) {
                return;
            }
            ((F) this.mHost).f3738g.invalidateMenu();
        }
    }

    public void setInitialSavedState(B b3) {
        Bundle bundle;
        if (this.mFragmentManager != null) {
            throw new IllegalStateException("Fragment already added");
        }
        if (b3 == null || (bundle = b3.f3732c) == null) {
            bundle = null;
        }
        this.mSavedFragmentState = bundle;
    }

    public void setMenuVisibility(boolean z4) {
        if (this.mMenuVisible != z4) {
            this.mMenuVisible = z4;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                ((F) this.mHost).f3738g.invalidateMenu();
            }
        }
    }

    public void setNextTransition(int i5) {
        if (this.mAnimationInfo == null && i5 == 0) {
            return;
        }
        a();
        this.mAnimationInfo.f = i5;
    }

    public void setPopDirection(boolean z4) {
        if (this.mAnimationInfo == null) {
            return;
        }
        a().f3970a = z4;
    }

    public void setPostOnViewCreatedAlpha(float f) {
        a().f3984q = f;
    }

    public void setReenterTransition(Object obj) {
        a().f3980l = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z4) {
        Z.c cVar = Z.d.f2991a;
        Z.d.b(new Z.e(this, "Attempting to set retain instance for fragment " + this));
        Z.d.a(this).getClass();
        Object obj = Z.b.f;
        if (obj instanceof Void) {
        }
        this.mRetainInstance = z4;
        Z z5 = this.mFragmentManager;
        if (z5 == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z4) {
            z5.f3784L.b(this);
        } else {
            z5.f3784L.f(this);
        }
    }

    public void setReturnTransition(Object obj) {
        a().f3978j = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        a().f3981m = obj;
    }

    public void setSharedElementNames(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        a();
        C0133z c0133z = this.mAnimationInfo;
        c0133z.f3975g = arrayList;
        c0133z.f3976h = arrayList2;
    }

    public void setSharedElementReturnTransition(Object obj) {
        a().n = obj;
    }

    @Deprecated
    public void setTargetFragment(Fragment fragment, int i5) {
        if (fragment != null) {
            Z.c cVar = Z.d.f2991a;
            Z.d.b(new Z.f(this, "Attempting to set target fragment " + fragment + " with request code " + i5 + " for fragment " + this));
            Z.d.a(this).getClass();
            Object obj = Z.b.f2987h;
            if (obj instanceof Void) {
            }
        }
        Z z4 = this.mFragmentManager;
        Z z5 = fragment != null ? fragment.mFragmentManager : null;
        if (z4 != null && z5 != null && z4 != z5) {
            throw new IllegalArgumentException(B.f.u("Fragment ", fragment, " must share the same FragmentManager to be set as a target fragment"));
        }
        for (Fragment fragmentC = fragment; fragmentC != null; fragmentC = fragmentC.c(false)) {
            if (fragmentC.equals(this)) {
                throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            }
        }
        if (fragment == null) {
            this.mTargetWho = null;
            this.mTarget = null;
        } else if (this.mFragmentManager == null || fragment.mFragmentManager == null) {
            this.mTargetWho = null;
            this.mTarget = fragment;
        } else {
            this.mTargetWho = fragment.mWho;
            this.mTarget = null;
        }
        this.mTargetRequestCode = i5;
    }

    @Deprecated
    public void setUserVisibleHint(boolean z4) {
        Z.c cVar = Z.d.f2991a;
        Z.d.b(new Z.a(this, "Attempting to set user visible hint to " + z4 + " for fragment " + this));
        Z.d.a(this).getClass();
        Object obj = Z.b.f2986g;
        if (obj instanceof Void) {
        }
        boolean z5 = false;
        if (!this.mUserVisibleHint && z4 && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            Z z6 = this.mFragmentManager;
            g0 g0VarF = z6.f(this);
            Fragment fragment = g0VarF.f3867c;
            if (fragment.mDeferStart) {
                if (z6.f3787b) {
                    z6.f3780H = true;
                } else {
                    fragment.mDeferStart = false;
                    g0VarF.k();
                }
            }
        }
        this.mUserVisibleHint = z4;
        if (this.mState < 5 && !z4) {
            z5 = true;
        }
        this.mDeferStart = z5;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z4);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        L l5 = this.mHost;
        if (l5 != null) {
            return AbstractC0923c.a(((F) l5).f3738g, str);
        }
        return false;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    @Deprecated
    public void startActivityForResult(Intent intent, int i5) {
        startActivityForResult(intent, i5, null);
    }

    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i5, Intent intent, int i6, int i7, int i8, Bundle bundle) throws IntentSender.SendIntentException {
        Intent intent2 = intent;
        if (this.mHost == null) {
            throw new IllegalStateException(B.f.u("Fragment ", this, " not attached to Activity"));
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in startIntentSenderForResult() requestCode: " + i5 + " IntentSender: " + intentSender + " fillInIntent: " + intent + " options: " + bundle);
        }
        Z parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.f3774A == null) {
            L l5 = parentFragmentManager.f3803t;
            if (i5 == -1) {
                l5.f3750c.startIntentSenderForResult(intentSender, i5, intent, i6, i7, i8, bundle);
                return;
            } else {
                l5.getClass();
                throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
            }
        }
        if (bundle != null) {
            if (intent2 == null) {
                intent2 = new Intent();
                intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            }
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "ActivityOptions " + bundle + " were added to fillInIntent " + intent2 + " for fragment " + this);
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        d3.i.e("intentSender", intentSender);
        androidx.activity.result.j jVar = new androidx.activity.result.j(intentSender, intent2, i6, i7);
        parentFragmentManager.f3776C.addLast(new W(this.mWho, i5));
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Fragment " + this + "is launching an IntentSender for result ");
        }
        parentFragmentManager.f3774A.a(jVar);
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo == null || !a().f3986s) {
            return;
        }
        if (this.mHost == null) {
            a().f3986s = false;
        } else if (Looper.myLooper() != this.mHost.f3752e.getLooper()) {
            this.mHost.f3752e.postAtFrontOfQueue(new RunnableC0128u(this, 1));
        } else {
            callStartTransitionListener(true);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.mWho);
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(" tag=");
            sb.append(this.mTag);
        }
        sb.append(")");
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Fragment fragment = (Fragment) T.c(context.getClassLoader(), str).getConstructor(null).newInstance(null);
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.setArguments(bundle);
            }
            return fragment;
        } catch (IllegalAccessException e5) {
            throw new A0.c(B.f.v("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e5);
        } catch (InstantiationException e6) {
            throw new A0.c(B.f.v("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e6);
        } catch (NoSuchMethodException e7) {
            throw new A0.c(B.f.v("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e7);
        } catch (InvocationTargetException e8) {
            throw new A0.c(B.f.v("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e8);
        }
    }

    public final String getString(int i5, Object... objArr) {
        return getResources().getString(i5, objArr);
    }

    public final void postponeEnterTransition(long j3, TimeUnit timeUnit) {
        a().f3986s = true;
        Handler handler = this.mPostponedHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mPostponedDurationRunnable);
        }
        Z z4 = this.mFragmentManager;
        if (z4 != null) {
            this.mPostponedHandler = z4.f3803t.f3752e;
        } else {
            this.mPostponedHandler = new Handler(Looper.getMainLooper());
        }
        this.mPostponedHandler.removeCallbacks(this.mPostponedDurationRunnable);
        this.mPostponedHandler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j3));
    }

    public final <I, O> androidx.activity.result.c registerForActivityResult(AbstractC0194a abstractC0194a, androidx.activity.result.h hVar, androidx.activity.result.b bVar) {
        return e(abstractC0194a, new C0131x(1, hVar), bVar);
    }

    public void startActivity(Intent intent, Bundle bundle) {
        L l5 = this.mHost;
        if (l5 == null) {
            throw new IllegalStateException(B.f.u("Fragment ", this, " not attached to Activity"));
        }
        l5.f3751d.startActivity(intent, bundle);
    }

    @Deprecated
    public void startActivityForResult(Intent intent, int i5, Bundle bundle) {
        if (this.mHost == null) {
            throw new IllegalStateException(B.f.u("Fragment ", this, " not attached to Activity"));
        }
        Z parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.f3809z != null) {
            parentFragmentManager.f3776C.addLast(new W(this.mWho, i5));
            if (bundle != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
            }
            parentFragmentManager.f3809z.a(intent);
            return;
        }
        L l5 = parentFragmentManager.f3803t;
        if (i5 == -1) {
            l5.f3751d.startActivity(intent, bundle);
        } else {
            l5.getClass();
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        L l5 = this.mHost;
        if (l5 != null) {
            G g5 = ((F) l5).f3738g;
            LayoutInflater layoutInflaterCloneInContext = g5.getLayoutInflater().cloneInContext(g5);
            layoutInflaterCloneInContext.setFactory2(this.mChildFragmentManager.f);
            return layoutInflaterCloneInContext;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }
}
