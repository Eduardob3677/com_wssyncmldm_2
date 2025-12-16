package C1;

import J.C0028b;
import K.g;
import K.h;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.preference.D;
import androidx.preference.G;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.datepicker.l;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.NavigationMenuItemView;
import com.wssyncmldm.R;
import j0.AbstractC0526A;
import j0.b0;

/* loaded from: classes.dex */
public final class e extends C0028b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f360d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f361e;

    public /* synthetic */ e(int i5, Object obj) {
        this.f360d = i5;
        this.f361e = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002e  */
    @Override // J.C0028b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void c(View view, AccessibilityEvent accessibilityEvent) {
        boolean z4;
        F0.a aVar;
        switch (this.f360d) {
            case 1:
                super.c(view, accessibilityEvent);
                accessibilityEvent.setClassName("androidx.viewpager.widget.ViewPager");
                ViewPager viewPager = (ViewPager) this.f361e;
                F0.a aVar2 = viewPager.f5007g;
                if (aVar2 != null) {
                    z4 = aVar2.b() > 1;
                }
                accessibilityEvent.setScrollable(z4);
                if (accessibilityEvent.getEventType() == 4096 && (aVar = viewPager.f5007g) != null) {
                    accessibilityEvent.setItemCount(aVar.b());
                    accessibilityEvent.setFromIndex(viewPager.f5008h);
                    accessibilityEvent.setToIndex(viewPager.f5008h);
                    break;
                }
                break;
            case 2:
                super.c(view, accessibilityEvent);
                accessibilityEvent.setChecked(((CheckableImageButton) this.f361e).f6034g);
                break;
            default:
                super.c(view, accessibilityEvent);
                break;
        }
    }

    @Override // J.C0028b
    public final void d(View view, h hVar) {
        RecyclerView recyclerView;
        boolean z4 = false;
        int iR = -1;
        View.AccessibilityDelegate accessibilityDelegate = this.f956a;
        Object obj = this.f361e;
        switch (this.f360d) {
            case 0:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, hVar.f1201a);
                int i5 = MaterialButtonToggleGroup.f5905m;
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) obj;
                materialButtonToggleGroup.getClass();
                if (view instanceof MaterialButton) {
                    int i6 = 0;
                    int i7 = 0;
                    while (true) {
                        if (i6 < materialButtonToggleGroup.getChildCount()) {
                            if (materialButtonToggleGroup.getChildAt(i6) == view) {
                                iR = i7;
                            } else {
                                if ((materialButtonToggleGroup.getChildAt(i6) instanceof MaterialButton) && materialButtonToggleGroup.c(i6)) {
                                    i7++;
                                }
                                i6++;
                            }
                        }
                    }
                }
                hVar.h(g.a(((MaterialButton) view).f5902r, 0, 1, iR, 1));
                break;
            case 1:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, hVar.f1201a);
                hVar.g("androidx.viewpager.widget.ViewPager");
                ViewPager viewPager = (ViewPager) obj;
                F0.a aVar = viewPager.f5007g;
                if (aVar != null && aVar.b() > 1) {
                    z4 = true;
                }
                hVar.i(z4);
                if (viewPager.canScrollHorizontally(1)) {
                    hVar.a(4096);
                }
                if (viewPager.canScrollHorizontally(-1)) {
                    hVar.a(8192);
                    break;
                }
                break;
            case 2:
                AccessibilityNodeInfo accessibilityNodeInfo = hVar.f1201a;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                CheckableImageButton checkableImageButton = (CheckableImageButton) obj;
                accessibilityNodeInfo.setCheckable(checkableImageButton.f6035h);
                accessibilityNodeInfo.setChecked(checkableImageButton.f6034g);
                break;
            case 3:
                AccessibilityNodeInfo accessibilityNodeInfo2 = hVar.f1201a;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo2);
                accessibilityNodeInfo2.setCheckable(((NavigationMenuItemView) obj).f6047z);
                break;
            case 4:
                G g5 = (G) obj;
                g5.f4591g.d(view, hVar);
                RecyclerView recyclerView2 = g5.f;
                recyclerView2.getClass();
                b0 b0VarV = RecyclerView.V(view);
                if (b0VarV != null && (recyclerView = b0VarV.f7421r) != null) {
                    iR = recyclerView.R(b0VarV);
                }
                AbstractC0526A adapter = recyclerView2.getAdapter();
                if (adapter instanceof D) {
                    ((D) adapter).k(iR);
                    break;
                }
                break;
            default:
                AccessibilityNodeInfo accessibilityNodeInfo3 = hVar.f1201a;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo3);
                l lVar = (l) obj;
                accessibilityNodeInfo3.setHintText(lVar.n.getVisibility() == 0 ? lVar.getString(R.string.mtrl_picker_toggle_to_year_selection) : lVar.getString(R.string.mtrl_picker_toggle_to_day_selection));
                break;
        }
    }

    @Override // J.C0028b
    public boolean g(View view, int i5, Bundle bundle) throws Resources.NotFoundException {
        switch (this.f360d) {
            case 1:
                if (super.g(view, i5, bundle)) {
                    return true;
                }
                ViewPager viewPager = (ViewPager) this.f361e;
                if (i5 != 4096) {
                    if (i5 == 8192 && viewPager.canScrollHorizontally(-1)) {
                        viewPager.setCurrentItem(viewPager.f5008h - 1);
                        return true;
                    }
                } else if (viewPager.canScrollHorizontally(1)) {
                    viewPager.setCurrentItem(viewPager.f5008h + 1);
                    return true;
                }
                return false;
            case 4:
                return ((G) this.f361e).f4591g.g(view, i5, bundle);
            default:
                return super.g(view, i5, bundle);
        }
    }
}
