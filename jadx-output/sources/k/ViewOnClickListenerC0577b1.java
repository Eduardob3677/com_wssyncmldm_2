package k;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.model.AppBarModel;
import com.google.android.material.appbar.model.ButtonModel;
import com.google.android.material.appbar.model.view.SuggestAppBarView;
import com.google.android.material.appbar.model.view.ViewPagerAppBarView;
import java.util.ArrayList;

/* renamed from: k.b1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0577b1 implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7840c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f7841d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f7842e;

    public /* synthetic */ ViewOnClickListenerC0577b1(Object obj, ViewGroup viewGroup, int i5) {
        this.f7840c = i5;
        this.f7841d = obj;
        this.f7842e = viewGroup;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f7840c) {
            case 0:
                InterfaceC0580c1 interfaceC0580c1 = (InterfaceC0580c1) this.f7841d;
                d3.i.e("$itemClickListener", interfaceC0580c1);
                C0589f1 c0589f1 = (C0589f1) this.f7842e;
                d3.i.e("this$0", c0589f1);
                ArrayList arrayList = c0589f1.f7851c;
                d3.i.e("<this>", arrayList);
                int iIndexOf = arrayList.indexOf(view);
                ViewPager2 viewpager = ((ViewPagerAppBarView) ((c1.w) interfaceC0580c1).f5265c).getViewpager();
                if (viewpager != null) {
                    viewpager.c(iIndexOf);
                    break;
                }
                break;
            case 1:
                SuggestAppBarView.generateButton$lambda$9$lambda$8((ButtonModel) this.f7841d, (SuggestAppBarView) this.f7842e, view);
                break;
            default:
                SuggestAppBarView.setCloseClickListener$lambda$4$lambda$3((AppBarModel.OnClickListener) this.f7841d, (SuggestAppBarView) this.f7842e, view);
                break;
        }
    }
}
