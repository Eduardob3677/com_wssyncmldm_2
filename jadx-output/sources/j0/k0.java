package j0;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class k0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f7495a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public int f7496b = Integer.MIN_VALUE;

    /* renamed from: c, reason: collision with root package name */
    public int f7497c = Integer.MIN_VALUE;

    /* renamed from: d, reason: collision with root package name */
    public int f7498d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final int f7499e;
    public final /* synthetic */ StaggeredGridLayoutManager f;

    public k0(StaggeredGridLayoutManager staggeredGridLayoutManager, int i5) {
        this.f = staggeredGridLayoutManager;
        this.f7499e = i5;
    }

    public final void a() {
        View view = (View) this.f7495a.get(r0.size() - 1);
        h0 h0Var = (h0) view.getLayoutParams();
        this.f7497c = this.f.f4924r.b(view);
        h0Var.getClass();
    }

    public final void b() {
        this.f7495a.clear();
        this.f7496b = Integer.MIN_VALUE;
        this.f7497c = Integer.MIN_VALUE;
        this.f7498d = 0;
    }

    public final int c() {
        boolean z4 = this.f.f4929w;
        ArrayList arrayList = this.f7495a;
        return z4 ? e(arrayList.size() - 1, -1, false, true) : e(0, arrayList.size(), false, true);
    }

    public final int d() {
        boolean z4 = this.f.f4929w;
        ArrayList arrayList = this.f7495a;
        return z4 ? e(0, arrayList.size(), false, true) : e(arrayList.size() - 1, -1, false, true);
    }

    public final int e(int i5, int i6, boolean z4, boolean z5) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
        int iK = staggeredGridLayoutManager.f4924r.k();
        int iG = staggeredGridLayoutManager.f4924r.g();
        int i7 = i6 > i5 ? 1 : -1;
        while (i5 != i6) {
            View view = (View) this.f7495a.get(i5);
            int iE = staggeredGridLayoutManager.f4924r.e(view);
            int iB = staggeredGridLayoutManager.f4924r.b(view);
            boolean z6 = false;
            boolean z7 = !z5 ? iE >= iG : iE > iG;
            if (!z5 ? iB > iK : iB >= iK) {
                z6 = true;
            }
            if (z7 && z6) {
                if (z4) {
                    return J.F(view);
                }
                if (iE < iK || iB > iG) {
                    return J.F(view);
                }
            }
            i5 += i7;
        }
        return -1;
    }

    public final int f(int i5) {
        int i6 = this.f7497c;
        if (i6 != Integer.MIN_VALUE) {
            return i6;
        }
        if (this.f7495a.size() == 0) {
            return i5;
        }
        a();
        return this.f7497c;
    }

    public final View g(int i5, int i6) {
        ArrayList arrayList = this.f7495a;
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
        View view = null;
        if (i6 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.f4929w && J.F(view2) >= i5) || ((!staggeredGridLayoutManager.f4929w && J.F(view2) <= i5) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
        } else {
            int size2 = arrayList.size();
            int i7 = 0;
            while (i7 < size2) {
                View view3 = (View) arrayList.get(i7);
                if ((staggeredGridLayoutManager.f4929w && J.F(view3) <= i5) || ((!staggeredGridLayoutManager.f4929w && J.F(view3) >= i5) || !view3.hasFocusable())) {
                    break;
                }
                i7++;
                view = view3;
            }
        }
        return view;
    }

    public final int h(int i5) {
        int i6 = this.f7496b;
        if (i6 != Integer.MIN_VALUE) {
            return i6;
        }
        if (this.f7495a.size() == 0) {
            return i5;
        }
        View view = (View) this.f7495a.get(0);
        h0 h0Var = (h0) view.getLayoutParams();
        this.f7496b = this.f.f4924r.e(view);
        h0Var.getClass();
        return this.f7496b;
    }
}
