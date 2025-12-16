package w3;

import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import d3.i;
import s4.h;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final Class f9608a;

    /* renamed from: b, reason: collision with root package name */
    public final K3.b f9609b;

    public b(Class cls, K3.b bVar) {
        this.f9608a = cls;
        this.f9609b = bVar;
    }

    public final String a() {
        return h.q(this.f9608a.getName(), '.', IDMTndsXmlWbxmlDefine.XML_SLASH).concat(".class");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof b) {
            if (i.a(this.f9608a, ((b) obj).f9608a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f9608a.hashCode();
    }

    public final String toString() {
        return b.class.getName() + ": " + this.f9608a;
    }
}
