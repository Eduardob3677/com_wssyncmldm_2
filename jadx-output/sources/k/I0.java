package k;

import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class I0 implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7692c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ SearchView f7693d;

    public /* synthetic */ I0(SearchView searchView, int i5) {
        this.f7692c = i5;
        this.f7693d = searchView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7692c) {
            case 0:
                this.f7693d.v();
                break;
            default:
                P.b bVar = this.f7693d.f3386R;
                if (bVar instanceof s1) {
                    bVar.b(null);
                    break;
                }
                break;
        }
    }
}
