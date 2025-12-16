package androidx.activity;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.lifecycle.C0157y;
import androidx.lifecycle.EnumC0149p;
import androidx.lifecycle.InterfaceC0155w;
import androidx.lifecycle.S;
import com.wssyncmldm.R;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public class l extends Dialog implements InterfaceC0155w, w, x0.f {

    /* renamed from: c, reason: collision with root package name */
    public C0157y f3164c;

    /* renamed from: d, reason: collision with root package name */
    public final x0.e f3165d;

    /* renamed from: e, reason: collision with root package name */
    public final v f3166e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(Context context, int i5) {
        super(context, i5);
        d3.i.e("context", context);
        this.f3165d = new x0.e(this);
        this.f3166e = new v(new D1.b(9, this));
    }

    public static void a(l lVar) {
        d3.i.e("this$0", lVar);
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        d3.i.e("view", view);
        c();
        super.addContentView(view, layoutParams);
    }

    public final C0157y b() {
        C0157y c0157y = this.f3164c;
        if (c0157y != null) {
            return c0157y;
        }
        C0157y c0157y2 = new C0157y(this);
        this.f3164c = c0157y2;
        return c0157y2;
    }

    public final void c() {
        Window window = getWindow();
        d3.i.b(window);
        View decorView = window.getDecorView();
        d3.i.d("window!!.decorView", decorView);
        S.h(decorView, this);
        Window window2 = getWindow();
        d3.i.b(window2);
        View decorView2 = window2.getDecorView();
        d3.i.d("window!!.decorView", decorView2);
        decorView2.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        Window window3 = getWindow();
        d3.i.b(window3);
        View decorView3 = window3.getDecorView();
        d3.i.d("window!!.decorView", decorView3);
        AbstractC0739a.r(decorView3, this);
    }

    @Override // androidx.lifecycle.InterfaceC0155w
    public final androidx.lifecycle.r getLifecycle() {
        return b();
    }

    @Override // androidx.activity.w
    public final v getOnBackPressedDispatcher() {
        return this.f3166e;
    }

    @Override // x0.f
    public final x0.d getSavedStateRegistry() {
        return this.f3165d.f9628b;
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.f3166e.b();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
        d3.i.d("onBackInvokedDispatcher", onBackInvokedDispatcher);
        v vVar = this.f3166e;
        vVar.getClass();
        vVar.f3211e = onBackInvokedDispatcher;
        vVar.c(vVar.f3212g);
        this.f3165d.b(bundle);
        b().e(EnumC0149p.ON_CREATE);
    }

    @Override // android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        d3.i.d("super.onSaveInstanceState()", bundleOnSaveInstanceState);
        this.f3165d.c(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        b().e(EnumC0149p.ON_RESUME);
    }

    @Override // android.app.Dialog
    public void onStop() {
        b().e(EnumC0149p.ON_DESTROY);
        this.f3164c = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setContentView(int i5) {
        c();
        super.setContentView(i5);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        d3.i.e("view", view);
        c();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        d3.i.e("view", view);
        c();
        super.setContentView(view, layoutParams);
    }
}
