package Q3;

import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import com.samsung.android.knox.ucm.core.UniversalCredentialUtil;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final c f2228a;

    /* renamed from: b, reason: collision with root package name */
    public final f f2229b;

    static {
        c.j(h.f);
    }

    public a(c cVar, f fVar) {
        d3.i.e(UniversalCredentialUtil.AGENT_PACKAGENAME, cVar);
        this.f2228a = cVar;
        this.f2229b = fVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return d3.i.a(this.f2228a, aVar.f2228a) && d3.i.a(null, null) && d3.i.a(this.f2229b, aVar.f2229b) && d3.i.a(null, null);
    }

    public final int hashCode() {
        return (this.f2229b.hashCode() + (this.f2228a.hashCode() * 961)) * 31;
    }

    public final String toString() {
        String str = s4.h.q(this.f2228a.b(), '.', IDMTndsXmlWbxmlDefine.XML_SLASH) + "/" + this.f2229b;
        d3.i.d("StringBuilder().apply(builderAction).toString()", str);
        return str;
    }
}
