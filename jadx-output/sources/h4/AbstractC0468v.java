package h4;

import java.util.List;
import s3.InterfaceC0838a;
import s3.InterfaceC0845h;

/* renamed from: h4.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0468v implements InterfaceC0838a, k4.c {

    /* renamed from: c, reason: collision with root package name */
    public int f7078c;

    public abstract G I0();

    public abstract J J0();

    public abstract boolean K0();

    public abstract AbstractC0468v L0(i4.f fVar);

    public abstract Z M0();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC0468v)) {
            return false;
        }
        AbstractC0468v abstractC0468v = (AbstractC0468v) obj;
        if (K0() == abstractC0468v.K0()) {
            if (AbstractC0450c.t(i4.e.f7171d, M0(), abstractC0468v.M0())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode;
        int i5 = this.f7078c;
        if (i5 != 0) {
            return i5;
        }
        if (AbstractC0450c.i(this)) {
            iHashCode = super.hashCode();
        } else {
            iHashCode = (K0() ? 1 : 0) + ((u0().hashCode() + (J0().hashCode() * 31)) * 31);
        }
        this.f7078c = iHashCode;
        return iHashCode;
    }

    public abstract a4.o q0();

    @Override // s3.InterfaceC0838a
    public final InterfaceC0845h t() {
        return AbstractC0456i.a(I0());
    }

    public abstract List u0();
}
