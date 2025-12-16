package C0;

import android.view.View;
import android.view.ViewGroup;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public final class D extends u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f248a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f249b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f250c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ j f251d;

    public D(j jVar, ViewGroup viewGroup, View view, View view2) {
        this.f251d = jVar;
        this.f248a = viewGroup;
        this.f249b = view;
        this.f250c = view2;
    }

    @Override // C0.u, C0.s
    public final void b() {
        this.f248a.getOverlay().remove(this.f249b);
    }

    @Override // C0.s
    public final void c(t tVar) {
        this.f250c.setTag(R.id.save_overlay_view, null);
        this.f248a.getOverlay().remove(this.f249b);
        tVar.w(this);
    }

    @Override // C0.u, C0.s
    public final void e() {
        View view = this.f249b;
        if (view.getParent() == null) {
            this.f248a.getOverlay().add(view);
        } else {
            this.f251d.d();
        }
    }
}
