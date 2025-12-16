package androidx.fragment.app;

import android.util.Log;
import android.view.View;

/* loaded from: classes.dex */
public final /* synthetic */ class t0 implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3947c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3948d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ u0 f3949e;

    public /* synthetic */ t0(Object obj, u0 u0Var, int i5) {
        this.f3947c = i5;
        this.f3948d = obj;
        this.f3949e = u0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3947c) {
            case 0:
                C0120l c0120l = (C0120l) this.f3948d;
                d3.i.e("this$0", c0120l);
                u0 u0Var = this.f3949e;
                d3.i.e("$operation", u0Var);
                if (c0120l.f3913b.contains(u0Var)) {
                    int i5 = u0Var.f3952a;
                    View view = u0Var.f3954c.mView;
                    d3.i.d("operation.fragment.mView", view);
                    B.f.a(i5, view);
                    break;
                }
                break;
            case 1:
                C0120l c0120l2 = (C0120l) this.f3948d;
                d3.i.e("this$0", c0120l2);
                u0 u0Var2 = this.f3949e;
                d3.i.e("$operation", u0Var2);
                c0120l2.f3913b.remove(u0Var2);
                c0120l2.f3914c.remove(u0Var2);
                break;
            default:
                C0117i c0117i = (C0117i) this.f3948d;
                d3.i.e("$transitionInfo", c0117i);
                u0 u0Var3 = this.f3949e;
                d3.i.e("$operation", u0Var3);
                c0117i.a();
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Transition for operation " + u0Var3 + " has completed");
                    break;
                }
                break;
        }
    }
}
