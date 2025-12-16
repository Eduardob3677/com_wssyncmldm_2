package p3;

import R2.u;
import a4.h;
import d3.i;
import f1.AbstractC0420a;
import java.util.List;
import o3.AbstractC0729f;
import r3.InterfaceC0802e;

/* renamed from: p3.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0748f extends h {
    @Override // a4.h
    public final List h() {
        InterfaceC0802e interfaceC0802e = this.f3116b;
        i.c("null cannot be cast to non-null type org.jetbrains.kotlin.builtins.functions.FunctionClassDescriptor", interfaceC0802e);
        C0745c c0745c = (C0745c) interfaceC0802e;
        int iOrdinal = c0745c.f8585i.ordinal();
        return iOrdinal != 0 ? iOrdinal != 1 ? u.f2325c : AbstractC0420a.V(AbstractC0729f.d(c0745c, true)) : AbstractC0420a.V(AbstractC0729f.d(c0745c, false));
    }
}
