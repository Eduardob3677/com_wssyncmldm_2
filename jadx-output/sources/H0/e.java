package H0;

import androidx.viewpager2.widget.ViewPager2;
import com.google.firebase.messaging.p;
import j0.AbstractC0528C;

/* loaded from: classes.dex */
public final class e extends AbstractC0528C {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f845a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f846b;

    public /* synthetic */ e(int i5, Object obj) {
        this.f845a = i5;
        this.f846b = obj;
    }

    @Override // j0.AbstractC0528C
    public final void a() {
        switch (this.f845a) {
            case 0:
                ViewPager2 viewPager2 = (ViewPager2) this.f846b;
                viewPager2.f5032g = true;
                viewPager2.n.f843l = true;
                break;
            default:
                ((p) this.f846b).L();
                break;
        }
    }

    @Override // j0.AbstractC0528C
    public final void b(int i5, Object obj, int i6) {
        a();
    }
}
