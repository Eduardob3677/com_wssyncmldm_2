package Y0;

import android.os.Bundle;
import android.util.Log;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final int f2899a;

    /* renamed from: b, reason: collision with root package name */
    public final u1.i f2900b = new u1.i();

    /* renamed from: c, reason: collision with root package name */
    public final int f2901c;

    /* renamed from: d, reason: collision with root package name */
    public final Bundle f2902d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f2903e;

    public i(int i5, int i6, Bundle bundle, int i7) {
        this.f2903e = i7;
        this.f2899a = i5;
        this.f2901c = i6;
        this.f2902d = bundle;
    }

    public final void a(Bundle bundle) {
        switch (this.f2903e) {
            case 0:
                if (!bundle.getBoolean("ack", false)) {
                    c(new W1.h("Invalid response to one way request", null));
                    break;
                } else {
                    d(null);
                    break;
                }
            default:
                Bundle bundle2 = bundle.getBundle("data");
                if (bundle2 == null) {
                    bundle2 = Bundle.EMPTY;
                }
                d(bundle2);
                break;
        }
    }

    public final boolean b() {
        switch (this.f2903e) {
            case 0:
                return true;
            default:
                return false;
        }
    }

    public final void c(W1.h hVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(hVar);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 14 + strValueOf2.length());
            sb.append("Failing ");
            sb.append(strValueOf);
            sb.append(" with ");
            sb.append(strValueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f2900b.a(hVar);
    }

    public final void d(Bundle bundle) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(bundle);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 16 + strValueOf2.length());
            sb.append("Finishing ");
            sb.append(strValueOf);
            sb.append(" with ");
            sb.append(strValueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f2900b.b(bundle);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(this.f2901c);
        sb.append(" id=");
        sb.append(this.f2899a);
        sb.append(" oneWay=");
        sb.append(b());
        sb.append("}");
        return sb.toString();
    }
}
