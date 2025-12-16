package Y0;

import android.os.Bundle;
import android.util.Log;
import java.io.IOException;
import p0.AbstractC0739a;
import u1.InterfaceC0863a;
import u1.n;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements InterfaceC0863a, u1.g {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ l f2911c = new l();

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ l f2912d = new l();

    @Override // u1.InterfaceC0863a
    public Object H(u1.h hVar) throws IOException {
        if (hVar.f()) {
            return (Bundle) hVar.e();
        }
        if (Log.isLoggable("Rpc", 3)) {
            String strValueOf = String.valueOf(hVar.d());
            StringBuilder sb = new StringBuilder(strValueOf.length() + 22);
            sb.append("Error making request: ");
            sb.append(strValueOf);
            Log.d("Rpc", sb.toString());
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", hVar.d());
    }

    @Override // u1.g
    public n a(Object obj) {
        Bundle bundle = (Bundle) obj;
        int i5 = a.f2877h;
        return (bundle == null || !bundle.containsKey("google.messenger")) ? AbstractC0739a.j(bundle) : AbstractC0739a.j(null);
    }
}
