package S1;

import J.Q;
import J.Z;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import com.google.android.material.textfield.TextInputLayout;
import com.wssyncmldm.R;
import f1.AbstractC0420a;
import java.util.WeakHashMap;
import w1.AbstractC0899a;

/* loaded from: classes.dex */
public final class j extends o {

    /* renamed from: e, reason: collision with root package name */
    public final int f2483e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final TimeInterpolator f2484g;

    /* renamed from: h, reason: collision with root package name */
    public AutoCompleteTextView f2485h;

    /* renamed from: i, reason: collision with root package name */
    public final A2.d f2486i;

    /* renamed from: j, reason: collision with root package name */
    public final ViewOnFocusChangeListenerC0099a f2487j;

    /* renamed from: k, reason: collision with root package name */
    public final A2.b f2488k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f2489l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f2490m;
    public boolean n;

    /* renamed from: o, reason: collision with root package name */
    public long f2491o;

    /* renamed from: p, reason: collision with root package name */
    public AccessibilityManager f2492p;

    /* renamed from: q, reason: collision with root package name */
    public ValueAnimator f2493q;

    /* renamed from: r, reason: collision with root package name */
    public ValueAnimator f2494r;

    public j(n nVar) {
        super(nVar);
        this.f2486i = new A2.d(3, this);
        this.f2487j = new ViewOnFocusChangeListenerC0099a(this, 1);
        this.f2488k = new A2.b(3, this);
        this.f2491o = Long.MAX_VALUE;
        this.f = i3.x.U0(nVar.getContext(), R.attr.motionDurationShort3, 67);
        this.f2483e = i3.x.U0(nVar.getContext(), R.attr.motionDurationShort3, 50);
        this.f2484g = i3.x.V0(nVar.getContext(), R.attr.motionEasingLinearInterpolator, AbstractC0899a.f9596a);
    }

    @Override // S1.o
    public final void a() {
        if (this.f2492p.isTouchExplorationEnabled() && AbstractC0420a.P(this.f2485h) && !this.f2522d.hasFocus()) {
            this.f2485h.dismissDropDown();
        }
        this.f2485h.post(new D1.b(5, this));
    }

    @Override // S1.o
    public final int c() {
        return R.string.exposed_dropdown_menu_content_description;
    }

    @Override // S1.o
    public final int d() {
        return R.drawable.mtrl_dropdown_arrow;
    }

    @Override // S1.o
    public final View.OnFocusChangeListener e() {
        return this.f2487j;
    }

    @Override // S1.o
    public final View.OnClickListener f() {
        return this.f2486i;
    }

    @Override // S1.o
    public final A2.b h() {
        return this.f2488k;
    }

    @Override // S1.o
    public final boolean i(int i5) {
        return i5 != 0;
    }

    @Override // S1.o
    public final boolean j() {
        return this.f2489l;
    }

    @Override // S1.o
    public final boolean l() {
        return this.n;
    }

    @Override // S1.o
    public final void m(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
        }
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
        this.f2485h = autoCompleteTextView;
        autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: S1.h
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                j jVar = this.f2481c;
                jVar.getClass();
                if (motionEvent.getAction() == 1) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - jVar.f2491o;
                    if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300) {
                        jVar.f2490m = false;
                    }
                    jVar.u();
                    jVar.f2490m = true;
                    jVar.f2491o = System.currentTimeMillis();
                }
                return false;
            }
        });
        this.f2485h.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: S1.i
            @Override // android.widget.AutoCompleteTextView.OnDismissListener
            public final void onDismiss() {
                j jVar = this.f2482a;
                jVar.f2490m = true;
                jVar.f2491o = System.currentTimeMillis();
                jVar.t(false);
            }
        });
        this.f2485h.setThreshold(0);
        TextInputLayout textInputLayout = this.f2519a;
        textInputLayout.setErrorIconDrawable((Drawable) null);
        if (!AbstractC0420a.P(editText) && this.f2492p.isTouchExplorationEnabled()) {
            WeakHashMap weakHashMap = Q.f940a;
            this.f2522d.setImportantForAccessibility(2);
        }
        textInputLayout.setEndIconVisible(true);
    }

    @Override // S1.o
    public final void n(K.h hVar) {
        if (!AbstractC0420a.P(this.f2485h)) {
            hVar.g(Spinner.class.getName());
        }
        AccessibilityNodeInfo accessibilityNodeInfo = hVar.f1201a;
        if (accessibilityNodeInfo.isShowingHintText()) {
            accessibilityNodeInfo.setHintText(null);
        }
    }

    @Override // S1.o
    public final void o(AccessibilityEvent accessibilityEvent) {
        if (!this.f2492p.isEnabled() || AbstractC0420a.P(this.f2485h)) {
            return;
        }
        boolean z4 = accessibilityEvent.getEventType() == 32768 && this.n && !this.f2485h.isPopupShowing();
        if (accessibilityEvent.getEventType() == 1 || z4) {
            u();
            this.f2490m = true;
            this.f2491o = System.currentTimeMillis();
        }
    }

    @Override // S1.o
    public final void r() {
        int i5 = 1;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.f2484g;
        valueAnimatorOfFloat.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat.setDuration(this.f);
        valueAnimatorOfFloat.addUpdateListener(new Z(i5, this));
        this.f2494r = valueAnimatorOfFloat;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat2.setDuration(this.f2483e);
        valueAnimatorOfFloat2.addUpdateListener(new Z(i5, this));
        this.f2493q = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.addListener(new C0.q(4, this));
        this.f2492p = (AccessibilityManager) this.f2521c.getSystemService("accessibility");
    }

    @Override // S1.o
    public final void s() {
        AutoCompleteTextView autoCompleteTextView = this.f2485h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.f2485h.setOnDismissListener(null);
        }
    }

    public final void t(boolean z4) {
        if (this.n != z4) {
            this.n = z4;
            this.f2494r.cancel();
            this.f2493q.start();
        }
    }

    public final void u() {
        if (this.f2485h == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f2491o;
        if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300) {
            this.f2490m = false;
        }
        if (this.f2490m) {
            this.f2490m = false;
            return;
        }
        t(!this.n);
        if (!this.n) {
            this.f2485h.dismissDropDown();
        } else {
            this.f2485h.requestFocus();
            this.f2485h.showDropDown();
        }
    }
}
