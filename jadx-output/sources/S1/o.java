package S1;

import android.content.Context;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
public abstract class o {

    /* renamed from: a, reason: collision with root package name */
    public final TextInputLayout f2519a;

    /* renamed from: b, reason: collision with root package name */
    public final n f2520b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f2521c;

    /* renamed from: d, reason: collision with root package name */
    public final CheckableImageButton f2522d;

    public o(n nVar) {
        this.f2519a = nVar.f2499c;
        this.f2520b = nVar;
        this.f2521c = nVar.getContext();
        this.f2522d = nVar.f2504i;
    }

    public void a() {
    }

    public void b() {
    }

    public int c() {
        return 0;
    }

    public int d() {
        return 0;
    }

    public View.OnFocusChangeListener e() {
        return null;
    }

    public View.OnClickListener f() {
        return null;
    }

    public View.OnFocusChangeListener g() {
        return null;
    }

    public A2.b h() {
        return null;
    }

    public boolean i(int i5) {
        return true;
    }

    public boolean j() {
        return false;
    }

    public boolean k() {
        return this instanceof j;
    }

    public boolean l() {
        return false;
    }

    public void m(EditText editText) {
    }

    public void n(K.h hVar) {
    }

    public void o(AccessibilityEvent accessibilityEvent) {
    }

    public void p(boolean z4) {
    }

    public final void q() {
        this.f2520b.f(false);
    }

    public void r() {
    }

    public void s() {
    }
}
