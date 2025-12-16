package c1;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;

/* loaded from: classes.dex */
public final class h extends AbstractC0217c {

    /* renamed from: g, reason: collision with root package name */
    public final IBinder f5210g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ k f5211h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(k kVar, int i5, IBinder iBinder, Bundle bundle) {
        super(kVar, i5, bundle);
        this.f5211h = kVar;
        this.f5210g = iBinder;
    }

    @Override // c1.AbstractC0217c
    public final void b(Z0.a aVar) {
        w wVar = this.f5211h.n;
        if (wVar != null) {
            ((a1.f) wVar.f5265c).s(aVar);
        }
        System.currentTimeMillis();
    }

    @Override // c1.AbstractC0217c
    public final boolean d() throws RemoteException {
        IBinder iBinder = this.f5210g;
        try {
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            k kVar = this.f5211h;
            if (!kVar.i().equals(interfaceDescriptor)) {
                String strI = kVar.i();
                StringBuilder sb = new StringBuilder(String.valueOf(interfaceDescriptor).length() + strI.length() + 34);
                sb.append("service descriptor mismatch: ");
                sb.append(strI);
                sb.append(" vs. ");
                sb.append(interfaceDescriptor);
                Log.e("GmsClient", sb.toString());
                return false;
            }
            IInterface iInterfaceC = kVar.c(iBinder);
            if (iInterfaceC == null || !(k.n(kVar, 2, 4, iInterfaceC) || k.n(kVar, 3, 4, iInterfaceC))) {
                return false;
            }
            kVar.f5238q = null;
            w wVar = kVar.f5235m;
            if (wVar == null) {
                return true;
            }
            ((a1.e) wVar.f5265c).q();
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
