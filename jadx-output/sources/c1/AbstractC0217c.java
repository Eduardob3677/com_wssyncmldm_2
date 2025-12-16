package c1;

import android.app.PendingIntent;
import android.os.Bundle;

/* renamed from: c1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0217c {

    /* renamed from: a, reason: collision with root package name */
    public Object f5199a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5200b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k f5201c;

    /* renamed from: d, reason: collision with root package name */
    public final int f5202d;

    /* renamed from: e, reason: collision with root package name */
    public final Bundle f5203e;
    public final /* synthetic */ k f;

    public AbstractC0217c(k kVar, int i5, Bundle bundle) {
        this.f = kVar;
        Boolean bool = Boolean.TRUE;
        this.f5201c = kVar;
        this.f5199a = bool;
        this.f5200b = false;
        this.f5202d = i5;
        this.f5203e = bundle;
    }

    public final void a() {
        synchronized (this) {
            this.f5199a = null;
        }
        synchronized (this.f5201c.f5232j) {
            this.f5201c.f5232j.remove(this);
        }
    }

    public abstract void b(Z0.a aVar);

    public final void c(Object obj) {
        k kVar = this.f;
        int i5 = this.f5202d;
        if (i5 == 0) {
            if (d()) {
                return;
            }
            kVar.m(1, null);
            b(new Z0.a(8, null));
            return;
        }
        if (i5 != 10) {
            kVar.m(1, null);
            Bundle bundle = this.f5203e;
            b(new Z0.a(i5, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
            return;
        }
        kVar.m(1, null);
        String simpleName = getClass().getSimpleName();
        String strJ = kVar.j();
        String strI = kVar.i();
        StringBuilder sb = new StringBuilder("A fatal developer error has occurred. Class name: ");
        sb.append(simpleName);
        sb.append(". Start service action: ");
        sb.append(strJ);
        sb.append(". Service Descriptor: ");
        throw new IllegalStateException(B.f.w(sb, strI, ". "));
    }

    public abstract boolean d();
}
