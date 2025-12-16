package androidx.activity;

import androidx.fragment.app.Q;
import androidx.lifecycle.EnumC0149p;
import androidx.lifecycle.InterfaceC0153u;
import androidx.lifecycle.InterfaceC0155w;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"androidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable", "Landroidx/lifecycle/u;", "Landroidx/activity/c;", "activity_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes.dex */
final class OnBackPressedDispatcher$LifecycleOnBackPressedCancellable implements InterfaceC0153u, c {

    /* renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.r f3145a;

    /* renamed from: b, reason: collision with root package name */
    public final Q f3146b;

    /* renamed from: c, reason: collision with root package name */
    public t f3147c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ v f3148d;

    public OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(v vVar, androidx.lifecycle.r rVar, Q q2) {
        d3.i.e("onBackPressedCallback", q2);
        this.f3148d = vVar;
        this.f3145a = rVar;
        this.f3146b = q2;
        rVar.a(this);
    }

    @Override // androidx.lifecycle.InterfaceC0153u
    public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) {
        if (enumC0149p != EnumC0149p.ON_START) {
            if (enumC0149p != EnumC0149p.ON_STOP) {
                if (enumC0149p == EnumC0149p.ON_DESTROY) {
                    cancel();
                    return;
                }
                return;
            } else {
                t tVar = this.f3147c;
                if (tVar != null) {
                    tVar.cancel();
                    return;
                }
                return;
            }
        }
        v vVar = this.f3148d;
        vVar.getClass();
        Q q2 = this.f3146b;
        d3.i.e("onBackPressedCallback", q2);
        vVar.f3208b.addLast(q2);
        t tVar2 = new t(vVar, q2);
        q2.f3761b.add(tVar2);
        vVar.d();
        q2.f3762c = new u(0, vVar, v.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0, 1);
        this.f3147c = tVar2;
    }

    @Override // androidx.activity.c
    public final void cancel() {
        this.f3145a.b(this);
        Q q2 = this.f3146b;
        q2.getClass();
        q2.f3761b.remove(this);
        t tVar = this.f3147c;
        if (tVar != null) {
            tVar.cancel();
        }
        this.f3147c = null;
    }
}
