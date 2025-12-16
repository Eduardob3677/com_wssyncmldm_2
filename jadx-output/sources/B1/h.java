package B1;

import J.C0048w;
import J.C0050y;
import J.Q;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.animation.AnimationUtils;
import androidx.databinding.v;
import androidx.lifecycle.C;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.viewpager.widget.ViewPager;
import b1.C0198d;
import b1.q;
import c1.k;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.snackbar.SnackbarContentLayout;
import com.google.android.material.textfield.TextInputLayout;
import com.wssyncmldm.R;
import e.C0405i;
import e.L;
import e.ViewOnLayoutChangeListenerC0399c;
import j.MenuC0508i;
import j0.C0541m;
import java.io.IOException;
import java.util.WeakHashMap;
import s2.C0837c;
import t1.C0856a;
import u1.l;

/* loaded from: classes.dex */
public final class h implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f208c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f209d;

    public /* synthetic */ h(int i5, Object obj) {
        this.f208c = i5;
        this.f209d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() throws Resources.NotFoundException {
        Object obj;
        switch (this.f208c) {
            case 0:
                i iVar = (i) this.f209d;
                iVar.f212c = false;
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) iVar.f214e;
                S.d dVar = bottomSheetBehavior.f5848M;
                if (dVar != null && dVar.f()) {
                    iVar.a(iVar.f211b);
                    return;
                } else {
                    if (bottomSheetBehavior.f5847L == 2) {
                        bottomSheetBehavior.D(iVar.f211b);
                        return;
                    }
                    return;
                }
            case 1:
                ViewPager viewPager = (ViewPager) this.f209d;
                viewPager.setScrollState(0);
                viewPager.o();
                return;
            case 2:
                K2.b bVar = (K2.b) this.f209d;
                bVar.run();
                bVar.onFinish();
                return;
            case 3:
                O.g gVar = (O.g) this.f209d;
                if (gVar.f1931q) {
                    boolean z4 = gVar.f1929o;
                    O.a aVar = gVar.f1919c;
                    if (z4) {
                        gVar.f1929o = false;
                        aVar.getClass();
                        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                        aVar.f1914e = jCurrentAnimationTimeMillis;
                        aVar.f1915g = -1L;
                        aVar.f = jCurrentAnimationTimeMillis;
                        aVar.f1916h = 0.5f;
                    }
                    if ((aVar.f1915g > 0 && AnimationUtils.currentAnimationTimeMillis() > aVar.f1915g + aVar.f1917i) || !gVar.e()) {
                        gVar.f1931q = false;
                        return;
                    }
                    boolean z5 = gVar.f1930p;
                    View view = gVar.f1921e;
                    if (z5) {
                        gVar.f1930p = false;
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                        view.onTouchEvent(motionEventObtain);
                        motionEventObtain.recycle();
                    }
                    if (aVar.f == 0) {
                        throw new RuntimeException("Cannot compute scroll delta before calling start()");
                    }
                    long jCurrentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                    float fA = aVar.a(jCurrentAnimationTimeMillis2);
                    long j3 = jCurrentAnimationTimeMillis2 - aVar.f;
                    aVar.f = jCurrentAnimationTimeMillis2;
                    gVar.f1933s.scrollListBy((int) (j3 * ((fA * 4.0f) + ((-4.0f) * fA * fA)) * aVar.f1913d));
                    WeakHashMap weakHashMap = Q.f940a;
                    view.postOnAnimation(this);
                    return;
                }
                return;
            case 4:
                R1.e eVar = (R1.e) this.f209d;
                C0050y c0050y = new C0050y(((SnackbarContentLayout) eVar.f2304d).f6073g);
                SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) eVar.f2304d;
                int measuredHeight = snackbarContentLayout.f6071d.getMeasuredHeight() / 2;
                c0050y.a(snackbarContentLayout.f6071d, C0048w.a(measuredHeight, measuredHeight, measuredHeight, measuredHeight));
                snackbarContentLayout.f6073g.setTouchDelegate(c0050y);
                return;
            case 5:
                ((S.d) this.f209d).n(0);
                return;
            case 6:
                CheckableImageButton checkableImageButton = ((TextInputLayout) this.f209d).f6112e.f2504i;
                checkableImageButton.performClick();
                checkableImageButton.jumpDrawablesToCurrentState();
                return;
            case 7:
                if (((u1.i) this.f209d).c(new IOException("TIMEOUT"))) {
                    Log.w("Rpc", "No response");
                    return;
                }
                return;
            case 8:
                try {
                    super/*android.app.Activity*/.onBackPressed();
                    return;
                } catch (IllegalStateException e5) {
                    if (!TextUtils.equals(e5.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                        throw e5;
                    }
                    return;
                } catch (NullPointerException e6) {
                    if (!TextUtils.equals(e6.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                        throw e6;
                    }
                    return;
                }
            case 9:
                synchronized (this) {
                    ((v) this.f209d).mPendingRebind = false;
                }
                v.access$300();
                if (((v) this.f209d).mRoot.isAttachedToWindow()) {
                    ((v) this.f209d).executePendingBindings();
                    return;
                } else {
                    ((v) this.f209d).mRoot.removeOnAttachStateChangeListener(v.ROOT_REATTACHED_LISTENER);
                    ((v) this.f209d).mRoot.addOnAttachStateChangeListener(v.ROOT_REATTACHED_LISTENER);
                    return;
                }
            case 10:
                synchronized (((C) this.f209d).f3992a) {
                    obj = ((C) this.f209d).f;
                    ((C) this.f209d).f = C.f3991k;
                }
                ((C) this.f209d).k(obj);
                return;
            case 11:
                ((k) ((C0198d) ((C0837c) this.f209d).f9022c).f5063b).d();
                return;
            case 12:
                ((q) this.f209d).f5103g.b(new Z0.a(4));
                return;
            case 13:
                ViewOnLayoutChangeListenerC0399c viewOnLayoutChangeListenerC0399c = (ViewOnLayoutChangeListenerC0399c) this.f209d;
                int i5 = viewOnLayoutChangeListenerC0399c.f6707b.f6749a.getResources().getConfiguration().orientation;
                C0405i c0405i = viewOnLayoutChangeListenerC0399c.f6707b;
                if (i5 != c0405i.f6744K) {
                    View viewFindViewById = c0405i.f6751c.findViewById(R.id.parentPanel);
                    View viewFindViewById2 = viewFindViewById.findViewById(R.id.title_template);
                    View viewFindViewById3 = viewFindViewById.findViewById(R.id.scrollView);
                    View viewFindViewById4 = viewFindViewById.findViewById(R.id.topPanel);
                    View viewFindViewById5 = viewFindViewById.findViewById(R.id.buttonBarLayout);
                    View viewFindViewById6 = viewFindViewById.findViewById(R.id.customPanel);
                    View viewFindViewById7 = viewFindViewById.findViewById(R.id.contentPanel);
                    boolean z6 = (viewFindViewById6 == null || viewFindViewById6.getVisibility() == 8) ? false : true;
                    boolean z7 = (viewFindViewById4 == null || viewFindViewById4.getVisibility() == 8) ? false : true;
                    boolean z8 = (viewFindViewById7 == null || viewFindViewById7.getVisibility() == 8) ? false : true;
                    View view2 = c0405i.f6737C;
                    boolean z9 = (view2 == null || view2.getVisibility() == 8) ? false : true;
                    Resources resources = c0405i.f6749a.getResources();
                    if ((!z6 || z7 || z8) && !z9) {
                        viewFindViewById.setPadding(0, resources.getDimensionPixelSize(R.dimen.sesl_dialog_title_padding_top), 0, 0);
                    } else {
                        viewFindViewById.setPadding(0, 0, 0, 0);
                    }
                    if (viewFindViewById2 != null) {
                        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.sesl_dialog_padding_horizontal);
                        if (z6 && z7 && !z8) {
                            viewFindViewById2.setPadding(dimensionPixelSize, 0, dimensionPixelSize, 0);
                        } else {
                            viewFindViewById2.setPadding(dimensionPixelSize, 0, dimensionPixelSize, resources.getDimensionPixelSize(R.dimen.sesl_dialog_title_padding_bottom));
                        }
                    }
                    if (viewFindViewById3 != null) {
                        viewFindViewById3.setPadding(resources.getDimensionPixelSize(R.dimen.sesl_dialog_body_text_scroll_padding_start), 0, resources.getDimensionPixelSize(R.dimen.sesl_dialog_body_text_scroll_padding_end), resources.getDimensionPixelSize(R.dimen.sesl_dialog_body_text_padding_bottom));
                    }
                    if (viewFindViewById5 != null) {
                        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.sesl_dialog_button_bar_padding_horizontal);
                        viewFindViewById5.setPadding(dimensionPixelSize2, 0, dimensionPixelSize2, resources.getDimensionPixelSize(R.dimen.sesl_dialog_button_bar_padding_bottom));
                    }
                    viewOnLayoutChangeListenerC0399c.f6706a.requestLayout();
                }
                C0405i c0405i2 = viewOnLayoutChangeListenerC0399c.f6707b;
                c0405i2.f6744K = c0405i2.f6749a.getResources().getConfiguration().orientation;
                return;
            case 14:
                L l5 = (L) this.f209d;
                Window.Callback callback = l5.f6664b;
                Menu menuR = l5.r();
                MenuC0508i menuC0508i = menuR instanceof MenuC0508i ? (MenuC0508i) menuR : null;
                if (menuC0508i != null) {
                    menuC0508i.w();
                }
                try {
                    menuR.clear();
                    if (!callback.onCreatePanelMenu(0, menuR) || !callback.onPreparePanel(0, null, menuR)) {
                        menuR.clear();
                    }
                    if (menuC0508i != null) {
                        menuC0508i.v();
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    if (menuC0508i != null) {
                        menuC0508i.v();
                    }
                    throw th;
                }
            case 15:
                C0541m c0541m = (C0541m) this.f209d;
                int i6 = c0541m.f7508A;
                ValueAnimator valueAnimator = c0541m.f7533z;
                if (i6 == 1) {
                    valueAnimator.cancel();
                } else if (i6 != 2) {
                    return;
                }
                c0541m.f7508A = 3;
                valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
                valueAnimator.setDuration(500);
                valueAnimator.start();
                return;
            case 16:
                ((StaggeredGridLayoutManager) this.f209d).D0();
                return;
            case 17:
                ((C0856a) this.f209d).d();
                return;
            default:
                synchronized (((l) this.f209d).f9328e) {
                    try {
                        u1.b bVar2 = (u1.b) ((l) this.f209d).f;
                        if (bVar2 != null) {
                            bVar2.H();
                        }
                    } finally {
                    }
                }
                return;
        }
    }
}
