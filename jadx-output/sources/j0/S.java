package j0;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class S extends AbstractC0528C {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f7370a;

    public S(RecyclerView recyclerView) {
        this.f7370a = recyclerView;
    }

    @Override // j0.AbstractC0528C
    public final void a() {
        RecyclerView recyclerView = this.f7370a;
        recyclerView.n(null);
        recyclerView.l0.f = true;
        recyclerView.n0(true);
        if (!recyclerView.f4860g.g()) {
            recyclerView.requestLayout();
        }
        recyclerView.getClass();
        recyclerView.getClass();
    }

    @Override // j0.AbstractC0528C
    public final void b(int i5, Object obj, int i6) {
        RecyclerView recyclerView = this.f7370a;
        recyclerView.n(null);
        C0530b c0530b = recyclerView.f4860g;
        if (i6 < 1) {
            c0530b.getClass();
            return;
        }
        ArrayList arrayList = c0530b.f7401b;
        arrayList.add(c0530b.h(4, i5, i6, obj));
        c0530b.f |= 4;
        if (arrayList.size() == 1) {
            c();
        }
    }

    public final void c() {
        boolean z4 = RecyclerView.q2;
        RecyclerView recyclerView = this.f7370a;
        if (z4 && recyclerView.f4897v && recyclerView.f4895u) {
            WeakHashMap weakHashMap = J.Q.f940a;
            recyclerView.postOnAnimation(recyclerView.f4875k);
        } else {
            recyclerView.f4783C = true;
            recyclerView.requestLayout();
        }
    }
}
