package A;

import android.view.View;
import com.google.android.material.appbar.model.view.BasicViewPagerAppBarView;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes.dex */
public final /* synthetic */ class p implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f33c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f34d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f35e;

    public /* synthetic */ p(int i5, Object obj, int i6) {
        this.f33c = i6;
        this.f35e = obj;
        this.f34d = i5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f33c) {
            case 0:
                ((b) this.f35e).h(this.f34d);
                break;
            case 1:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f35e;
                View view = (View) sideSheetBehavior.f6062p.get();
                if (view != null) {
                    sideSheetBehavior.u(view, this.f34d, false);
                    break;
                }
                break;
            default:
                BasicViewPagerAppBarView.moveNextAndRemove$lambda$11$lambda$10((BasicViewPagerAppBarView) this.f35e, this.f34d);
                break;
        }
    }
}
