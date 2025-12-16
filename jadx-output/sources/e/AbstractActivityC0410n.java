package e;

import android.R;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import androidx.lifecycle.S;
import com.idm.core.wbxml.IDMWbxmlConstants;
import i.AbstractC0474b;
import i.InterfaceC0473a;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import k.C0622s;
import k.D0;
import k.L1;
import o.C0716e;
import p.AbstractC0735a;
import p0.AbstractC0739a;

/* renamed from: e.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractActivityC0410n extends androidx.fragment.app.G implements InterfaceC0411o, y.C {
    private static final String DELEGATE_TAG = "androidx:appcompat";
    private r mDelegate;
    private Resources mResources;

    public AbstractActivityC0410n() {
        getSavedStateRegistry().c(DELEGATE_TAG, new C0408l(this));
        addOnContextAvailableListener(new C0409m(this));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        j();
        C c2 = (C) getDelegate();
        c2.x();
        ((ViewGroup) c2.f6600A.findViewById(R.id.content)).addView(view, layoutParams);
        c2.f6635m.a(c2.f6634l.getCallback());
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        int i5 = 1;
        C c2 = (C) getDelegate();
        c2.f6613O = true;
        int i6 = c2.f6617U;
        if (i6 == -100) {
            i6 = r.f6781d;
        }
        int iD = c2.D(context, i6);
        if (r.e(context) && r.e(context)) {
            int i7 = F.b.f653a;
            if (!r.f) {
                r.f6780c.execute(new com.idm.fotaagent.analytics.diagmon.b(context, i5));
            }
        }
        Configuration configuration = null;
        if (C.n0 && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(C.u(context, iD, null, false));
            } catch (IllegalStateException unused) {
            }
        } else if (context instanceof i.e) {
            try {
                ((i.e) context).a(C.u(context, iD, null, false));
            } catch (IllegalStateException unused2) {
            }
        } else if (C.m0) {
            Configuration configuration2 = new Configuration();
            configuration2.uiMode = -1;
            configuration2.fontScale = 0.0f;
            Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
            Configuration configuration4 = context.getResources().getConfiguration();
            configuration3.uiMode = configuration4.uiMode;
            if (!configuration3.equals(configuration4)) {
                configuration = new Configuration();
                configuration.fontScale = 0.0f;
                if (configuration3.diff(configuration4) != 0) {
                    float f = configuration3.fontScale;
                    float f5 = configuration4.fontScale;
                    if (f != f5) {
                        configuration.fontScale = f5;
                    }
                    int i8 = configuration3.mcc;
                    int i9 = configuration4.mcc;
                    if (i8 != i9) {
                        configuration.mcc = i9;
                    }
                    int i10 = configuration3.mnc;
                    int i11 = configuration4.mnc;
                    if (i10 != i11) {
                        configuration.mnc = i11;
                    }
                    w.a(configuration3, configuration4, configuration);
                    int i12 = configuration3.touchscreen;
                    int i13 = configuration4.touchscreen;
                    if (i12 != i13) {
                        configuration.touchscreen = i13;
                    }
                    int i14 = configuration3.keyboard;
                    int i15 = configuration4.keyboard;
                    if (i14 != i15) {
                        configuration.keyboard = i15;
                    }
                    int i16 = configuration3.keyboardHidden;
                    int i17 = configuration4.keyboardHidden;
                    if (i16 != i17) {
                        configuration.keyboardHidden = i17;
                    }
                    int i18 = configuration3.navigation;
                    int i19 = configuration4.navigation;
                    if (i18 != i19) {
                        configuration.navigation = i19;
                    }
                    int i20 = configuration3.navigationHidden;
                    int i21 = configuration4.navigationHidden;
                    if (i20 != i21) {
                        configuration.navigationHidden = i21;
                    }
                    int i22 = configuration3.orientation;
                    int i23 = configuration4.orientation;
                    if (i22 != i23) {
                        configuration.orientation = i23;
                    }
                    int i24 = configuration3.screenLayout & 15;
                    int i25 = configuration4.screenLayout & 15;
                    if (i24 != i25) {
                        configuration.screenLayout |= i25;
                    }
                    int i26 = configuration3.screenLayout & IDMWbxmlConstants.WBXML_EXT_0;
                    int i27 = configuration4.screenLayout & IDMWbxmlConstants.WBXML_EXT_0;
                    if (i26 != i27) {
                        configuration.screenLayout |= i27;
                    }
                    int i28 = configuration3.screenLayout & 48;
                    int i29 = configuration4.screenLayout & 48;
                    if (i28 != i29) {
                        configuration.screenLayout |= i29;
                    }
                    int i30 = configuration3.screenLayout & 768;
                    int i31 = configuration4.screenLayout & 768;
                    if (i30 != i31) {
                        configuration.screenLayout |= i31;
                    }
                    int i32 = configuration3.colorMode & 3;
                    int i33 = configuration4.colorMode & 3;
                    if (i32 != i33) {
                        configuration.colorMode |= i33;
                    }
                    int i34 = configuration3.colorMode & 12;
                    int i35 = configuration4.colorMode & 12;
                    if (i34 != i35) {
                        configuration.colorMode |= i35;
                    }
                    int i36 = configuration3.uiMode & 15;
                    int i37 = configuration4.uiMode & 15;
                    if (i36 != i37) {
                        configuration.uiMode |= i37;
                    }
                    int i38 = configuration3.uiMode & 48;
                    int i39 = configuration4.uiMode & 48;
                    if (i38 != i39) {
                        configuration.uiMode |= i39;
                    }
                    int i40 = configuration3.screenWidthDp;
                    int i41 = configuration4.screenWidthDp;
                    if (i40 != i41) {
                        configuration.screenWidthDp = i41;
                    }
                    int i42 = configuration3.screenHeightDp;
                    int i43 = configuration4.screenHeightDp;
                    if (i42 != i43) {
                        configuration.screenHeightDp = i43;
                    }
                    int i44 = configuration3.smallestScreenWidthDp;
                    int i45 = configuration4.smallestScreenWidthDp;
                    if (i44 != i45) {
                        configuration.smallestScreenWidthDp = i45;
                    }
                    int i46 = configuration3.densityDpi;
                    int i47 = configuration4.densityDpi;
                    if (i46 != i47) {
                        configuration.densityDpi = i47;
                    }
                }
            }
            Configuration configurationU = C.u(context, iD, configuration, true);
            i.e eVar = new i.e(context, com.wssyncmldm.R.style.Theme_AppCompat_Empty);
            eVar.a(configurationU);
            try {
                if (context.getTheme() != null) {
                    A.q.a(eVar.getTheme());
                }
            } catch (NullPointerException unused3) {
            }
            context = eVar;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        AbstractC0397a supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.a()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // y.h, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        AbstractC0397a supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.j(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i5) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        C c2 = (C) getDelegate();
        c2.x();
        return (T) c2.f6634l.findViewById(i5);
    }

    public r getDelegate() {
        if (this.mDelegate == null) {
            I i5 = r.f6780c;
            this.mDelegate = new C(this, null, this, this);
        }
        return this.mDelegate;
    }

    public InterfaceC0398b getDrawerToggleDelegate() {
        ((C) getDelegate()).getClass();
        return new P1.e(13);
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        C c2 = (C) getDelegate();
        if (c2.f6637p == null) {
            c2.B();
            AbstractC0397a abstractC0397a = c2.f6636o;
            c2.f6637p = new i.j(abstractC0397a != null ? abstractC0397a.e() : c2.f6633k);
        }
        return c2.f6637p;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        Resources resources = this.mResources;
        if (resources == null) {
            int i5 = L1.f7716a;
        }
        return resources == null ? super.getResources() : resources;
    }

    public AbstractC0397a getSupportActionBar() {
        C c2 = (C) getDelegate();
        c2.B();
        return c2.f6636o;
    }

    @Override // y.C
    public Intent getSupportParentActivityIntent() {
        return AbstractC0735a.h(this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().b();
    }

    public final void j() {
        S.h(getWindow().getDecorView(), this);
        View decorView = getWindow().getDecorView();
        d3.i.e("<this>", decorView);
        decorView.setTag(com.wssyncmldm.R.id.view_tree_view_model_store_owner, this);
        AbstractC0739a.r(getWindow().getDecorView(), this);
        View decorView2 = getWindow().getDecorView();
        d3.i.e("<this>", decorView2);
        decorView2.setTag(com.wssyncmldm.R.id.view_tree_on_back_pressed_dispatcher_owner, this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C c2 = (C) getDelegate();
        if (c2.f6604F && c2.f6647z) {
            c2.B();
            AbstractC0397a abstractC0397a = c2.f6636o;
            if (abstractC0397a != null) {
                abstractC0397a.g();
            }
        }
        C0622s c0622sA = C0622s.a();
        Context context = c2.f6633k;
        synchronized (c0622sA) {
            D0 d02 = c0622sA.f7986a;
            synchronized (d02) {
                C0716e c0716e = (C0716e) d02.f7668a.get(context);
                if (c0716e != null) {
                    c0716e.a();
                }
            }
        }
        c2.f6616T = new Configuration(c2.f6633k.getResources().getConfiguration());
        c2.p(false);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(super.getResources().getConfiguration(), super.getResources().getDisplayMetrics());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    public void onCreateSupportNavigateUpTaskStack(y.D d2) {
        d2.getClass();
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = AbstractC0735a.h(this);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            Context context = d2.f9679d;
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(context.getPackageManager());
            }
            ArrayList arrayList = d2.f9678c;
            int size = arrayList.size();
            try {
                for (Intent intentI = AbstractC0735a.i(context, component); intentI != null; intentI = AbstractC0735a.i(context, intentI.getComponent())) {
                    arrayList.add(size, intentI);
                }
                arrayList.add(supportParentActivityIntent);
            } catch (PackageManager.NameNotFoundException e5) {
                Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                throw new IllegalArgumentException(e5);
            }
        }
    }

    @Override // androidx.fragment.app.G, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getDelegate().g();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i5, KeyEvent keyEvent) {
        return super.onKeyDown(i5, keyEvent);
    }

    public void onLocalesChanged(F.i iVar) {
    }

    @Override // androidx.fragment.app.G, androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i5, MenuItem menuItem) {
        if (super.onMenuItemSelected(i5, menuItem)) {
            return true;
        }
        AbstractC0397a supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.d() & 4) == 0) {
            return false;
        }
        return onSupportNavigateUp();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i5, Menu menu) {
        return super.onMenuOpened(i5, menu);
    }

    public void onNightModeChanged(int i5) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i5, Menu menu) {
        super.onPanelClosed(i5, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onPostCreate(bundle);
        ((C) getDelegate()).x();
    }

    @Override // androidx.fragment.app.G, android.app.Activity
    public void onPostResume() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onPostResume();
        C c2 = (C) getDelegate();
        c2.B();
        AbstractC0397a abstractC0397a = c2.f6636o;
        if (abstractC0397a != null) {
            abstractC0397a.n(true);
        }
    }

    public void onPrepareSupportNavigateUpTaskStack(y.D d2) {
    }

    @Override // androidx.fragment.app.G, android.app.Activity
    public void onStart() throws PackageManager.NameNotFoundException {
        super.onStart();
        ((C) getDelegate()).p(true);
    }

    @Override // androidx.fragment.app.G, android.app.Activity
    public void onStop() {
        super.onStop();
        getDelegate().h();
    }

    @Override // e.InterfaceC0411o
    public void onSupportActionModeFinished(AbstractC0474b abstractC0474b) {
    }

    @Override // e.InterfaceC0411o
    public void onSupportActionModeStarted(AbstractC0474b abstractC0474b) {
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            return false;
        }
        if (!supportShouldUpRecreateTask(supportParentActivityIntent)) {
            supportNavigateUpTo(supportParentActivityIntent);
            return true;
        }
        y.D d2 = new y.D(this);
        onCreateSupportNavigateUpTaskStack(d2);
        onPrepareSupportNavigateUpTaskStack(d2);
        ArrayList arrayList = d2.f9678c;
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        d2.f9679d.startActivities(intentArr, null);
        try {
            finishAffinity();
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity
    public void onTitleChanged(CharSequence charSequence, int i5) {
        super.onTitleChanged(charSequence, i5);
        getDelegate().n(charSequence);
    }

    @Override // e.InterfaceC0411o
    public AbstractC0474b onWindowStartingSupportActionMode(InterfaceC0473a interfaceC0473a) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        AbstractC0397a supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.k()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i5) {
        j();
        getDelegate().k(i5);
    }

    public void setSupportActionBar(Toolbar toolbar) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        C c2 = (C) getDelegate();
        if (c2.f6631j instanceof Activity) {
            c2.B();
            AbstractC0397a abstractC0397a = c2.f6636o;
            if (abstractC0397a instanceof Q) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            c2.f6637p = null;
            if (abstractC0397a != null) {
                abstractC0397a.h();
            }
            c2.f6636o = null;
            if (toolbar != null) {
                Object obj = c2.f6631j;
                L l5 = new L(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : c2.f6638q, c2.f6635m);
                c2.f6636o = l5;
                c2.f6635m.f6795d = l5.f6665c;
                toolbar.setBackInvokedCallbackEnabled(true);
                Window window = c2.f6634l;
                if (window != null) {
                    window.setCallback(c2.f6635m);
                }
            } else {
                c2.f6635m.f6795d = null;
            }
            c2.b();
        }
    }

    @Deprecated
    public void setSupportProgress(int i5) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z4) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z4) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z4) {
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i5) {
        super.setTheme(i5);
        ((C) getDelegate()).f6618V = i5;
    }

    public AbstractC0474b startSupportActionMode(InterfaceC0473a interfaceC0473a) {
        return getDelegate().o(interfaceC0473a);
    }

    @Override // androidx.fragment.app.G
    public void supportInvalidateOptionsMenu() {
        getDelegate().b();
    }

    public void supportNavigateUpTo(Intent intent) {
        navigateUpTo(intent);
    }

    public boolean supportRequestWindowFeature(int i5) {
        return getDelegate().j(i5);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        return shouldUpRecreateTask(intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        j();
        getDelegate().l(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        j();
        getDelegate().m(view, layoutParams);
    }
}
