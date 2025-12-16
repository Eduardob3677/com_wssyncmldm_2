package n4;

import c3.InterfaceC0222b;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final Q3.f f8354a;

    /* renamed from: b, reason: collision with root package name */
    public final Q2.a f8355b;

    /* renamed from: c, reason: collision with root package name */
    public final Collection f8356c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC0222b f8357d;

    /* renamed from: e, reason: collision with root package name */
    public final e[] f8358e;

    public i(Q3.f fVar, Q2.a aVar, Collection collection, InterfaceC0222b interfaceC0222b, e... eVarArr) {
        this.f8354a = fVar;
        this.f8355b = aVar;
        this.f8356c = collection;
        this.f8357d = interfaceC0222b;
        this.f8358e = eVarArr;
    }

    public /* synthetic */ i(Q3.f fVar, e[] eVarArr) {
        this(fVar, eVarArr, h.f8345e);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public i(Q3.f fVar, e[] eVarArr, InterfaceC0222b interfaceC0222b) {
        this(fVar, null, null, interfaceC0222b, (e[]) Arrays.copyOf(eVarArr, eVarArr.length));
        d3.i.e("name", fVar);
        d3.i.e("additionalChecks", interfaceC0222b);
    }

    public /* synthetic */ i(Set set, e[] eVarArr) {
        this(set, eVarArr, h.f8346g);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public i(Collection collection, e[] eVarArr, InterfaceC0222b interfaceC0222b) {
        this(null, null, collection, interfaceC0222b, (e[]) Arrays.copyOf(eVarArr, eVarArr.length));
        d3.i.e("nameList", collection);
        d3.i.e("additionalChecks", interfaceC0222b);
    }
}
