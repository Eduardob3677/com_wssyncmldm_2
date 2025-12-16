package androidx.activity;

import J.C0035i;
import J.C0036j;
import J.InterfaceC0032f;
import J.InterfaceC0038l;
import a.C0100a;
import a.InterfaceC0101b;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Trace;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.fragment.app.G;
import androidx.lifecycle.C0147n;
import androidx.lifecycle.C0157y;
import androidx.lifecycle.EnumC0149p;
import androidx.lifecycle.EnumC0150q;
import androidx.lifecycle.InterfaceC0145l;
import androidx.lifecycle.InterfaceC0153u;
import androidx.lifecycle.InterfaceC0155w;
import androidx.lifecycle.O;
import androidx.lifecycle.S;
import androidx.lifecycle.V;
import androidx.lifecycle.Z;
import androidx.lifecycle.b0;
import androidx.lifecycle.c0;
import androidx.lifecycle.d0;
import b.AbstractC0194a;
import c3.InterfaceC0221a;
import com.wssyncmldm.R;
import f1.AbstractC0420a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p0.AbstractC0739a;
import y.C0920A;
import y.y;
import y.z;
import z.InterfaceC0937e;
import z.InterfaceC0938f;

/* loaded from: classes.dex */
public abstract class ComponentActivity extends y.h implements d0, InterfaceC0145l, x0.f, w, androidx.activity.result.i, InterfaceC0937e, InterfaceC0938f, y, z, InterfaceC0032f {
    private static final String ACTIVITY_RESULT_TAG = "android:support:activity-result";
    private final androidx.activity.result.h mActivityResultRegistry;
    private int mContentLayoutId;
    private b0 mDefaultFactory;
    private boolean mDispatchingOnMultiWindowModeChanged;
    private boolean mDispatchingOnPictureInPictureModeChanged;
    final m mFullyDrawnReporter;
    private final C0036j mMenuHostHelper;
    private final AtomicInteger mNextLocalRequestCode;
    private v mOnBackPressedDispatcher;
    private final CopyOnWriteArrayList<I.a> mOnConfigurationChangedListeners;
    private final CopyOnWriteArrayList<I.a> mOnMultiWindowModeChangedListeners;
    private final CopyOnWriteArrayList<I.a> mOnNewIntentListeners;
    private final CopyOnWriteArrayList<I.a> mOnPictureInPictureModeChangedListeners;
    private final CopyOnWriteArrayList<I.a> mOnTrimMemoryListeners;
    final j mReportFullyDrawnExecutor;
    final x0.e mSavedStateRegistryController;
    private c0 mViewModelStore;
    final C0100a mContextAwareHelper = new C0100a();
    private final C0157y mLifecycleRegistry = new C0157y(this);

