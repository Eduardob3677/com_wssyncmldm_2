package W1;

import android.content.Context;
import b2.t;
import k2.InterfaceC0638a;
import p2.C0742a;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements InterfaceC0638a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2813a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2814b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2815c;

    public /* synthetic */ c(Object obj, int i5, Object obj2) {
        this.f2813a = i5;
        this.f2814b = obj;
        this.f2815c = obj2;
    }

    @Override // k2.InterfaceC0638a
    public final Object get() {
        switch (this.f2813a) {
            case 0:
                g gVar = (g) this.f2814b;
                String strF = gVar.f();
                return new C0742a((Context) this.f2815c, strF);
            default:
                b2.i iVar = (b2.i) this.f2814b;
                iVar.getClass();
                b2.c cVar = (b2.c) this.f2815c;
                return cVar.f5120e.m(new t(cVar, iVar));
        }
    }
}
