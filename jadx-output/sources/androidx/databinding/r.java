package androidx.databinding;

import androidx.lifecycle.C;
import androidx.lifecycle.G;
import androidx.lifecycle.InterfaceC0155w;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class r implements G, m {

    /* renamed from: a, reason: collision with root package name */
    public final w f3675a;

    /* renamed from: b, reason: collision with root package name */
    public WeakReference f3676b = null;

    public r(v vVar, int i5, ReferenceQueue referenceQueue) {
        this.f3675a = new w(vVar, i5, this, referenceQueue);
    }

    @Override // androidx.databinding.m
    public final void a(Object obj) {
        C c2 = (C) obj;
        WeakReference weakReference = this.f3676b;
        InterfaceC0155w interfaceC0155w = weakReference == null ? null : (InterfaceC0155w) weakReference.get();
        if (interfaceC0155w != null) {
            c2.e(interfaceC0155w, this);
        }
    }

    @Override // androidx.databinding.m
    public final void b(InterfaceC0155w interfaceC0155w) {
        WeakReference weakReference = this.f3676b;
        InterfaceC0155w interfaceC0155w2 = weakReference == null ? null : (InterfaceC0155w) weakReference.get();
        C c2 = (C) this.f3675a.f3682c;
        if (c2 != null) {
            if (interfaceC0155w2 != null) {
                c2.j(this);
            }
            if (interfaceC0155w != null) {
                c2.e(interfaceC0155w, this);
            }
        }
        if (interfaceC0155w != null) {
            this.f3676b = new WeakReference(interfaceC0155w);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.lifecycle.G
    public final void c(Object obj) {
        w wVar = this.f3675a;
        v vVar = (v) wVar.get();
        if (vVar == null) {
            wVar.a();
        }
        if (vVar != null) {
            vVar.handleFieldChange(wVar.f3681b, wVar.f3682c, 0);
        }
    }

    @Override // androidx.databinding.m
    public final void d(Object obj) {
        ((C) obj).j(this);
    }
}
