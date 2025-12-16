package androidx.databinding;

import androidx.lifecycle.InterfaceC0155w;
import java.lang.ref.ReferenceQueue;

/* loaded from: classes.dex */
public final class t implements m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3677a;

    /* renamed from: b, reason: collision with root package name */
    public final w f3678b;

    public t(v vVar, int i5, ReferenceQueue referenceQueue, int i6) {
        this.f3677a = i6;
        switch (i6) {
            case 1:
                this.f3678b = new w(vVar, i5, this, referenceQueue);
                break;
            default:
                this.f3678b = new w(vVar, i5, this, referenceQueue);
                break;
        }
    }

    private final void c(InterfaceC0155w interfaceC0155w) {
    }

    private final void e(InterfaceC0155w interfaceC0155w) {
    }

    @Override // androidx.databinding.m
    public final void a(Object obj) {
        switch (this.f3677a) {
            case 0:
                B.f.F(obj);
                throw null;
            default:
                B.f.F(obj);
                throw null;
        }
    }

    @Override // androidx.databinding.m
    public final void b(InterfaceC0155w interfaceC0155w) {
        int i5 = this.f3677a;
    }

    @Override // androidx.databinding.m
    public final void d(Object obj) {
        switch (this.f3677a) {
            case 0:
                B.f.F(obj);
                throw null;
            default:
                B.f.F(obj);
                throw null;
        }
    }
}
