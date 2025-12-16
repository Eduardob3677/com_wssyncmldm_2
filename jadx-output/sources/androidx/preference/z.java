package androidx.preference;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.fragment.app.C0109a;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.T;
import androidx.fragment.app.Z;
import androidx.picker.widget.HandlerC0161c;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import c.AbstractC0206a;
import com.samsung.android.knox.ex.KnoxContract;
import com.wssyncmldm.R;
import j0.AbstractC0526A;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class z extends Fragment {
    public static final String ARG_PREFERENCE_ROOT = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT";
    private static final String DIALOG_FRAGMENT_TAG = "androidx.preference.PreferenceFragment.DIALOG";
    private static final float FONT_SCALE_LARGE = 1.3f;
    private static final float FONT_SCALE_MEDIUM = 1.1f;
    private static final int MSG_BIND_PREFERENCES = 1;
    private static final String PREFERENCES_TAG = "android:preferences";
    static final int SWITCH_PREFERENCE_LAYOUT = 2;
    static final int SWITCH_PREFERENCE_LAYOUT_LARGE = 1;
    private static final String TAG = "SeslPreferenceFragmentC";
    private boolean mHavePrefs;
    private boolean mInitDone;
    private int mIsLargeLayout;
    private boolean mIsReducedMargin;
    RecyclerView mList;
    private androidx.appcompat.util.b mListRoundedCorner;
    private ViewTreeObserver.OnPreDrawListener mOnPreDrawListener;
    private F mPreferenceManager;
    private androidx.appcompat.util.b mRoundedCorner;
    private int mScreenWidthDp;
    private Runnable mSelectPreferenceRunnable;
    private int mSubheaderColor;
    private androidx.appcompat.util.c mSubheaderRoundedCorner;
    private final x mDividerDecoration = new x(this);
    private int mLayoutResId = R.layout.preference_list_fragment;
    private boolean mIsRoundedCorner = true;
    private int mLeft = -1;
    private int mTop = -1;
    private int mRight = -1;
    private int mBottom = -1;
    private final Handler mHandler = new HandlerC0161c(this, Looper.getMainLooper(), 1);
    private final Runnable mRequestFocus = new t(0, this);

    public static boolean access$100(z zVar, D d2, int i5, int i6) {
        if (i5 == zVar.mIsLargeLayout) {
            return i5 == 1 && (zVar.mScreenWidthDp != i6 || d2.f4567o == 0);
        }
        return true;
    }

    public void addPreferencesFromResource(int i5) {
        F f = this.mPreferenceManager;
        if (f == null) {
            throw new RuntimeException("This should be called after super.onCreate.");
        }
        setPreferenceScreen(f.c(requireContext(), i5, getPreferenceScreen()));
    }

    public void bindPreferences() {
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            getListView().setAdapter(onCreateAdapter(preferenceScreen));
            preferenceScreen.l();
        }
        onBindPreferences();
    }

    public <T extends Preference> T findPreference(CharSequence charSequence) {
        PreferenceScreen preferenceScreen;
        F f = this.mPreferenceManager;
        if (f == null || (preferenceScreen = f.f4587g) == null) {
            return null;
        }
        return (T) preferenceScreen.E(charSequence);
    }

    public Fragment getCallbackFragment() {
        return null;
    }

    public final RecyclerView getListView() {
        return this.mList;
    }

    public F getPreferenceManager() {
        return this.mPreferenceManager;
    }

    public PreferenceScreen getPreferenceScreen() {
        return this.mPreferenceManager.f4587g;
    }

    public void onBindPreferences() {
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        if (getListView() != null) {
            if (this.mOnPreDrawListener == null) {
                ViewTreeObserver viewTreeObserver = getListView().getViewTreeObserver();
                if (this.mList != null) {
                    this.mOnPreDrawListener = new v(this);
                }
                viewTreeObserver.addOnPreDrawListener(this.mOnPreDrawListener);
            }
            AbstractC0526A adapter = getListView().getAdapter();
            j0.J layoutManager = getListView().getLayoutManager();
            boolean z4 = configuration.screenWidthDp <= 250;
            if (z4 != this.mIsReducedMargin && (adapter instanceof D) && layoutManager != null) {
                this.mIsReducedMargin = z4;
                if (getContext() != null) {
                    TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, I.f4607g, R.attr.preferenceFragmentCompatStyle, 0);
                    try {
                        setDivider(typedArrayObtainStyledAttributes.getDrawable(1));
                        Parcelable parcelableE0 = layoutManager.e0();
                        getListView().setAdapter(getListView().getAdapter());
                        layoutManager.d0(parcelableE0);
                    } finally {
                        typedArrayObtainStyledAttributes.recycle();
                    }
                }
            }
        }
        super.onConfigurationChanged(configuration);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        requireContext().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        Configuration configuration = getResources().getConfiguration();
        int i5 = configuration.screenWidthDp;
        this.mIsLargeLayout = ((i5 > 320 || configuration.fontScale < FONT_SCALE_MEDIUM) && (i5 >= 411 || configuration.fontScale < FONT_SCALE_LARGE)) ? 2 : 1;
        this.mScreenWidthDp = i5;
        this.mIsReducedMargin = i5 <= 250;
        int i6 = typedValue.resourceId;
        if (i6 == 0) {
            i6 = R.style.PreferenceThemeOverlay;
        }
        requireContext().getTheme().applyStyle(i6, false);
        F f = new F(requireContext());
        this.mPreferenceManager = f;
        f.f4590j = this;
        onCreatePreferences(bundle, getArguments() != null ? getArguments().getString(ARG_PREFERENCE_ROOT) : null);
    }

    public AbstractC0526A onCreateAdapter(PreferenceScreen preferenceScreen) {
        return new D(preferenceScreen);
    }

    public j0.J onCreateLayoutManager() {
        requireContext();
        return new LinearLayoutManager(1);
    }

    public abstract void onCreatePreferences(Bundle bundle, String str);

    public RecyclerView onCreateRecyclerView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerView;
        if (requireContext().getPackageManager().hasSystemFeature("android.hardware.type.automotive") && (recyclerView = (RecyclerView) viewGroup.findViewById(R.id.recycler_view)) != null) {
            return recyclerView;
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(R.layout.sesl_preference_recyclerview, viewGroup, false);
        recyclerView2.setLayoutManager(onCreateLayoutManager());
        recyclerView2.setAccessibilityDelegateCompat(new G(recyclerView2));
        return recyclerView2;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = requireContext().obtainStyledAttributes(null, I.f4607g, R.attr.preferenceFragmentCompatStyle, 0);
        this.mLayoutResId = typedArrayObtainStyledAttributes.getResourceId(0, this.mLayoutResId);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1);
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(3, true);
        typedArrayObtainStyledAttributes.recycle();
        Context context = getContext();
        if (context != null) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(null, AbstractC0206a.f5159C, android.R.attr.listSeparatorTextViewStyle, 0);
            Drawable drawable2 = typedArrayObtainStyledAttributes2.getDrawable(1);
            if (drawable2 instanceof ColorDrawable) {
                this.mSubheaderColor = ((ColorDrawable) drawable2).getColor();
            }
            typedArrayObtainStyledAttributes2.recycle();
        }
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(context);
        View viewInflate = layoutInflaterCloneInContext.inflate(this.mLayoutResId, viewGroup, false);
        View viewFindViewById = viewInflate.findViewById(android.R.id.list_container);
        if (!(viewFindViewById instanceof ViewGroup)) {
            throw new IllegalStateException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
        }
        ViewGroup viewGroup2 = (ViewGroup) viewFindViewById;
        RecyclerView recyclerViewOnCreateRecyclerView = onCreateRecyclerView(layoutInflaterCloneInContext, viewGroup2, bundle);
        if (recyclerViewOnCreateRecyclerView == null) {
            throw new RuntimeException("Could not create RecyclerView");
        }
        this.mList = recyclerViewOnCreateRecyclerView;
        if (this.mOnPreDrawListener == null) {
            ViewTreeObserver viewTreeObserver = recyclerViewOnCreateRecyclerView.getViewTreeObserver();
            if (this.mList != null) {
                this.mOnPreDrawListener = new v(this);
            }
            viewTreeObserver.addOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mList.addOnAttachStateChangeListener(new u(this));
        recyclerViewOnCreateRecyclerView.j(this.mDividerDecoration);
        setDivider(drawable);
        if (dimensionPixelSize != -1) {
            setDividerHeight(dimensionPixelSize);
        }
        this.mDividerDecoration.f4741c = z4;
        this.mList.setItemAnimator(null);
        this.mRoundedCorner = new androidx.appcompat.util.b(context);
        this.mSubheaderRoundedCorner = new androidx.appcompat.util.c(context);
        if (this.mIsRoundedCorner) {
            if (recyclerViewOnCreateRecyclerView.f4884p instanceof LinearLayoutManager) {
                recyclerViewOnCreateRecyclerView.o1 = true;
                recyclerViewOnCreateRecyclerView.requestLayout();
            }
            int i5 = this.mSubheaderColor;
            recyclerViewOnCreateRecyclerView.f4896u1.setColor(i5);
            recyclerViewOnCreateRecyclerView.f4899v1.setRoundedCornerColor(12, i5);
            androidx.appcompat.util.b bVar = new androidx.appcompat.util.b(context);
            this.mListRoundedCorner = bVar;
            bVar.setRoundedCorners(3);
        }
        if (this.mList.getParent() == null) {
            viewGroup2.addView(this.mList);
        }
        this.mHandler.post(this.mRequestFocus);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.sesl_preference_padding_horizontal);
        int i6 = this.mLeft;
        if (i6 < 0) {
            i6 = dimensionPixelSize2;
        }
        int i7 = this.mTop;
        if (i7 < 0) {
            i7 = 0;
        }
        int i8 = this.mRight;
        if (i8 >= 0) {
            dimensionPixelSize2 = i8;
        }
        int i9 = this.mBottom;
        setPadding(i6, i7, dimensionPixelSize2, i9 >= 0 ? i9 : 0);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        this.mHandler.removeCallbacks(this.mRequestFocus);
        this.mHandler.removeMessages(1);
        if (this.mHavePrefs) {
            getListView().setAdapter(null);
            PreferenceScreen preferenceScreen = getPreferenceScreen();
            if (preferenceScreen != null) {
                preferenceScreen.p();
            }
            onUnbindPreferences();
        }
        if (this.mOnPreDrawListener != null && (recyclerView = this.mList) != null) {
            recyclerView.getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mList = null;
        super.onDestroyView();
    }

    public void onDisplayPreferenceDialog(Preference preference) {
        androidx.fragment.app.r c0191k;
        getCallbackFragment();
        for (Fragment parentFragment = this; parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
        }
        getContext();
        getActivity();
        if (getParentFragmentManager().B(DIALOG_FRAGMENT_TAG) != null) {
            return;
        }
        if (preference instanceof EditTextPreference) {
            String str = preference.n;
            c0191k = new C0184d();
            Bundle bundle = new Bundle(1);
            bundle.putString(KnoxContract.KEY, str);
            c0191k.setArguments(bundle);
        } else if (preference instanceof ListPreference) {
            String str2 = preference.n;
            c0191k = new C0188h();
            Bundle bundle2 = new Bundle(1);
            bundle2.putString(KnoxContract.KEY, str2);
            c0191k.setArguments(bundle2);
        } else {
            if (!(preference instanceof MultiSelectListPreference)) {
                throw new IllegalArgumentException("Cannot display dialog for an unknown Preference type: " + preference.getClass().getSimpleName() + ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
            }
            String str3 = preference.n;
            c0191k = new C0191k();
            Bundle bundle3 = new Bundle(1);
            bundle3.putString(KnoxContract.KEY, str3);
            c0191k.setArguments(bundle3);
        }
        c0191k.setTargetFragment(this, 0);
        c0191k.show(getParentFragmentManager(), DIALOG_FRAGMENT_TAG);
    }

    public void onNavigateToScreen(PreferenceScreen preferenceScreen) {
        getCallbackFragment();
        for (Fragment parentFragment = this; parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
        }
        getContext();
        getActivity();
    }

    public boolean onPreferenceTreeClick(Preference preference) {
        if (preference.f4659p == null) {
            return false;
        }
        getCallbackFragment();
        for (Fragment parentFragment = this; parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
        }
        getContext();
        getActivity();
        Log.w(TAG, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
        Z parentFragmentManager = getParentFragmentManager();
        if (preference.f4660q == null) {
            preference.f4660q = new Bundle();
        }
        Bundle bundle = preference.f4660q;
        T tD = parentFragmentManager.D();
        requireActivity().getClassLoader();
        Fragment fragmentA = tD.a(preference.f4659p);
        fragmentA.setArguments(bundle);
        fragmentA.setTargetFragment(this, 0);
        C0109a c0109a = new C0109a(parentFragmentManager);
        int id = ((View) requireView().getParent()).getId();
        if (id == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        c0109a.c(id, fragmentA, null, 2);
        if (!c0109a.f3898h) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        c0109a.f3897g = true;
        c0109a.f3899i = null;
        c0109a.e(false);
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.d(bundle2);
            bundle.putBundle(PREFERENCES_TAG, bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        F f = this.mPreferenceManager;
        f.f4588h = this;
        f.f4589i = this;
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        F f = this.mPreferenceManager;
        f.f4588h = null;
        f.f4589i = null;
    }

    public void onUnbindPreferences() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreen;
        super.onViewCreated(view, bundle);
        if (bundle != null && (bundle2 = bundle.getBundle(PREFERENCES_TAG)) != null && (preferenceScreen = getPreferenceScreen()) != null) {
            preferenceScreen.c(bundle2);
        }
        if (this.mHavePrefs) {
            bindPreferences();
            Runnable runnable = this.mSelectPreferenceRunnable;
            if (runnable != null) {
                runnable.run();
                this.mSelectPreferenceRunnable = null;
            }
        }
        this.mInitDone = true;
    }

    public void scrollToPreference(Preference preference) {
        w wVar = new w(this, preference, null);
        if (this.mList == null) {
            this.mSelectPreferenceRunnable = wVar;
        } else {
            wVar.run();
        }
    }

    public void seslSetRoundedCorner(boolean z4) {
        this.mIsRoundedCorner = z4;
    }

    public void setDivider(Drawable drawable) {
        x xVar = this.mDividerDecoration;
        if (drawable != null) {
            xVar.getClass();
            xVar.f4740b = drawable.getIntrinsicHeight();
        } else {
            xVar.f4740b = 0;
        }
        xVar.f4739a = drawable;
        RecyclerView recyclerView = xVar.f4742d.mList;
        if (recyclerView.f4889r.size() == 0) {
            return;
        }
        j0.J j3 = recyclerView.f4884p;
        if (j3 != null) {
            j3.c("Cannot invalidate item decorations during a scroll or layout");
        }
        recyclerView.d0();
        recyclerView.requestLayout();
    }

    public void setDividerHeight(int i5) {
        x xVar = this.mDividerDecoration;
        xVar.f4740b = i5;
        RecyclerView recyclerView = xVar.f4742d.mList;
        if (recyclerView.f4889r.size() == 0) {
            return;
        }
        j0.J j3 = recyclerView.f4884p;
        if (j3 != null) {
            j3.c("Cannot invalidate item decorations during a scroll or layout");
        }
        recyclerView.d0();
        recyclerView.requestLayout();
    }

    public void setPadding(int i5, int i6, int i7, int i8) {
        this.mLeft = i5;
        this.mTop = i6;
        this.mRight = i7;
        this.mBottom = i8;
        RecyclerView recyclerView = this.mList;
        if (recyclerView != null) {
            recyclerView.setPadding(i5, i6, i7, i8);
            RecyclerView recyclerView2 = this.mList;
            boolean z4 = (this.mLeft == 0 && this.mRight == 0 && this.mTop == 0 && this.mBottom == 0) ? false : true;
            recyclerView2.f4881m1 = z4;
            int dimensionPixelOffset = z4 ? recyclerView2.getResources().getDimensionPixelOffset(R.dimen.sesl_system_scroller_vertical_padding) : 0;
            recyclerView2.f4902w1 = dimensionPixelOffset;
            Class cls = Integer.TYPE;
            Method methodJ = i3.x.J(View.class, "semSetScrollBarTopPadding", cls);
            if (methodJ != null) {
                i3.x.j0(recyclerView2, methodJ, Integer.valueOf(dimensionPixelOffset));
            }
            int i9 = recyclerView2.f4902w1;
            Method methodJ2 = i3.x.J(View.class, "semSetScrollBarBottomPadding", cls);
            if (methodJ2 != null) {
                i3.x.j0(recyclerView2, methodJ2, Integer.valueOf(i9));
            }
            recyclerView2.requestLayout();
            this.mList.setScrollBarStyle((this.mLeft > 0 || this.mRight > 0) ? 33554432 : 0);
        }
    }

    public void setPreferenceScreen(PreferenceScreen preferenceScreen) {
        F f = this.mPreferenceManager;
        PreferenceScreen preferenceScreen2 = f.f4587g;
        if (preferenceScreen != preferenceScreen2) {
            if (preferenceScreen2 != null) {
                preferenceScreen2.p();
            }
            f.f4587g = preferenceScreen;
            if (preferenceScreen != null) {
                onUnbindPreferences();
                this.mHavePrefs = true;
                if (!this.mInitDone || this.mHandler.hasMessages(1)) {
                    return;
                }
                this.mHandler.obtainMessage(1).sendToTarget();
            }
        }
    }

    public void setPreferencesFromResource(int i5, String str) throws Resources.NotFoundException {
        F f = this.mPreferenceManager;
        if (f == null) {
            throw new RuntimeException("This should be called after super.onCreate.");
        }
        PreferenceScreen preferenceScreenC = f.c(requireContext(), i5, null);
        PreferenceScreen preferenceScreen = preferenceScreenC;
        if (str != null) {
            Preference preferenceE = preferenceScreenC.E(str);
            boolean z4 = preferenceE instanceof PreferenceScreen;
            preferenceScreen = preferenceE;
            if (!z4) {
                throw new IllegalArgumentException(B.f.v("Preference object with key ", str, " is not a PreferenceScreen"));
            }
        }
        setPreferenceScreen(preferenceScreen);
    }

    public void scrollToPreference(String str) {
        w wVar = new w(this, null, str);
        if (this.mList == null) {
            this.mSelectPreferenceRunnable = wVar;
        } else {
            wVar.run();
        }
    }
}
