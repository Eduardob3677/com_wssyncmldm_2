package I3;

import h4.AbstractC0468v;
import java.util.Map;
import r3.InterfaceC0786N;
import r3.InterfaceC0802e;
import s3.InterfaceC0839b;

/* loaded from: classes.dex */
public final class b implements InterfaceC0839b {

    /* renamed from: a, reason: collision with root package name */
    public static final b f883a = new b();

    @Override // s3.InterfaceC0839b
    public final Q3.c a() {
        InterfaceC0802e interfaceC0802eD = X3.f.d(this);
        if (interfaceC0802eD == null) {
            return null;
        }
        if (j4.i.f(interfaceC0802eD)) {
            interfaceC0802eD = null;
        }
        if (interfaceC0802eD != null) {
            return X3.f.c(interfaceC0802eD);
        }
        return null;
    }

    @Override // s3.InterfaceC0839b
    public final Map b() {
        throw new IllegalStateException("No methods should be called on this descriptor. Only its presence matters".toString());
    }

    @Override // s3.InterfaceC0839b
    public final AbstractC0468v e() {
        throw new IllegalStateException("No methods should be called on this descriptor. Only its presence matters".toString());
    }

    @Override // s3.InterfaceC0839b
    public final InterfaceC0786N m() {
        throw new IllegalStateException("No methods should be called on this descriptor. Only its presence matters".toString());
    }

    public final String toString() {
        return "[EnhancedType]";
    }
}
