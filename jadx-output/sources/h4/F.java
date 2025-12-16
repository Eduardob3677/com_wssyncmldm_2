package h4;

import com.samsung.android.knox.ex.KnoxContract;
import java.util.ArrayList;
import java.util.List;
import r3.InterfaceC0789Q;
import r3.InterfaceC0804g;

/* loaded from: classes.dex */
public final class F extends L {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f7018c;

    public F(ArrayList arrayList) {
        this.f7018c = arrayList;
    }

    @Override // h4.L
    public final N g(J j3) {
        d3.i.e(KnoxContract.KEY, j3);
        if (!this.f7018c.contains(j3)) {
            return null;
        }
        InterfaceC0804g interfaceC0804gI = j3.i();
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor", interfaceC0804gI);
        return X.k((InterfaceC0789Q) interfaceC0804gI);
    }
}
