package c0;

import B.f;
import J.r0;
import androidx.lifecycle.InterfaceC0155w;
import androidx.lifecycle.b0;
import androidx.lifecycle.c0;
import java.io.PrintWriter;
import o.C0723l;

/* renamed from: c0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0209c extends AbstractC0207a {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0155w f5187a;

    /* renamed from: b, reason: collision with root package name */
    public final C0208b f5188b;

    public C0209c(InterfaceC0155w interfaceC0155w, c0 c0Var) {
        this.f5187a = interfaceC0155w;
        this.f5188b = (C0208b) new r0(c0Var, (b0) C0208b.f5185b).d(C0208b.class);
    }

    public final void b(String str, PrintWriter printWriter) {
        C0723l c0723l = this.f5188b.f5186a;
        if (c0723l.f8443e > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            if (c0723l.f8443e <= 0) {
                return;
            }
            f.F(c0723l.f8442d[0]);
            printWriter.print(str);
            printWriter.print("  #");
            printWriter.print(c0723l.f8441c[0]);
            printWriter.print(": ");
            throw null;
        }
    }

    public final String toString() {
        int iLastIndexOf;
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        InterfaceC0155w interfaceC0155w = this.f5187a;
        if (interfaceC0155w == null) {
            sb.append("null");
        } else {
            String simpleName = interfaceC0155w.getClass().getSimpleName();
            if (simpleName.length() <= 0 && (iLastIndexOf = (simpleName = interfaceC0155w.getClass().getName()).lastIndexOf(46)) > 0) {
                simpleName = simpleName.substring(iLastIndexOf + 1);
            }
            sb.append(simpleName);
            sb.append('{');
            sb.append(Integer.toHexString(System.identityHashCode(interfaceC0155w)));
        }
        sb.append("}}");
        return sb.toString();
    }
}
