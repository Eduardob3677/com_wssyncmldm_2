package u3;

import c3.InterfaceC0222b;
import h4.AbstractC0454g;
import h4.AbstractC0468v;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class r extends a4.p {

    /* renamed from: b, reason: collision with root package name */
    public final g4.e f9454b;

    /* renamed from: c, reason: collision with root package name */
    public final g4.e f9455c;

    /* renamed from: d, reason: collision with root package name */
    public final g4.i f9456d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0886s f9457e;

    public r(C0886s c0886s, g4.o oVar) {
        if (oVar == null) {
            h(0);
            throw null;
        }
        this.f9457e = c0886s;
        g4.l lVar = (g4.l) oVar;
        this.f9454b = lVar.b(new C0885q(this, 0));
        int i5 = 1;
        this.f9455c = lVar.b(new C0885q(this, i5));
        this.f9456d = new g4.i(lVar, new C0875g(i5, this));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void h(int i5) {
        String str;
        int i6;
        if (i5 != 3 && i5 != 7 && i5 != 9 && i5 != 12) {
            switch (i5) {
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i5 != 3 && i5 != 7 && i5 != 9 && i5 != 12) {
            switch (i5) {
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    break;
                default:
                    i6 = 3;
                    break;
            }
        } else {
            i6 = 2;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 1:
            case 4:
            case 5:
            case 8:
            case 10:
                objArr[0] = "name";
                break;
            case 2:
            case 6:
                objArr[0] = "location";
                break;
            case 3:
            case 7:
            case 9:
            case 12:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope";
                break;
            case 11:
                objArr[0] = "fromSupertypes";
                break;
            case 13:
                objArr[0] = "kindFilter";
                break;
            case 14:
                objArr[0] = "nameFilter";
                break;
            case 20:
                objArr[0] = "p";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        if (i5 == 3) {
            objArr[1] = "getContributedVariables";
        } else if (i5 == 7) {
            objArr[1] = "getContributedFunctions";
        } else if (i5 == 9) {
            objArr[1] = "getSupertypeScope";
        } else if (i5 != 12) {
            switch (i5) {
                case 15:
                    objArr[1] = "getContributedDescriptors";
                    break;
                case 16:
                    objArr[1] = "computeAllDeclarations";
                    break;
                case 17:
                    objArr[1] = "getFunctionNames";
                    break;
                case 18:
                    objArr[1] = "getClassifierNames";
                    break;
                case 19:
                    objArr[1] = "getVariableNames";
                    break;
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope";
                    break;
            }
        } else {
            objArr[1] = "resolveFakeOverrides";
        }
        switch (i5) {
            case 1:
            case 2:
                objArr[2] = "getContributedVariables";
                break;
            case 3:
            case 7:
            case 9:
            case 12:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                break;
            case 4:
                objArr[2] = "computeProperties";
                break;
            case 5:
            case 6:
                objArr[2] = "getContributedFunctions";
                break;
            case 8:
                objArr[2] = "computeFunctions";
                break;
            case 10:
            case 11:
                objArr[2] = "resolveFakeOverrides";
                break;
            case 13:
            case 14:
                objArr[2] = "getContributedDescriptors";
                break;
            case 20:
                objArr[2] = "printScopeStructure";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 3 && i5 != 7 && i5 != 9 && i5 != 12) {
            switch (i5) {
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    @Override // a4.p, a4.o
    public final Set a() {
        Set set = (Set) this.f9457e.f9460l.a();
        if (set != null) {
            return set;
        }
        h(17);
        throw null;
    }

    @Override // a4.p, a4.o
    public final Set b() {
        Set set = (Set) this.f9457e.f9460l.a();
        if (set != null) {
            return set;
        }
        h(19);
        throw null;
    }

    @Override // a4.p, a4.o
    public final Collection d(Q3.f fVar, z3.b bVar) {
        if (fVar != null) {
            return (Collection) this.f9454b.e(fVar);
        }
        h(5);
        throw null;
    }

    @Override // a4.p, a4.o
    public final Set e() {
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet != null) {
            return setEmptySet;
        }
        h(18);
        throw null;
    }

    @Override // a4.p, a4.q
    public final Collection f(a4.f fVar, InterfaceC0222b interfaceC0222b) {
        if (fVar == null) {
            h(13);
            throw null;
        }
        if (interfaceC0222b == null) {
            h(14);
            throw null;
        }
        Collection collection = (Collection) this.f9456d.a();
        if (collection != null) {
            return collection;
        }
        h(15);
        throw null;
    }

    @Override // a4.p, a4.o
    public final Collection g(Q3.f fVar, z3.b bVar) {
        if (fVar != null) {
            return (Collection) this.f9455c.e(fVar);
        }
        h(1);
        throw null;
    }

    public final a4.o i() {
        a4.o oVarQ0 = ((AbstractC0468v) ((AbstractC0454g) this.f9457e.H()).j().iterator().next()).q0();
        if (oVarQ0 != null) {
            return oVarQ0;
        }
        h(9);
        throw null;
    }

    public final LinkedHashSet j(Q3.f fVar, Collection collection) {
        if (fVar == null) {
            h(10);
            throw null;
        }
        if (collection == null) {
            h(11);
            throw null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        T3.n.f2735d.h(fVar, collection, Collections.emptySet(), this.f9457e, new f4.f(linkedHashSet, 1));
        return linkedHashSet;
    }
}
