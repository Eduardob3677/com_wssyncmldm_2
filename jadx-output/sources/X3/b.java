package X3;

import R2.u;
import java.util.Collection;
import r3.InterfaceC0800c;

/* loaded from: classes.dex */
public final class b implements q4.a {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f2868c;

    public b(boolean z4) {
        this.f2868c = z4;
    }

    @Override // q4.a
    public final Iterable r(Object obj) {
        InterfaceC0800c interfaceC0800cA = (InterfaceC0800c) obj;
        if (this.f2868c) {
            interfaceC0800cA = interfaceC0800cA != null ? interfaceC0800cA.a() : null;
        }
        Collection collectionP = interfaceC0800cA != null ? interfaceC0800cA.p() : null;
        return collectionP == null ? u.f2325c : collectionP;
    }
}
