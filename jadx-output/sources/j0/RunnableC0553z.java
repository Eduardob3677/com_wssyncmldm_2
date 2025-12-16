package j0;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* renamed from: j0.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0553z implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7600c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f7601d;

    public /* synthetic */ RunnableC0553z(RecyclerView recyclerView, int i5) {
        this.f7600c = i5;
        this.f7601d = recyclerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        long j3;
        RecyclerView recyclerView4 = this.f7601d;
        switch (this.f7600c) {
            case 0:
                View childAt = recyclerView4.getChildAt(0);
                if (childAt != null) {
                    childAt.requestFocus();
                    return;
                }
                return;
            case 1:
                if (!recyclerView4.f4900w || recyclerView4.isLayoutRequested()) {
                    return;
                }
                if (!recyclerView4.f4895u) {
                    recyclerView4.requestLayout();
                    return;
                } else if (recyclerView4.f4909z) {
                    recyclerView4.f4906y = true;
                    return;
                } else {
                    recyclerView4.u();
                    return;
                }
            case 2:
                boolean z4 = RecyclerView.f4770l2;
                recyclerView4.getClass();
                throw null;
            case 3:
                boolean z5 = RecyclerView.f4770l2;
                recyclerView4.getClass();
                throw null;
            case 4:
                recyclerView4.setupGoToTop(0);
                return;
            default:
                F f = recyclerView4.f4815O;
                if (f != null) {
                    C0539k c0539k = (C0539k) f;
                    ArrayList arrayList = c0539k.f7484e;
                    boolean z6 = !arrayList.isEmpty();
                    ArrayList arrayList2 = c0539k.f7485g;
                    boolean z7 = !arrayList2.isEmpty();
                    ArrayList arrayList3 = c0539k.f7486h;
                    boolean z8 = !arrayList3.isEmpty();
                    ArrayList arrayList4 = c0539k.f;
                    boolean z9 = !arrayList4.isEmpty();
                    if (z6 || z7 || z9 || z8) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            b0 b0Var = (b0) it.next();
                            View view = b0Var.f7406a;
                            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                            if (view.getTag() == null || !view.getTag().equals("preferencecategory")) {
                                recyclerView3 = recyclerView4;
                                j3 = 100;
                            } else {
                                recyclerView3 = recyclerView4;
                                j3 = 0;
                            }
                            c0539k.n.add(b0Var);
                            viewPropertyAnimatorAnimate.setDuration(j3).alpha(0.0f).setListener(new C0533e(c0539k, b0Var, viewPropertyAnimatorAnimate, view)).start();
                            recyclerView4 = recyclerView3;
                        }
                        recyclerView2 = recyclerView4;
                        arrayList.clear();
                        if (z7) {
                            ArrayList arrayList5 = new ArrayList();
                            arrayList5.addAll(arrayList2);
                            c0539k.f7488j.add(arrayList5);
                            arrayList2.clear();
                            new RunnableC0532d(c0539k, arrayList5, 0).run();
                        }
                        if (z8) {
                            ArrayList arrayList6 = new ArrayList();
                            arrayList6.addAll(arrayList3);
                            c0539k.f7489k.add(arrayList6);
                            arrayList3.clear();
                            new RunnableC0532d(c0539k, arrayList6, 1).run();
                        }
                        if (z9) {
                            ArrayList arrayList7 = new ArrayList();
                            arrayList7.addAll(arrayList4);
                            c0539k.f7487i.add(arrayList7);
                            arrayList4.clear();
                            RunnableC0532d runnableC0532d = new RunnableC0532d(c0539k, arrayList7, 2);
                            if (z6 || z7 || z8) {
                                View view2 = ((b0) arrayList7.get(0)).f7406a;
                                if (view2.getTag() == null || !view2.getTag().equals("preferencecategory")) {
                                    WeakHashMap weakHashMap = J.Q.f940a;
                                    view2.postOnAnimationDelayed(runnableC0532d, 100L);
                                } else {
                                    runnableC0532d.run();
                                }
                            } else {
                                runnableC0532d.run();
                            }
                        }
                    } else {
                        recyclerView2 = recyclerView4;
                    }
                    recyclerView = recyclerView2;
                } else {
                    recyclerView = recyclerView4;
                }
                recyclerView.r0 = false;
                return;
        }
    }
}
