package b4;

import h4.AbstractC0468v;
import r3.InterfaceC0799b;

/* loaded from: classes.dex */
public final class b extends K3.c {

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC0799b f5155d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(InterfaceC0799b interfaceC0799b, AbstractC0468v abstractC0468v) {
        super(abstractC0468v);
        if (interfaceC0799b == null) {
            I0(0);
            throw null;
        }
        if (abstractC0468v == null) {
            I0(1);
            throw null;
        }
        this.f5155d = interfaceC0799b;
    }

    public static /* synthetic */ void I0(int i5) {
        String str = i5 != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i5 != 2 ? 3 : 2];
        if (i5 == 1) {
            objArr[0] = "receiverType";
        } else if (i5 == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver";
        } else if (i5 != 3) {
            objArr[0] = "callableDescriptor";
        } else {
            objArr[0] = "newType";
        }
        if (i5 != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver";
        } else {
            objArr[1] = "getDeclarationDescriptor";
        }
        if (i5 != 2) {
            if (i5 != 3) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "replaceType";
            }
        }
        String str2 = String.format(str, objArr);
        if (i5 == 2) {
            throw new IllegalStateException(str2);
        }
    }

    public final String toString() {
        return e() + ": Ext {" + this.f5155d + "}";
    }
}
