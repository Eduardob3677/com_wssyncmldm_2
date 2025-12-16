package X3;

import c3.InterfaceC0222b;
import d3.i;
import java.io.Serializable;
import q3.p;
import q4.k;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;

/* loaded from: classes.dex */
public final class d extends k {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2870b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Serializable f2871c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f2872d;

    public d(Q2.a aVar, InterfaceC0222b interfaceC0222b) {
        this.f2870b = 0;
        this.f2871c = aVar;
        this.f2872d = interfaceC0222b;
    }

    @Override // q4.k
    public void c(Object obj) {
        switch (this.f2870b) {
            case 0:
                InterfaceC0800c interfaceC0800c = (InterfaceC0800c) obj;
                i.e("current", interfaceC0800c);
                Q2.a aVar = (Q2.a) this.f2871c;
                if (aVar.f2208d == null && ((Boolean) ((InterfaceC0222b) this.f2872d).e(interfaceC0800c)).booleanValue()) {
                    aVar.f2208d = interfaceC0800c;
                    break;
                }
                break;
        }
    }

    @Override // q4.k
    public final boolean d(Object obj) {
        switch (this.f2870b) {
            case 0:
                i.e("current", (InterfaceC0800c) obj);
                return ((Q2.a) this.f2871c).f2208d == null;
            case 1:
                InterfaceC0802e interfaceC0802e = (InterfaceC0802e) obj;
                i.e("javaClassDescriptor", interfaceC0802e);
                String strK = L2.b.K(interfaceC0802e, (String) this.f2872d);
                boolean zContains = p.f8691b.contains(strK);
                Q2.a aVar = (Q2.a) this.f2871c;
                if (zContains) {
                    aVar.f2208d = q3.k.f8672c;
                } else if (p.f8692c.contains(strK)) {
                    aVar.f2208d = q3.k.f8673d;
                } else if (p.f8690a.contains(strK)) {
                    aVar.f2208d = q3.k.f;
                }
                return aVar.f2208d == null;
            default:
                boolean zBooleanValue = ((Boolean) ((InterfaceC0222b) this.f2872d).e(obj)).booleanValue();
                boolean[] zArr = (boolean[]) this.f2871c;
                if (zBooleanValue) {
                    zArr[0] = true;
                }
                return !zArr[0];
        }
    }

    @Override // q4.k
    public final Object j() {
        switch (this.f2870b) {
            case 0:
                return (InterfaceC0800c) ((Q2.a) this.f2871c).f2208d;
            case 1:
                q3.k kVar = (q3.k) ((Q2.a) this.f2871c).f2208d;
                return kVar == null ? q3.k.f8674e : kVar;
            default:
                return Boolean.valueOf(((boolean[]) this.f2871c)[0]);
        }
    }

    public /* synthetic */ d(Object obj, Serializable serializable, int i5) {
        this.f2870b = i5;
        this.f2872d = obj;
        this.f2871c = serializable;
    }
}
