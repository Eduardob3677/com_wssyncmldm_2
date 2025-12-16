package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import java.util.List;

/* renamed from: androidx.fragment.app.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0112d implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3840c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3841d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3842e;
    public final /* synthetic */ Object f;

    public /* synthetic */ RunnableC0112d(C0120l c0120l, View view, C0115g c0115g) {
        this.f3840c = 2;
        this.f = c0120l;
        this.f3841d = view;
        this.f3842e = c0115g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3840c) {
            case 0:
                List list = (List) this.f3841d;
                d3.i.e("$awaitingContainerChanges", list);
                u0 u0Var = (u0) this.f3842e;
                d3.i.e("$operation", u0Var);
                d3.i.e("this$0", (C0120l) this.f);
                if (list.contains(u0Var)) {
                    list.remove(u0Var);
                    View view = u0Var.f3954c.mView;
                    int i5 = u0Var.f3952a;
                    d3.i.d("view", view);
                    B.f.a(i5, view);
                    break;
                }
                break;
            case 1:
                d3.i.e("$impl", (r0) this.f3841d);
                Rect rect = (Rect) this.f;
                d3.i.e("$lastInEpicenterRect", rect);
                r0.g(rect, (View) this.f3842e);
                break;
            default:
                C0120l c0120l = (C0120l) this.f;
                d3.i.e("this$0", c0120l);
                C0115g c0115g = (C0115g) this.f3842e;
                d3.i.e("$animationInfo", c0115g);
                c0120l.f3912a.endViewTransition((View) this.f3841d);
                c0115g.a();
                break;
        }
    }

    public /* synthetic */ RunnableC0112d(Object obj, Object obj2, Object obj3, int i5) {
        this.f3840c = i5;
        this.f3841d = obj;
        this.f3842e = obj2;
        this.f = obj3;
    }
}
