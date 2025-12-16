package x3;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class r extends w implements H3.e {

    /* renamed from: a, reason: collision with root package name */
    public final Constructor f9670a;

    public r(Constructor constructor) {
        d3.i.e("member", constructor);
        this.f9670a = constructor;
    }

    @Override // x3.w
    public final Member a() {
        return this.f9670a;
    }

    @Override // H3.e
    public final ArrayList u() {
        TypeVariable[] typeParameters = this.f9670a.getTypeParameters();
        d3.i.d("member.typeParameters", typeParameters);
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable typeVariable : typeParameters) {
            arrayList.add(new C0911C(typeVariable));
        }
        return arrayList;
    }
}