    /* JADX WARN: Type inference failed for: r4v0, types: [androidx.activity.d] */
    public ComponentActivity() {
        final G g5 = (G) this;
        this.mMenuHostHelper = new C0036j(new D1.b(7, g5));
        x0.e eVar = new x0.e(this);
        this.mSavedStateRegistryController = eVar;
        this.mOnBackPressedDispatcher = null;
        k kVar = new k(g5);
        this.mReportFullyDrawnExecutor = kVar;
        this.mFullyDrawnReporter = new m(kVar, new InterfaceC0221a() { // from class: androidx.activity.d
            @Override // c3.InterfaceC0221a
            public final Object a() {
                g5.reportFullyDrawn();
                return null;
            }
        });
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mActivityResultRegistry = new g(g5);
        this.mOnConfigurationChangedListeners = new CopyOnWriteArrayList<>();
        this.mOnTrimMemoryListeners = new CopyOnWriteArrayList<>();
        this.mOnNewIntentListeners = new CopyOnWriteArrayList<>();
        this.mOnMultiWindowModeChangedListeners = new CopyOnWriteArrayList<>();
        this.mOnPictureInPictureModeChangedListeners = new CopyOnWriteArrayList<>();
        this.mDispatchingOnMultiWindowModeChanged = false;
        this.mDispatchingOnPictureInPictureModeChanged = false;
        if (getLifecycle() == null) {
            throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
        }
        getLifecycle().a(new InterfaceC0153u() { // from class: androidx.activity.ComponentActivity.2
            @Override // androidx.lifecycle.InterfaceC0153u
            public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) {
                if (enumC0149p == EnumC0149p.ON_STOP) {
                    Window window = g5.getWindow();
                    View viewPeekDecorView = window != null ? window.peekDecorView() : null;
                    if (viewPeekDecorView != null) {
                        viewPeekDecorView.cancelPendingInputEvents();
                    }
                }
            }
        });
        getLifecycle().a(new InterfaceC0153u() { // from class: androidx.activity.ComponentActivity.3
            @Override // androidx.lifecycle.InterfaceC0153u
            public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) {
                if (enumC0149p == EnumC0149p.ON_DESTROY) {
                    g5.mContextAwareHelper.f3026b = null;
                    if (!g5.isChangingConfigurations()) {
                        g5.getViewModelStore().a();
                    }
                    ((k) g5.mReportFullyDrawnExecutor).b();
                }
            }
        });
        getLifecycle().a(new InterfaceC0153u() { // from class: androidx.activity.ComponentActivity.4
            @Override // androidx.lifecycle.InterfaceC0153u
            public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) {
                ComponentActivity componentActivity = g5;
                componentActivity.ensureViewModelStore();
                componentActivity.getLifecycle().b(this);
            }
        });
        eVar.a();
        S.e(this);
        getSavedStateRegistry().c(ACTIVITY_RESULT_TAG, new e(0, g5));
        addOnContextAvailableListener(new InterfaceC0101b() { // from class: androidx.activity.f
            @Override // a.InterfaceC0101b
            public final void a(Context context) {
                ComponentActivity.g(g5);
            }
        });
    }

    public static void g(ComponentActivity componentActivity) {
        Bundle bundleA = componentActivity.getSavedStateRegistry().a(ACTIVITY_RESULT_TAG);
        if (bundleA != null) {
            androidx.activity.result.h hVar = componentActivity.mActivityResultRegistry;
            hVar.getClass();
            ArrayList<Integer> integerArrayList = bundleA.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
            ArrayList<String> stringArrayList = bundleA.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
            if (stringArrayList == null || integerArrayList == null) {
                return;
            }
            hVar.f3197d = bundleA.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
            Bundle bundle = bundleA.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
            Bundle bundle2 = hVar.f3199g;
            bundle2.putAll(bundle);
            for (int i5 = 0; i5 < stringArrayList.size(); i5++) {
                String str = stringArrayList.get(i5);
                HashMap map = hVar.f3195b;
                boolean zContainsKey = map.containsKey(str);
                HashMap map2 = hVar.f3194a;
                if (zContainsKey) {
                    Integer num = (Integer) map.remove(str);
                    if (!bundle2.containsKey(str)) {
                        map2.remove(num);
                    }
                }
                Integer num2 = integerArrayList.get(i5);
                num2.intValue();
                String str2 = stringArrayList.get(i5);
                map2.put(num2, str2);
                map.put(str2, num2);
            }
        }
    }

    public static Bundle h(ComponentActivity componentActivity) {
        componentActivity.getClass();
        Bundle bundle = new Bundle();
        androidx.activity.result.h hVar = componentActivity.mActivityResultRegistry;
        hVar.getClass();
        HashMap map = hVar.f3195b;
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(map.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(map.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(hVar.f3197d));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) hVar.f3199g.clone());
        return bundle;
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        this.mReportFullyDrawnExecutor.a(getWindow().getDecorView());
        super.addContentView(view, layoutParams);
    }

    @Override // J.InterfaceC0032f
    public void addMenuProvider(InterfaceC0038l interfaceC0038l) {
        C0036j c0036j = this.mMenuHostHelper;
        c0036j.f987b.add(interfaceC0038l);
        c0036j.f986a.run();
    }

    @Override // z.InterfaceC0937e
    public final void addOnConfigurationChangedListener(I.a aVar) {
        this.mOnConfigurationChangedListeners.add(aVar);
    }

    public final void addOnContextAvailableListener(InterfaceC0101b interfaceC0101b) {
        C0100a c0100a = this.mContextAwareHelper;
        c0100a.getClass();
        d3.i.e("listener", interfaceC0101b);
        Context context = c0100a.f3026b;
        if (context != null) {
            interfaceC0101b.a(context);
        }
        c0100a.f3025a.add(interfaceC0101b);
    }

    @Override // y.y
    public final void addOnMultiWindowModeChangedListener(I.a aVar) {
        this.mOnMultiWindowModeChangedListeners.add(aVar);
    }

    public final void addOnNewIntentListener(I.a aVar) {
        this.mOnNewIntentListeners.add(aVar);
    }

    @Override // y.z
    public final void addOnPictureInPictureModeChangedListener(I.a aVar) {
        this.mOnPictureInPictureModeChangedListeners.add(aVar);
    }

    @Override // z.InterfaceC0938f
    public final void addOnTrimMemoryListener(I.a aVar) {
        this.mOnTrimMemoryListeners.add(aVar);
    }

    public void ensureViewModelStore() {
        if (this.mViewModelStore == null) {
            i iVar = (i) getLastNonConfigurationInstance();
            if (iVar != null) {
                this.mViewModelStore = iVar.f3160b;
            }
            if (this.mViewModelStore == null) {
                this.mViewModelStore = new c0();
            }
        }
    }

    @Override // androidx.activity.result.i
    public final androidx.activity.result.h getActivityResultRegistry() {
        return this.mActivityResultRegistry;
    }

    @Override // androidx.lifecycle.InterfaceC0145l
    public b0.b getDefaultViewModelCreationExtras() {
        b0.c cVar = new b0.c();
        Application application = getApplication();
        LinkedHashMap linkedHashMap = cVar.f5052a;
        if (application != null) {
            linkedHashMap.put(Z.f4046c, getApplication());
        }
        linkedHashMap.put(S.f4027a, this);
        linkedHashMap.put(S.f4028b, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            linkedHashMap.put(S.f4029c, getIntent().getExtras());
        }
        return cVar;
    }

    public b0 getDefaultViewModelProviderFactory() {
        if (this.mDefaultFactory == null) {
            this.mDefaultFactory = new V(getApplication(), this, getIntent() != null ? getIntent().getExtras() : null);
        }
        return this.mDefaultFactory;
    }

    public m getFullyDrawnReporter() {
        return this.mFullyDrawnReporter;
    }

    @Deprecated
    public Object getLastCustomNonConfigurationInstance() {
        i iVar = (i) getLastNonConfigurationInstance();
        if (iVar != null) {
            return iVar.f3159a;
        }
        return null;
    }

    @Override // androidx.lifecycle.InterfaceC0155w
    public androidx.lifecycle.r getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // androidx.activity.w
    public final v getOnBackPressedDispatcher() {
        if (this.mOnBackPressedDispatcher == null) {
            this.mOnBackPressedDispatcher = new v(new B1.h(8, this));
            getLifecycle().a(new InterfaceC0153u() { // from class: androidx.activity.ComponentActivity.6
                @Override // androidx.lifecycle.InterfaceC0153u
                public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) {
                    if (enumC0149p == EnumC0149p.ON_CREATE) {
                        v vVar = ComponentActivity.this.mOnBackPressedDispatcher;
                        OnBackInvokedDispatcher onBackInvokedDispatcherA = h.a((ComponentActivity) interfaceC0155w);
                        vVar.getClass();
                        d3.i.e("invoker", onBackInvokedDispatcherA);
                        vVar.f3211e = onBackInvokedDispatcherA;
                        vVar.c(vVar.f3212g);
                    }
                }
            });
        }
        return this.mOnBackPressedDispatcher;
    }

    @Override // x0.f
    public final x0.d getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f9628b;
    }

    @Override // androidx.lifecycle.d0
    public c0 getViewModelStore() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        ensureViewModelStore();
        return this.mViewModelStore;
    }

    public void initializeViewTreeOwners() {
        S.h(getWindow().getDecorView(), this);
        View decorView = getWindow().getDecorView();
        d3.i.e("<this>", decorView);
        decorView.setTag(R.id.view_tree_view_model_store_owner, this);
        AbstractC0739a.r(getWindow().getDecorView(), this);
        View decorView2 = getWindow().getDecorView();
        d3.i.e("<this>", decorView2);
        decorView2.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        View decorView3 = getWindow().getDecorView();
        d3.i.e("<this>", decorView3);
        decorView3.setTag(R.id.report_drawn, this);
    }

    public void invalidateMenu() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i5, int i6, Intent intent) {
        if (this.mActivityResultRegistry.a(i5, i6, intent)) {
            return;
        }
        super.onActivityResult(i5, i6, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        getOnBackPressedDispatcher().b();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator<I.a> it = this.mOnConfigurationChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(configuration);
        }
    }

    @Override // y.h, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.mSavedStateRegistryController.b(bundle);
        C0100a c0100a = this.mContextAwareHelper;
        c0100a.getClass();
        c0100a.f3026b = this;
        Iterator it = c0100a.f3025a.iterator();
        while (it.hasNext()) {
            ((InterfaceC0101b) it.next()).a(this);
        }
        super.onCreate(bundle);
        int i5 = O.f4018c;
        S.g(this);
        int i6 = this.mContentLayoutId;
        if (i6 != 0) {
            setContentView(i6);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i5, Menu menu) {
        if (i5 != 0) {
            return true;
        }
        super.onCreatePanelMenu(i5, menu);
        C0036j c0036j = this.mMenuHostHelper;
        MenuInflater menuInflater = getMenuInflater();
        Iterator it = c0036j.f987b.iterator();
        while (it.hasNext()) {
            ((androidx.fragment.app.S) ((InterfaceC0038l) it.next())).f3764a.j(menu, menuInflater);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i5, MenuItem menuItem) {
        if (super.onMenuItemSelected(i5, menuItem)) {
            return true;
        }
        if (i5 == 0) {
            return this.mMenuHostHelper.a(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z4) {
        if (this.mDispatchingOnMultiWindowModeChanged) {
            return;
        }
        Iterator<I.a> it = this.mOnMultiWindowModeChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new y.i(z4));
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Iterator<I.a> it = this.mOnNewIntentListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i5, Menu menu) {
        Iterator it = this.mMenuHostHelper.f987b.iterator();
        while (it.hasNext()) {
            ((androidx.fragment.app.S) ((InterfaceC0038l) it.next())).f3764a.p(menu);
        }
        super.onPanelClosed(i5, menu);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z4) {
        if (this.mDispatchingOnPictureInPictureModeChanged) {
            return;
        }
        Iterator<I.a> it = this.mOnPictureInPictureModeChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new C0920A(z4));
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i5, View view, Menu menu) {
        if (i5 != 0) {
            return true;
        }
        super.onPreparePanel(i5, view, menu);
        this.mMenuHostHelper.b(menu);
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i5, String[] strArr, int[] iArr) {
        if (this.mActivityResultRegistry.a(i5, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            return;
        }
        super.onRequestPermissionsResult(i5, strArr, iArr);
    }

    @Deprecated
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        i iVar;
        Object objOnRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        c0 c0Var = this.mViewModelStore;
        if (c0Var == null && (iVar = (i) getLastNonConfigurationInstance()) != null) {
            c0Var = iVar.f3160b;
        }
        if (c0Var == null && objOnRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        i iVar2 = new i();
        iVar2.f3159a = objOnRetainCustomNonConfigurationInstance;
        iVar2.f3160b = c0Var;
        return iVar2;
    }

    @Override // y.h, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        androidx.lifecycle.r lifecycle = getLifecycle();
        if (lifecycle instanceof C0157y) {
            ((C0157y) lifecycle).g();
        }
        super.onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.c(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i5) {
        super.onTrimMemory(i5);
        Iterator<I.a> it = this.mOnTrimMemoryListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(Integer.valueOf(i5));
        }
    }

    public Context peekAvailableContext() {
        return this.mContextAwareHelper.f3026b;
    }

    public final <I, O> androidx.activity.result.c registerForActivityResult(AbstractC0194a abstractC0194a, androidx.activity.result.h hVar, androidx.activity.result.b bVar) {
        return hVar.c("activity_rq#" + this.mNextLocalRequestCode.getAndIncrement(), this, abstractC0194a, bVar);
    }

    @Override // J.InterfaceC0032f
    public void removeMenuProvider(InterfaceC0038l interfaceC0038l) {
        this.mMenuHostHelper.c(interfaceC0038l);
    }

    @Override // z.InterfaceC0937e
    public final void removeOnConfigurationChangedListener(I.a aVar) {
        this.mOnConfigurationChangedListeners.remove(aVar);
    }

    public final void removeOnContextAvailableListener(InterfaceC0101b interfaceC0101b) {
        C0100a c0100a = this.mContextAwareHelper;
        c0100a.getClass();
        d3.i.e("listener", interfaceC0101b);
        c0100a.f3025a.remove(interfaceC0101b);
    }

    @Override // y.y
    public final void removeOnMultiWindowModeChangedListener(I.a aVar) {
        this.mOnMultiWindowModeChangedListeners.remove(aVar);
    }

    public final void removeOnNewIntentListener(I.a aVar) {
        this.mOnNewIntentListeners.remove(aVar);
    }

    @Override // y.z
    public final void removeOnPictureInPictureModeChangedListener(I.a aVar) {
        this.mOnPictureInPictureModeChangedListeners.remove(aVar);
    }

    @Override // z.InterfaceC0938f
    public final void removeOnTrimMemoryListener(I.a aVar) {
        this.mOnTrimMemoryListeners.remove(aVar);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (AbstractC0420a.R()) {
                Trace.beginSection("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            m mVar = this.mFullyDrawnReporter;
            synchronized (mVar.f3167a) {
                try {
                    mVar.f3168b = true;
                    Iterator it = mVar.f3169c.iterator();
                    while (it.hasNext()) {
                        ((InterfaceC0221a) it.next()).a();
                    }
                    mVar.f3169c.clear();
                } finally {
                }
            }
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i5) {
        initializeViewTreeOwners();
        this.mReportFullyDrawnExecutor.a(getWindow().getDecorView());
        super.setContentView(i5);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(Intent intent, int i5) {
        super.startActivityForResult(intent, i5);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i5, Intent intent, int i6, int i7, int i8) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i5, intent, i6, i7, i8);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(Intent intent, int i5, Bundle bundle) {
        super.startActivityForResult(intent, i5, bundle);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i5, Intent intent, int i6, int i7, int i8, Bundle bundle) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i5, intent, i6, i7, i8, bundle);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z4, Configuration configuration) {
        this.mDispatchingOnMultiWindowModeChanged = true;
        try {
            super.onMultiWindowModeChanged(z4, configuration);
            this.mDispatchingOnMultiWindowModeChanged = false;
            Iterator<I.a> it = this.mOnMultiWindowModeChangedListeners.iterator();
            while (it.hasNext()) {
                I.a next = it.next();
                d3.i.e("newConfig", configuration);
                next.accept(new y.i(z4));
            }
        } catch (Throwable th) {
            this.mDispatchingOnMultiWindowModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z4, Configuration configuration) {
        this.mDispatchingOnPictureInPictureModeChanged = true;
        try {
            super.onPictureInPictureModeChanged(z4, configuration);
            this.mDispatchingOnPictureInPictureModeChanged = false;
            Iterator<I.a> it = this.mOnPictureInPictureModeChangedListeners.iterator();
            while (it.hasNext()) {
                I.a next = it.next();
                d3.i.e("newConfig", configuration);
                next.accept(new C0920A(z4));
            }
        } catch (Throwable th) {
            this.mDispatchingOnPictureInPictureModeChanged = false;
            throw th;
        }
    }

    public final <I, O> androidx.activity.result.c registerForActivityResult(AbstractC0194a abstractC0194a, androidx.activity.result.b bVar) {
        return registerForActivityResult(abstractC0194a, this.mActivityResultRegistry, bVar);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        initializeViewTreeOwners();
        this.mReportFullyDrawnExecutor.a(getWindow().getDecorView());
        super.setContentView(view);
    }

    public void addMenuProvider(final InterfaceC0038l interfaceC0038l, InterfaceC0155w interfaceC0155w) {
        final C0036j c0036j = this.mMenuHostHelper;
        c0036j.f987b.add(interfaceC0038l);
        c0036j.f986a.run();
        androidx.lifecycle.r lifecycle = interfaceC0155w.getLifecycle();
        HashMap map = c0036j.f988c;
        C0035i c0035i = (C0035i) map.remove(interfaceC0038l);
        if (c0035i != null) {
            c0035i.f983a.b(c0035i.f984b);
            c0035i.f984b = null;
        }
        map.put(interfaceC0038l, new C0035i(lifecycle, new InterfaceC0153u() { // from class: J.h
            @Override // androidx.lifecycle.InterfaceC0153u
            public final void a(InterfaceC0155w interfaceC0155w2, EnumC0149p enumC0149p) {
                EnumC0149p enumC0149p2 = EnumC0149p.ON_DESTROY;
                C0036j c0036j2 = c0036j;
                if (enumC0149p == enumC0149p2) {
                    c0036j2.c(interfaceC0038l);
                } else {
                    c0036j2.getClass();
                }
            }
        }));
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        this.mReportFullyDrawnExecutor.a(getWindow().getDecorView());
        super.setContentView(view, layoutParams);
    }

    public void addMenuProvider(final InterfaceC0038l interfaceC0038l, InterfaceC0155w interfaceC0155w, final EnumC0150q enumC0150q) {
        final C0036j c0036j = this.mMenuHostHelper;
        c0036j.getClass();
        androidx.lifecycle.r lifecycle = interfaceC0155w.getLifecycle();
        HashMap map = c0036j.f988c;
        C0035i c0035i = (C0035i) map.remove(interfaceC0038l);
        if (c0035i != null) {
            c0035i.f983a.b(c0035i.f984b);
            c0035i.f984b = null;
        }
        map.put(interfaceC0038l, new C0035i(lifecycle, new InterfaceC0153u() { // from class: J.g
            @Override // androidx.lifecycle.InterfaceC0153u
            public final void a(InterfaceC0155w interfaceC0155w2, EnumC0149p enumC0149p) {
                C0036j c0036j2 = c0036j;
                c0036j2.getClass();
                EnumC0149p.Companion.getClass();
                EnumC0150q enumC0150q2 = enumC0150q;
                EnumC0149p enumC0149pC = C0147n.c(enumC0150q2);
                Runnable runnable = c0036j2.f986a;
                CopyOnWriteArrayList copyOnWriteArrayList = c0036j2.f987b;
                InterfaceC0038l interfaceC0038l2 = interfaceC0038l;
                if (enumC0149p == enumC0149pC) {
                    copyOnWriteArrayList.add(interfaceC0038l2);
                    runnable.run();
                } else if (enumC0149p == EnumC0149p.ON_DESTROY) {
                    c0036j2.c(interfaceC0038l2);
                } else if (enumC0149p == C0147n.a(enumC0150q2)) {
                    copyOnWriteArrayList.remove(interfaceC0038l2);
                    runnable.run();
                }
            }
        }));
    }
}
