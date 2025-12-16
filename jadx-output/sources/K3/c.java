package K3;

import J3.m;
import J3.n;
import android.os.Bundle;
import com.google.firebase.messaging.p;
import h4.AbstractC0468v;
import java.util.ArrayList;
import s3.InterfaceC0838a;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public abstract class c implements n, b4.d, InterfaceC0838a {

    /* renamed from: c, reason: collision with root package name */
    public Object f1293c;

    public c(InterfaceC0845h interfaceC0845h) {
        if (interfaceC0845h != null) {
            this.f1293c = interfaceC0845h;
        } else {
            J0(0);
            throw null;
        }
    }

    public static /* synthetic */ void I0(int i5) {
        String str = (i5 == 1 || i5 == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 1 || i5 == 2) ? 2 : 3];
        if (i5 == 1 || i5 == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue";
        } else {
            objArr[0] = "receiverType";
        }
        if (i5 == 1) {
            objArr[1] = "getType";
        } else if (i5 != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue";
        } else {
            objArr[1] = "getOriginal";
        }
        if (i5 != 1 && i5 != 2) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i5 != 1 && i5 != 2) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static /* synthetic */ void J0(int i5) {
        String str = i5 != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i5 != 1 ? 3 : 2];
        if (i5 != 1) {
            objArr[0] = "annotations";
        } else {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl";
        }
        if (i5 != 1) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl";
        } else {
            objArr[1] = "getAnnotations";
        }
        if (i5 != 1) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i5 == 1) {
            throw new IllegalStateException(str2);
        }
    }

    @Override // J3.n
    public void J(Q3.b bVar, Q3.f fVar) {
    }

    public void K0(Bundle bundle) {
        bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", M0());
    }

    public abstract void L0(p pVar);

    public abstract String M0();

    public abstract void N0(String[] strArr);

    @Override // J3.n
    public void c0(V3.f fVar) {
    }

    @Override // J3.n
    public void d() {
        N0((String[]) ((ArrayList) this.f1293c).toArray(new String[0]));
    }

    @Override // b4.d
    public AbstractC0468v e() {
        AbstractC0468v abstractC0468v = (AbstractC0468v) this.f1293c;
        if (abstractC0468v != null) {
            return abstractC0468v;
        }
        I0(1);
        throw null;
    }

    @Override // J3.n
    public m p0(Q3.b bVar) {
        return null;
    }

    public InterfaceC0845h t() {
        InterfaceC0845h interfaceC0845h = (InterfaceC0845h) this.f1293c;
        if (interfaceC0845h != null) {
            return interfaceC0845h;
        }
        J0(1);
        throw null;
    }

    @Override // J3.n
    public void u0(Object obj) {
        if (obj instanceof String) {
            ((ArrayList) this.f1293c).add((String) obj);
        }
    }

    public c(AbstractC0468v abstractC0468v) {
        if (abstractC0468v != null) {
            this.f1293c = abstractC0468v;
        } else {
            I0(0);
            throw null;
        }
    }

    public c() {
        this.f1293c = new ArrayList();
    }
}
