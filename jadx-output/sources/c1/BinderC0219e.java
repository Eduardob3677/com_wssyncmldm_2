package c1;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.internal.p000firebaseauthapi.Z;
import p1.AbstractC0741a;

/* renamed from: c1.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class BinderC0219e extends Z implements p {

    /* renamed from: b, reason: collision with root package name */
    public k f5205b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5206c;

    public BinderC0219e(k kVar, int i5) {
        super("com.google.android.gms.common.internal.IGmsCallbacks", 1);
        this.f5205b = kVar;
        this.f5206c = i5;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Z
    public final boolean f(int i5, Parcel parcel, Parcel parcel2) {
        if (i5 == 1) {
            w(parcel.readInt(), parcel.readStrongBinder(), (Bundle) AbstractC0741a.a(parcel, Bundle.CREATOR));
        } else if (i5 == 2) {
            parcel.readInt();
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        } else {
            if (i5 != 3) {
                return false;
            }
            int i6 = parcel.readInt();
            IBinder strongBinder = parcel.readStrongBinder();
            x xVar = (x) AbstractC0741a.a(parcel, x.CREATOR);
            AbstractC0213D.f("onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService", this.f5205b);
            AbstractC0213D.e(xVar);
            this.f5205b.f5240s = xVar;
            w(i6, strongBinder, xVar.f5266c);
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // c1.p
    public final void w(int i5, IBinder iBinder, Bundle bundle) {
        AbstractC0213D.f("onPostInitComplete can be called only once per call to getRemoteService", this.f5205b);
        k kVar = this.f5205b;
        kVar.getClass();
        h hVar = new h(kVar, i5, iBinder, bundle);
        HandlerC0218d handlerC0218d = kVar.f5227d;
        handlerC0218d.sendMessage(handlerC0218d.obtainMessage(1, this.f5206c, -1, hVar));
        this.f5205b = null;
    }
}
