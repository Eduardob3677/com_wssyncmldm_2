package s3;

import h4.AbstractC0468v;
import h4.AbstractC0472z;
import java.util.Map;
import r3.InterfaceC0786N;
import r3.InterfaceC0802e;

/* renamed from: s3.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0840c implements InterfaceC0839b {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0468v f9023a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f9024b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0786N f9025c;

    public C0840c(AbstractC0472z abstractC0472z, Map map, InterfaceC0786N interfaceC0786N) {
        if (abstractC0472z == null) {
            c(0);
            throw null;
        }
        if (map == null) {
            c(1);
            throw null;
        }
        if (interfaceC0786N == null) {
            c(2);
            throw null;
        }
        this.f9023a = abstractC0472z;
        this.f9024b = map;
        this.f9025c = interfaceC0786N;
    }

    public static /* synthetic */ void c(int i5) {
        String str = (i5 == 3 || i5 == 4 || i5 == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 3 || i5 == 4 || i5 == 5) ? 2 : 3];
        if (i5 == 1) {
            objArr[0] = "valueArguments";
        } else if (i5 == 2) {
            objArr[0] = "source";
        } else if (i5 == 3 || i5 == 4 || i5 == 5) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl";
        } else {
            objArr[0] = "annotationType";
        }
        if (i5 == 3) {
            objArr[1] = "getType";
        } else if (i5 == 4) {
            objArr[1] = "getAllValueArguments";
        } else if (i5 != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl";
        } else {
            objArr[1] = "getSource";
        }
        if (i5 != 3 && i5 != 4 && i5 != 5) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i5 != 3 && i5 != 4 && i5 != 5) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // s3.InterfaceC0839b
    public final Q3.c a() {
        InterfaceC0802e interfaceC0802eD = X3.f.d(this);
        if (interfaceC0802eD == null) {
            return null;
        }
        if (j4.i.f(interfaceC0802eD)) {
            interfaceC0802eD = null;
        }
        if (interfaceC0802eD != null) {
            return X3.f.c(interfaceC0802eD);
        }
        return null;
    }

    @Override // s3.InterfaceC0839b
    public final Map b() {
        Map map = this.f9024b;
        if (map != null) {
            return map;
        }
        c(4);
        throw null;
    }

    @Override // s3.InterfaceC0839b
    public final AbstractC0468v e() {
        AbstractC0468v abstractC0468v = this.f9023a;
        if (abstractC0468v != null) {
            return abstractC0468v;
        }
        c(3);
        throw null;
    }

    @Override // s3.InterfaceC0839b
    public final InterfaceC0786N m() {
        InterfaceC0786N interfaceC0786N = this.f9025c;
        if (interfaceC0786N != null) {
            return interfaceC0786N;
        }
        c(5);
        throw null;
    }

    public final String toString() {
        return S3.g.f2622c.x(this, null);
    }
}
