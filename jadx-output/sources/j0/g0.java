package j0;

import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class g0 {

    /* renamed from: a, reason: collision with root package name */
    public int f7448a;

    /* renamed from: b, reason: collision with root package name */
    public int f7449b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7450c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f7451d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7452e;
    public int[] f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f7453g;

    public g0(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f7453g = staggeredGridLayoutManager;
        a();
    }

    public final void a() {
        this.f7448a = -1;
        this.f7449b = Integer.MIN_VALUE;
        this.f7450c = false;
        this.f7451d = false;
        this.f7452e = false;
        int[] iArr = this.f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }
}
