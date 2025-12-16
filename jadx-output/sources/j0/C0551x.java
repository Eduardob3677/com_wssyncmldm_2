package j0;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.OverScroller;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* renamed from: j0.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0551x extends L {

    /* renamed from: a, reason: collision with root package name */
    public RecyclerView f7595a;

    /* renamed from: b, reason: collision with root package name */
    public final f0 f7596b = new f0(this);

    /* renamed from: c, reason: collision with root package name */
    public C0550w f7597c;

    /* renamed from: d, reason: collision with root package name */
    public C0550w f7598d;

    public static int c(View view, androidx.emoji2.text.f fVar) {
        return ((fVar.c(view) / 2) + fVar.e(view)) - ((fVar.l() / 2) + fVar.k());
    }

    public static View d(J j3, androidx.emoji2.text.f fVar) {
        int iV = j3.v();
        View view = null;
        if (iV == 0) {
            return null;
        }
        int iL = (fVar.l() / 2) + fVar.k();
        int i5 = Integer.MAX_VALUE;
        for (int i6 = 0; i6 < iV; i6++) {
            View viewU = j3.u(i6);
            int iAbs = Math.abs(((fVar.c(viewU) / 2) + fVar.e(viewU)) - iL);
            if (iAbs < i5) {
                view = viewU;
                i5 = iAbs;
            }
        }
        return view;
    }

    public final void a(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f7595a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        f0 f0Var = this.f7596b;
        if (recyclerView2 != null) {
            ArrayList arrayList = recyclerView2.n0;
            if (arrayList != null) {
                arrayList.remove(f0Var);
            }
            this.f7595a.setOnFlingListener(null);
        }
        this.f7595a = recyclerView;
        if (recyclerView != null) {
            if (recyclerView.getOnFlingListener() != null) {
                throw new IllegalStateException("An instance of OnFlingListener already set.");
            }
            this.f7595a.k(f0Var);
            this.f7595a.setOnFlingListener(this);
            new Scroller(this.f7595a.getContext(), new DecelerateInterpolator());
            new OverScroller(this.f7595a.getContext());
            h();
        }
    }

    public final int[] b(J j3, View view) {
        int[] iArr = new int[2];
        if (j3.d()) {
            iArr[0] = c(view, f(j3));
        } else {
            iArr[0] = 0;
        }
        if (j3.e()) {
            iArr[1] = c(view, g(j3));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    public View e(J j3) {
        if (j3.e()) {
            return d(j3, g(j3));
        }
        if (j3.d()) {
            return d(j3, f(j3));
        }
        return null;
    }

    public final androidx.emoji2.text.f f(J j3) {
        C0550w c0550w = this.f7598d;
        if (c0550w == null || ((J) c0550w.f3692b) != j3) {
            this.f7598d = new C0550w(j3, 0);
        }
        return this.f7598d;
    }

    public final androidx.emoji2.text.f g(J j3) {
        C0550w c0550w = this.f7597c;
        if (c0550w == null || ((J) c0550w.f3692b) != j3) {
            this.f7597c = new C0550w(j3, 1);
        }
        return this.f7597c;
    }

    public final void h() {
        J layoutManager;
        View viewE;
        RecyclerView recyclerView = this.f7595a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewE = e(layoutManager)) == null) {
            return;
        }
        int[] iArrB = b(layoutManager, viewE);
        int i5 = iArrB[0];
        if (i5 == 0 && iArrB[1] == 0) {
            return;
        }
        this.f7595a.A0(i5, false, iArrB[1]);
    }
}
