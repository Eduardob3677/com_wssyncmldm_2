package F0;

import android.database.DataSetObserver;
import androidx.viewpager.widget.ViewPager;
import k.C0633x0;

/* loaded from: classes.dex */
public final class h extends DataSetObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f674a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f675b;

    public /* synthetic */ h(int i5, Object obj) {
        this.f674a = i5;
        this.f675b = obj;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        switch (this.f674a) {
            case 0:
                ((ViewPager) this.f675b).e();
                break;
            case 1:
                P.b bVar = (P.b) this.f675b;
                bVar.f2029c = true;
                bVar.notifyDataSetChanged();
                break;
            default:
                C0633x0 c0633x0 = (C0633x0) this.f675b;
                if (c0633x0.f8050z.isShowing()) {
                    c0633x0.r();
                    break;
                }
                break;
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        switch (this.f674a) {
            case 0:
                ((ViewPager) this.f675b).e();
                break;
            case 1:
                P.b bVar = (P.b) this.f675b;
                bVar.f2029c = false;
                bVar.notifyDataSetInvalidated();
                break;
            default:
                ((C0633x0) this.f675b).dismiss();
                break;
        }
    }
}
