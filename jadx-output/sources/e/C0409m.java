package e;

import a.InterfaceC0101b;
import android.content.Context;

/* renamed from: e.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0409m implements InterfaceC0101b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractActivityC0410n f6779a;

    public C0409m(AbstractActivityC0410n abstractActivityC0410n) {
        this.f6779a = abstractActivityC0410n;
    }

    @Override // a.InterfaceC0101b
    public final void a(Context context) {
        AbstractActivityC0410n abstractActivityC0410n = this.f6779a;
        r delegate = abstractActivityC0410n.getDelegate();
        delegate.a();
        abstractActivityC0410n.getSavedStateRegistry().a("androidx:appcompat");
        delegate.f();
    }
}
