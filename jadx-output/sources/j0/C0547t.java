package j0;

import android.view.View;
import java.util.List;

/* renamed from: j0.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0547t {

    /* renamed from: a, reason: collision with root package name */
    public boolean f7566a;

    /* renamed from: b, reason: collision with root package name */
    public int f7567b;

    /* renamed from: c, reason: collision with root package name */
    public int f7568c;

    /* renamed from: d, reason: collision with root package name */
    public int f7569d;

    /* renamed from: e, reason: collision with root package name */
    public int f7570e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f7571g;

    /* renamed from: h, reason: collision with root package name */
    public int f7572h;

    /* renamed from: i, reason: collision with root package name */
    public int f7573i;

    /* renamed from: j, reason: collision with root package name */
    public int f7574j;

    /* renamed from: k, reason: collision with root package name */
    public List f7575k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f7576l;

    public final void a(View view) {
        int iC;
        int size = this.f7575k.size();
        View view2 = null;
        int i5 = Integer.MAX_VALUE;
        for (int i6 = 0; i6 < size; i6++) {
            View view3 = ((b0) this.f7575k.get(i6)).f7406a;
            K k5 = (K) view3.getLayoutParams();
            if (view3 != view && !k5.f7352a.j() && (iC = (k5.f7352a.c() - this.f7569d) * this.f7570e) >= 0 && iC < i5) {
                view2 = view3;
                if (iC == 0) {
                    break;
                } else {
                    i5 = iC;
                }
            }
        }
        if (view2 == null) {
            this.f7569d = -1;
        } else {
            this.f7569d = ((K) view2.getLayoutParams()).f7352a.c();
        }
    }

    public final View b(P p4) {
        List list = this.f7575k;
        if (list == null) {
            View view = p4.k(this.f7569d, Long.MAX_VALUE).f7406a;
            this.f7569d += this.f7570e;
            return view;
        }
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = ((b0) this.f7575k.get(i5)).f7406a;
            K k5 = (K) view2.getLayoutParams();
            if (!k5.f7352a.j() && this.f7569d == k5.f7352a.c()) {
                a(view2);
                return view2;
            }
        }
        return null;
    }
}
