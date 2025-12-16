package k;

import androidx.appcompat.widget.Toolbar;
import j.C0510k;

/* loaded from: classes.dex */
public final /* synthetic */ class z1 implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8064c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Toolbar f8065d;

    public /* synthetic */ z1(Toolbar toolbar, int i5) {
        this.f8064c = i5;
        this.f8065d = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8064c) {
            case 0:
                D1 d12 = this.f8065d.f3527O;
                C0510k c0510k = d12 == null ? null : d12.f7672d;
                if (c0510k != null) {
                    c0510k.collapseActionView();
                    break;
                }
                break;
            default:
                this.f8065d.o();
                break;
        }
    }
}
