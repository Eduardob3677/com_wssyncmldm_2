package b1;

import A3.D;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class t extends m {

    /* renamed from: a, reason: collision with root package name */
    public final u1.i f5108a;

    public t(u1.i iVar) {
        this.f5108a = iVar;
    }

    @Override // b1.m
    public final /* bridge */ /* synthetic */ void a(D d2, boolean z4) {
    }

    @Override // b1.m
    public final void b(Status status) {
        this.f5108a.c(new W1.h(status));
    }

    @Override // b1.m
    public final void c(RuntimeException runtimeException) {
        this.f5108a.c(runtimeException);
    }

    @Override // b1.m
    public final Z0.c[] d(C0198d c0198d) {
        B.f.F(c0198d.f.get(null));
        return null;
    }

    @Override // b1.m
    public final boolean f(C0198d c0198d) {
        B.f.F(c0198d.f.get(null));
        return false;
    }

    @Override // b1.m
    public final void g(C0198d c0198d) throws DeadObjectException {
        try {
            h(c0198d);
        } catch (DeadObjectException e5) {
            b(m.e(e5));
            throw e5;
        } catch (RemoteException e6) {
            b(m.e(e6));
        } catch (RuntimeException e7) {
            c(e7);
        }
    }

    public final void h(C0198d c0198d) {
        B.f.F(c0198d.f.remove(null));
        this.f5108a.d(Boolean.FALSE);
    }
}
