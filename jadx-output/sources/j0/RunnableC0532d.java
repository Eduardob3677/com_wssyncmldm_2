package j0;

import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.PathInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: j0.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0532d implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7428c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7429d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0539k f7430e;

    public /* synthetic */ RunnableC0532d(C0539k c0539k, ArrayList arrayList, int i5) {
        this.f7428c = i5;
        this.f7430e = c0539k;
        this.f7429d = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList;
        long j3;
        RunnableC0532d runnableC0532d = this;
        switch (runnableC0532d.f7428c) {
            case 0:
                ArrayList arrayList2 = runnableC0532d.f7429d;
                Iterator it = arrayList2.iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    C0539k c0539k = runnableC0532d.f7430e;
                    if (!zHasNext) {
                        arrayList2.clear();
                        c0539k.f7488j.remove(arrayList2);
                        break;
                    } else {
                        C0538j c0538j = (C0538j) it.next();
                        b0 b0Var = c0538j.f7468a;
                        c0539k.getClass();
                        View view = b0Var.f7406a;
                        int i5 = c0538j.f7471d - c0538j.f7469b;
                        int i6 = c0538j.f7472e - c0538j.f7470c;
                        if (i5 != 0) {
                            view.animate().translationX(0.0f);
                        }
                        if (i6 != 0) {
                            view.animate().translationY(0.0f);
                        }
                        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                        viewPropertyAnimatorAnimate.setInterpolator(C0539k.f7483s);
                        c0539k.f7491m.add(b0Var);
                        View view2 = c0539k.f7332c;
                        if (view2 instanceof RecyclerView) {
                            RecyclerView recyclerView = (RecyclerView) view2;
                            if (recyclerView.f4890r1 != -1 && b0Var.c() == recyclerView.f4863h.g() - 1) {
                                viewPropertyAnimatorAnimate.setUpdateListener(new C0534f(recyclerView, 0));
                            }
                        }
                        viewPropertyAnimatorAnimate.setDuration(400L).setListener(new C0535g(c0539k, b0Var, i5, view, i6, viewPropertyAnimatorAnimate)).start();
                    }
                }
                break;
            case 1:
                ArrayList arrayList3 = runnableC0532d.f7429d;
                Iterator it2 = arrayList3.iterator();
                while (true) {
                    boolean zHasNext2 = it2.hasNext();
                    C0539k c0539k2 = runnableC0532d.f7430e;
                    if (!zHasNext2) {
                        arrayList3.clear();
                        c0539k2.f7489k.remove(arrayList3);
                        break;
                    } else {
                        C0537i c0537i = (C0537i) it2.next();
                        c0539k2.getClass();
                        b0 b0Var2 = c0537i.f7460a;
                        View view3 = b0Var2 == null ? null : b0Var2.f7406a;
                        b0 b0Var3 = c0537i.f7461b;
                        View view4 = b0Var3 != null ? b0Var3.f7406a : null;
                        PathInterpolator pathInterpolator = C0539k.f7483s;
                        ArrayList arrayList4 = c0539k2.f7492o;
                        if (view3 != null) {
                            ViewPropertyAnimator duration = view3.animate().setDuration(400L);
                            arrayList4.add(c0537i.f7460a);
                            duration.translationX(c0537i.f7464e - c0537i.f7462c);
                            duration.translationY(c0537i.f - c0537i.f7463d);
                            arrayList = arrayList3;
                            j3 = 400;
                            duration.alpha(0.0f).setDuration(400L).setInterpolator(pathInterpolator).setListener(new C0536h(c0539k2, c0537i, duration, view3, 0)).start();
                        } else {
                            arrayList = arrayList3;
                            j3 = 400;
                        }
                        if (view4 != null) {
                            ViewPropertyAnimator viewPropertyAnimatorAnimate2 = view4.animate();
                            arrayList4.add(c0537i.f7461b);
                            viewPropertyAnimatorAnimate2.translationX(0.0f).translationY(0.0f).setDuration(j3).alpha(1.0f).setInterpolator(pathInterpolator).setListener(new C0536h(c0539k2, c0537i, viewPropertyAnimatorAnimate2, view4, 1)).start();
                        }
                        runnableC0532d = this;
                        arrayList3 = arrayList;
                    }
                }
            default:
                ArrayList arrayList5 = runnableC0532d.f7429d;
                Iterator it3 = arrayList5.iterator();
                while (true) {
                    boolean zHasNext3 = it3.hasNext();
                    C0539k c0539k3 = runnableC0532d.f7430e;
                    if (!zHasNext3) {
                        arrayList5.clear();
                        c0539k3.f7487i.remove(arrayList5);
                        break;
                    } else {
                        b0 b0Var4 = (b0) it3.next();
                        c0539k3.getClass();
                        View view5 = b0Var4.f7406a;
                        ViewPropertyAnimator viewPropertyAnimatorAnimate3 = view5.animate();
                        long j5 = (view5.getTag() == null || !view5.getTag().equals("preferencecategory")) ? 200L : 0L;
                        c0539k3.f7490l.add(b0Var4);
                        viewPropertyAnimatorAnimate3.alpha(1.0f).setDuration(j5).setListener(new C0533e(c0539k3, b0Var4, view5, viewPropertyAnimatorAnimate3)).start();
                    }
                }
                break;
        }
    }
}
