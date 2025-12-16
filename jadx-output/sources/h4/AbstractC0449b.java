package h4;

import o3.AbstractC0732i;
import r3.InterfaceC0775C;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import r3.InterfaceC0821x;

/* renamed from: h4.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0449b extends AbstractC0454g {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC0449b(g4.o oVar) {
        super(oVar);
        if (oVar != null) {
        } else {
            m(0);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void m(int i5) {
        String str = (i5 == 1 || i5 == 3 || i5 == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 1 || i5 == 3 || i5 == 4) ? 2 : 3];
        if (i5 == 1) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor";
        } else if (i5 == 2) {
            objArr[0] = "classifier";
        } else if (i5 != 3 && i5 != 4) {
            objArr[0] = "storageManager";
        }
        if (i5 == 1) {
            objArr[1] = "getBuiltIns";
        } else if (i5 == 3 || i5 == 4) {
            objArr[1] = "getAdditionalNeighboursInSupertypeGraph";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor";
        }
        if (i5 != 1) {
            if (i5 == 2) {
                objArr[2] = "isSameClassifier";
            } else if (i5 != 3 && i5 != 4) {
                objArr[2] = "<init>";
            }
        }
        String str2 = String.format(str, objArr);
        if (i5 != 1 && i5 != 3 && i5 != 4) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // h4.AbstractC0454g
    public final AbstractC0468v c() {
        InterfaceC0802e interfaceC0802eI = i();
        if (interfaceC0802eI == null) {
            AbstractC0732i.a(107);
            throw null;
        }
        Q3.f fVar = AbstractC0732i.f8454e;
        if (AbstractC0732i.b(interfaceC0802eI, o3.m.f8503a) || AbstractC0732i.b(interfaceC0802eI, o3.m.f8505b)) {
            return null;
        }
        return g().e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x006f, code lost:
    
        r4 = true;
     */
    @Override // h4.AbstractC0454g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean f(InterfaceC0804g interfaceC0804g) {
        boolean z4;
        if (!(interfaceC0804g instanceof InterfaceC0802e)) {
            return false;
        }
        InterfaceC0802e interfaceC0802eI = i();
        d3.i.e("first", interfaceC0802eI);
        if (d3.i.a(interfaceC0802eI.getName(), interfaceC0804g.getName())) {
            InterfaceC0807j interfaceC0807jL = interfaceC0802eI.l();
            InterfaceC0807j interfaceC0807jL2 = interfaceC0804g.l();
            while (true) {
                if (interfaceC0807jL != null && interfaceC0807jL2 != null) {
                    if (!(interfaceC0807jL instanceof InterfaceC0821x)) {
                        if (!(interfaceC0807jL2 instanceof InterfaceC0821x)) {
                            if (!(interfaceC0807jL instanceof InterfaceC0775C)) {
                                if ((interfaceC0807jL2 instanceof InterfaceC0775C) || !d3.i.a(interfaceC0807jL.getName(), interfaceC0807jL2.getName())) {
                                    break;
                                }
                                interfaceC0807jL = interfaceC0807jL.l();
                                interfaceC0807jL2 = interfaceC0807jL2.l();
                            } else if (!(interfaceC0807jL2 instanceof InterfaceC0775C) || !d3.i.a(((u3.E) ((InterfaceC0775C) interfaceC0807jL)).f9353g, ((u3.E) ((InterfaceC0775C) interfaceC0807jL2)).f9353g)) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        z4 = interfaceC0807jL2 instanceof InterfaceC0821x;
                        break;
                    }
                } else {
                    break;
                }
            }
            z4 = false;
        } else {
            z4 = false;
        }
        return z4;
    }

    @Override // h4.J
    public final AbstractC0732i g() {
        AbstractC0732i abstractC0732iE = X3.f.e(i());
        if (abstractC0732iE != null) {
            return abstractC0732iE;
        }
        m(1);
        throw null;
    }

    @Override // h4.J
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public abstract InterfaceC0802e i();
}
