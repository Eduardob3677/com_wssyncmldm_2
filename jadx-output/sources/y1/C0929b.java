package y1;

import H0.j;
import com.google.android.material.appbar.model.view.BasicViewPagerAppBarView;
import k.C0589f1;

/* renamed from: y1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0929b extends j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BasicViewPagerAppBarView f9702a;

    public C0929b(BasicViewPagerAppBarView basicViewPagerAppBarView) {
        this.f9702a = basicViewPagerAppBarView;
    }

    @Override // H0.j
    public final void c(int i5) {
        C0589f1 indicator;
        BasicViewPagerAppBarView basicViewPagerAppBarView = this.f9702a;
        if (basicViewPagerAppBarView.isDeleteAnimatorRunning || (indicator = basicViewPagerAppBarView.getIndicator()) == null) {
            return;
        }
        indicator.setSelectedPosition(i5);
    }
}
