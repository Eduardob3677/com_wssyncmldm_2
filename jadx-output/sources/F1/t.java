package F1;

import com.google.android.material.chip.SeslExpandableContainer;

/* loaded from: classes.dex */
public final /* synthetic */ class t implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f747c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ SeslExpandableContainer f748d;

    public /* synthetic */ t(SeslExpandableContainer seslExpandableContainer, int i5) {
        this.f747c = i5;
        this.f748d = seslExpandableContainer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f747c) {
            case 0:
                SeslExpandableContainer seslExpandableContainer = this.f748d;
                seslExpandableContainer.f5945e.setExpanded(seslExpandableContainer.f5946g);
                break;
            default:
                SeslExpandableContainer seslExpandableContainer2 = this.f748d;
                seslExpandableContainer2.f5945e.setExpanded(seslExpandableContainer2.f5946g);
                break;
        }
    }
}
