package E3;

import h4.AbstractC0468v;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0468v f646a;

    /* renamed from: b, reason: collision with root package name */
    public final List f647b;

    /* renamed from: c, reason: collision with root package name */
    public final List f648c;

    /* renamed from: d, reason: collision with root package name */
    public final List f649d;

    public y(AbstractC0468v abstractC0468v, List list, ArrayList arrayList, List list2) {
        d3.i.e("valueParameters", list);
        this.f646a = abstractC0468v;
        this.f647b = list;
        this.f648c = arrayList;
        this.f649d = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return d3.i.a(this.f646a, yVar.f646a) && d3.i.a(null, null) && d3.i.a(this.f647b, yVar.f647b) && d3.i.a(this.f648c, yVar.f648c) && d3.i.a(this.f649d, yVar.f649d);
    }

    public final int hashCode() {
        return this.f649d.hashCode() + ((this.f648c.hashCode() + ((this.f647b.hashCode() + (this.f646a.hashCode() * 961)) * 31)) * 961);
    }

    public final String toString() {
        return "MethodSignatureData(returnType=" + this.f646a + ", receiverType=null, valueParameters=" + this.f647b + ", typeParameters=" + this.f648c + ", hasStableParameterNames=false, errors=" + this.f649d + ')';
    }
}
