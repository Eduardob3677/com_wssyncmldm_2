package H0;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import j0.P;
import j0.X;

/* loaded from: classes.dex */
public final class i extends LinearLayoutManager {
    public final /* synthetic */ ViewPager2 E;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(ViewPager2 viewPager2) {
        super(1);
        this.E = viewPager2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void C0(X x4, int[] iArr) {
        ViewPager2 viewPager2 = this.E;
        int offscreenPageLimit = viewPager2.getOffscreenPageLimit();
        if (offscreenPageLimit == -1) {
            super.C0(x4, iArr);
            return;
        }
        int pageSize = viewPager2.getPageSize() * offscreenPageLimit;
        iArr[0] = pageSize;
        iArr[1] = pageSize;
    }

    @Override // j0.J
    public final void T(P p4, X x4, K.h hVar) {
        super.T(p4, x4, hVar);
        this.E.f5046v.getClass();
    }

    @Override // j0.J
    public final boolean g0(P p4, X x4, int i5, Bundle bundle) {
        this.E.f5046v.getClass();
        return super.g0(p4, x4, i5, bundle);
    }

    @Override // j0.J
    public final boolean m0(RecyclerView recyclerView, View view, Rect rect, boolean z4, boolean z5) {
        return false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, j0.J
    public final int o0(int i5, P p4, X x4) {
        ViewPager2 viewPager2 = this.E;
        if (viewPager2.f5050z) {
            ViewPager2.a(viewPager2);
        }
        return super.o0(i5, p4, x4);
    }
}
