package androidx.fragment.app;

import a.InterfaceC0101b;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.C0157y;
import androidx.lifecycle.EnumC0149p;
import androidx.lifecycle.EnumC0150q;
import c0.AbstractC0207a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import y.AbstractC0921a;
import y.InterfaceC0924d;

/* loaded from: classes.dex */
public abstract class G extends ComponentActivity implements InterfaceC0924d {
    static final String LIFECYCLE_TAG = "android:support:lifecycle";
    boolean mCreated;
    boolean mResumed;
    final K mFragments = new K(new F(this));
    final C0157y mFragmentLifecycleRegistry = new C0157y(this);
    boolean mStopped = true;

    public G() {
        getSavedStateRegistry().c(LIFECYCLE_TAG, new C(0, this));
        final int i5 = 0;
        addOnConfigurationChangedListener(new I.a(this) { // from class: androidx.fragment.app.D

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ G f3736b;

            {
                this.f3736b = this;
            }

            @Override // I.a
            public final void accept(Object obj) {
                switch (i5) {
                    case 0:
                        this.f3736b.mFragments.a();
                        break;
                    default:
                        this.f3736b.mFragments.a();
                        break;
                }
            }
        });
        final int i6 = 1;
        addOnNewIntentListener(new I.a(this) { // from class: androidx.fragment.app.D

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ G f3736b;

            {
                this.f3736b = this;
            }

            @Override // I.a
            public final void accept(Object obj) {
                switch (i6) {
                    case 0:
                        this.f3736b.mFragments.a();
                        break;
                    default:
                        this.f3736b.mFragments.a();
                        break;
                }
            }
        });
        addOnContextAvailableListener(new InterfaceC0101b() { // from class: androidx.fragment.app.E
            @Override // a.InterfaceC0101b
            public final void a(Context context) {
                L l5 = this.f3737a.mFragments.f3749a;
                l5.f.b(l5, l5, null);
            }
        });
    }

    public static boolean i(Z z4) {
        boolean zI = false;
        for (Fragment fragment : z4.f3788c.f()) {
            if (fragment != null) {
                if (fragment.getHost() != null) {
                    zI |= i(fragment.getChildFragmentManager());
                }
                s0 s0Var = fragment.mViewLifecycleOwner;
                EnumC0150q enumC0150q = EnumC0150q.f;
                if (s0Var != null) {
                    s0Var.b();
                    if (s0Var.f.f4073c.compareTo(enumC0150q) >= 0) {
                        fragment.mViewLifecycleOwner.f.g();
                        zI = true;
                    }
                }
                if (fragment.mLifecycleRegistry.f4073c.compareTo(enumC0150q) >= 0) {
                    fragment.mLifecycleRegistry.g();
                    zI = true;
                }
            }
        }
        return zI;
    }

    public final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.f3749a.f.f.onCreateView(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (shouldDumpInternalState(strArr)) {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            String str2 = str + "  ";
            printWriter.print(str2);
            printWriter.print("mCreated=");
            printWriter.print(this.mCreated);
            printWriter.print(" mResumed=");
            printWriter.print(this.mResumed);
            printWriter.print(" mStopped=");
            printWriter.print(this.mStopped);
            if (getApplication() != null) {
                AbstractC0207a.a(this).b(str2, printWriter);
            }
            this.mFragments.f3749a.f.u(str, fileDescriptor, printWriter, strArr);
        }
    }

    public Z getSupportFragmentManager() {
        return this.mFragments.f3749a.f;
    }

    @Deprecated
    public AbstractC0207a getSupportLoaderManager() {
        return AbstractC0207a.a(this);
    }

    public void markFragmentsCreated() {
        while (i(getSupportFragmentManager())) {
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i5, int i6, Intent intent) {
        this.mFragments.a();
        super.onActivityResult(i5, i6, intent);
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        t4.a aVar;
        Fragment fragment = (Fragment) R2.m.P0(0, getSupportFragmentManager().f3788c.f());
        if (fragment != null && (aVar = fragment.mDisposableHandle) != null) {
            aVar.a();
        }
        super.onBackPressed();
    }

    @Override // androidx.activity.ComponentActivity, y.h, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.e(EnumC0149p.ON_CREATE);
        a0 a0Var = this.mFragments.f3749a.f;
        a0Var.E = false;
        a0Var.f3778F = false;
        a0Var.f3784L.f = false;
        a0Var.t(1);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.f3749a.f.k();
        this.mFragmentLifecycleRegistry.e(EnumC0149p.ON_DESTROY);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i5, MenuItem menuItem) {
        if (super.onMenuItemSelected(i5, menuItem)) {
            return true;
        }
        if (i5 == 6) {
            return this.mFragments.f3749a.f.i(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.f3749a.f.t(5);
        this.mFragmentLifecycleRegistry.e(EnumC0149p.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i5, String[] strArr, int[] iArr) {
        this.mFragments.a();
        super.onRequestPermissionsResult(i5, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.mResumed = true;
        this.mFragments.a();
        this.mFragments.f3749a.f.x(true);
    }

    public void onResumeFragments() {
        this.mFragmentLifecycleRegistry.e(EnumC0149p.ON_RESUME);
        a0 a0Var = this.mFragments.f3749a.f;
        a0Var.E = false;
        a0Var.f3778F = false;
        a0Var.f3784L.f = false;
        a0Var.t(7);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            a0 a0Var = this.mFragments.f3749a.f;
            a0Var.E = false;
            a0Var.f3778F = false;
            a0Var.f3784L.f = false;
            a0Var.t(4);
        }
        this.mFragments.a();
        this.mFragments.f3749a.f.x(true);
        this.mFragmentLifecycleRegistry.e(EnumC0149p.ON_START);
        a0 a0Var2 = this.mFragments.f3749a.f;
        a0Var2.E = false;
        a0Var2.f3778F = false;
        a0Var2.f3784L.f = false;
        a0Var2.t(5);
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        a0 a0Var = this.mFragments.f3749a.f;
        a0Var.f3778F = true;
        a0Var.f3784L.f = true;
        a0Var.t(4);
        this.mFragmentLifecycleRegistry.e(EnumC0149p.ON_STOP);
    }

    public void setEnterSharedElementCallback(y.B b3) {
        AbstractC0921a.c(this, null);
    }

    public void setExitSharedElementCallback(y.B b3) {
        AbstractC0921a.d(this, null);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i5, Bundle bundle) {
        if (i5 == -1) {
            startActivityForResult(intent, -1, bundle);
        } else {
            fragment.startActivityForResult(intent, i5, bundle);
        }
    }

    @Deprecated
    public void startIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int i5, Intent intent, int i6, int i7, int i8, Bundle bundle) throws IntentSender.SendIntentException {
        if (i5 == -1) {
            startIntentSenderForResult(intentSender, i5, intent, i6, i7, i8, bundle);
        } else {
            fragment.startIntentSenderForResult(intentSender, i5, intent, i6, i7, i8, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        AbstractC0921a.a(this);
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateMenu();
    }

    public void supportPostponeEnterTransition() {
        AbstractC0921a.b(this);
    }

    public void supportStartPostponedEnterTransition() {
        AbstractC0921a.e(this);
    }

    @Override // y.InterfaceC0924d
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i5) {
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i5) {
        startActivityFromFragment(fragment, intent, i5, (Bundle) null);
    }
}
