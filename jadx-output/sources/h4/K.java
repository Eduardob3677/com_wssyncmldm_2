package h4;

import com.samsung.android.knox.ex.KnoxContract;
import java.util.Map;

/* loaded from: classes.dex */
public final class K extends L {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Map f7032c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f7033d;

    public K(Map map, boolean z4) {
        this.f7032c = map;
        this.f7033d = z4;
    }

    @Override // h4.S
    public final boolean a() {
        return this.f7033d;
    }

    @Override // h4.S
    public final boolean e() {
        return this.f7032c.isEmpty();
    }

    @Override // h4.L
    public final N g(J j3) {
        d3.i.e(KnoxContract.KEY, j3);
        return (N) this.f7032c.get(j3);
    }
}
