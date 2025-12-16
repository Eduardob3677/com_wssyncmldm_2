package S1;

import android.view.View;

/* renamed from: S1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewOnFocusChangeListenerC0099a implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2463a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f2464b;

    public /* synthetic */ ViewOnFocusChangeListenerC0099a(o oVar, int i5) {
        this.f2463a = i5;
        this.f2464b = oVar;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z4) {
        switch (this.f2463a) {
            case 0:
                d dVar = (d) this.f2464b;
                dVar.t(dVar.u());
                break;
            default:
                j jVar = (j) this.f2464b;
                jVar.f2489l = z4;
                jVar.q();
                if (!z4) {
                    jVar.t(false);
                    jVar.f2490m = false;
                    break;
                }
                break;
        }
    }
}
