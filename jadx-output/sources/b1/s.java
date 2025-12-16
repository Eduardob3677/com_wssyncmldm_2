package b1;

import A3.D;
import R3.C0091m;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import java.util.Map;

/* loaded from: classes.dex */
public final class s extends m {

    /* renamed from: a, reason: collision with root package name */
    public final C0091m f5105a;

    /* renamed from: b, reason: collision with root package name */
    public final u1.i f5106b;

    /* renamed from: c, reason: collision with root package name */
    public final l f5107c;

    public s(C0091m c0091m, u1.i iVar, l lVar) {
        this.f5106b = iVar;
        this.f5105a = c0091m;
        this.f5107c = lVar;
    }

    @Override // b1.m
    public final void a(D d2, boolean z4) {
        Boolean boolValueOf = Boolean.valueOf(z4);
        Map map = (Map) d2.f81e;
        u1.i iVar = this.f5106b;
        map.put(iVar, boolValueOf);
        u1.n nVar = iVar.f9320a;
        D d5 = new D(d2, iVar);
        nVar.getClass();
        nVar.a(u1.j.f9321a, d5);
    }

    @Override // b1.m
    public final void b(Status status) {
        this.f5106b.c(this.f5107c.d(status));
    }

    @Override // b1.m
    public final void c(RuntimeException runtimeException) {
        this.f5106b.c(runtimeException);
    }

    @Override // b1.m
    public final Z0.c[] d(C0198d c0198d) {
        return (Z0.c[]) this.f5105a.f2404b;
    }

    @Override // b1.m
    public final boolean f(C0198d c0198d) {
        return this.f5105a.f2403a;
    }

    @Override // b1.m
    public final void g(C0198d c0198d) throws DeadObjectException {
        try {
            C0091m c0091m = this.f5105a;
            ((k) ((C0091m) c0091m.f2405c).f2404b).c(c0198d.f5063b, this.f5106b);
        } catch (DeadObjectException e5) {
            throw e5;
        } catch (RemoteException e6) {
            b(m.e(e6));
        } catch (RuntimeException e7) {
            c(e7);
        }
    }
}
