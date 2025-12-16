package d4;

import R3.AbstractC0080b;
import c3.InterfaceC0221a;
import com.google.android.gms.internal.p000firebaseauthapi.X;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.List;
import l3.l0;
import l3.p0;
import r3.InterfaceC0807j;

/* loaded from: classes.dex */
public final class n extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f6556d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f6557e;
    public final /* synthetic */ Object f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f6558g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n(r rVar, AbstractC0080b abstractC0080b, int i5, int i6) {
        super(0);
        this.f6556d = i6;
        this.f6557e = rVar;
        this.f = abstractC0080b;
        this.f6558g = i5;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f6556d) {
            case 0:
                r rVar = (r) this.f6557e;
                X xA = rVar.a((InterfaceC0807j) rVar.f6569a.f5379e);
                List listG1 = xA != null ? R2.m.g1(((i) rVar.f6569a.f5377c).f6533e.z(xA, (AbstractC0080b) this.f, this.f6558g)) : null;
                return listG1 == null ? R2.u.f2325c : listG1;
            case 1:
                r rVar2 = (r) this.f6557e;
                X xA2 = rVar2.a((InterfaceC0807j) rVar2.f6569a.f5379e);
                List listG = xA2 != null ? ((i) rVar2.f6569a.f5377c).f6533e.G(xA2, (AbstractC0080b) this.f, this.f6558g) : null;
                return listG == null ? R2.u.f2325c : listG;
            default:
                l0 l0Var = (l0) this.f6557e;
                p0 p0Var = l0Var.f8193b;
                Type type = p0Var != null ? (Type) p0Var.a() : null;
                if (type instanceof Class) {
                    Class cls = (Class) type;
                    Class componentType = cls.isArray() ? cls.getComponentType() : Object.class;
                    d3.i.d("{\n                      …                        }", componentType);
                    return componentType;
                }
                boolean z4 = type instanceof GenericArrayType;
                int i5 = this.f6558g;
                if (z4) {
                    if (i5 == 0) {
                        Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
                        d3.i.d("{\n                      …                        }", genericComponentType);
                        return genericComponentType;
                    }
                    throw new Q2.d("Array type has been queried for a non-0th argument: " + l0Var, 2);
                }
                if (!(type instanceof ParameterizedType)) {
                    throw new Q2.d("Non-generic type has been queried for arguments: " + l0Var, 2);
                }
                Type type2 = (Type) ((List) ((Q2.c) this.f).getValue()).get(i5);
                if (type2 instanceof WildcardType) {
                    WildcardType wildcardType = (WildcardType) type2;
                    Type[] lowerBounds = wildcardType.getLowerBounds();
                    d3.i.d("argument.lowerBounds", lowerBounds);
                    Type type3 = lowerBounds.length != 0 ? lowerBounds[0] : null;
                    if (type3 == null) {
                        Type[] upperBounds = wildcardType.getUpperBounds();
                        d3.i.d("argument.upperBounds", upperBounds);
                        type2 = (Type) R2.i.n0(upperBounds);
                    } else {
                        type2 = type3;
                    }
                }
                d3.i.d("{\n                      …                        }", type2);
                return type2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(l0 l0Var, int i5, Q2.c cVar) {
        super(0);
        this.f6556d = 2;
        this.f6557e = l0Var;
        this.f6558g = i5;
        this.f = cVar;
    }
}
