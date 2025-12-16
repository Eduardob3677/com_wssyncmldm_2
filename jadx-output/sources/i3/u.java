package i3;

import h0.AbstractC0432c;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import l3.m0;

/* loaded from: classes.dex */
public final class u implements TypeVariable, Type {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0495p f7160a;

    public u(InterfaceC0495p interfaceC0495p) {
        d3.i.e("typeParameter", interfaceC0495p);
        this.f7160a = interfaceC0495p;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TypeVariable) || !d3.i.a(getName(), ((TypeVariable) obj).getName())) {
            return false;
        }
        getGenericDeclaration();
        throw null;
    }

    @Override // java.lang.reflect.TypeVariable
    public final Type[] getBounds() {
        m0 m0Var = (m0) this.f7160a;
        m0Var.getClass();
        InterfaceC0494o interfaceC0494o = m0.f[0];
        Object objA = m0Var.f8202d.a();
        d3.i.d("<get-upperBounds>(...)", objA);
        List list = (List) objA;
        ArrayList arrayList = new ArrayList(R2.o.C0(list));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(x.r((d3.j) it.next(), true));
        }
        return (Type[]) arrayList.toArray(new Type[0]);
    }

    @Override // java.lang.reflect.TypeVariable
    public final GenericDeclaration getGenericDeclaration() {
        throw new Q2.d(AbstractC0432c.i("An operation is not implemented: ", "getGenericDeclaration() is not yet supported for type variables created from KType: " + this.f7160a), 0);
    }

    @Override // java.lang.reflect.TypeVariable
    public final String getName() {
        return ((m0) this.f7160a).a();
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        return getName();
    }

    public final int hashCode() {
        getName();
        getGenericDeclaration();
        throw null;
    }

    public final String toString() {
        return getName();
    }
}
