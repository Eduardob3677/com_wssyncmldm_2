package H0;

import K.r;
import android.view.View;
import androidx.viewpager2.widget.ViewPager2;
import com.google.firebase.messaging.p;

/* loaded from: classes.dex */
public final class k implements r {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f851c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ p f852d;

    public /* synthetic */ k(p pVar, int i5) {
        this.f851c = i5;
        this.f852d = pVar;
    }

    @Override // K.r
    public final boolean i(View view) {
        switch (this.f851c) {
            case 0:
                int currentItem = ((ViewPager2) view).getCurrentItem() + 1;
                ViewPager2 viewPager2 = (ViewPager2) this.f852d.f6260g;
                if (viewPager2.f5044t) {
                    viewPager2.d(currentItem);
                    break;
                }
                break;
            default:
                int currentItem2 = ((ViewPager2) view).getCurrentItem() - 1;
                ViewPager2 viewPager22 = (ViewPager2) this.f852d.f6260g;
                if (viewPager22.f5044t) {
                    viewPager22.d(currentItem2);
                    break;
                }
                break;
        }
        return true;
    }
}
