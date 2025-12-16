package e;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class u extends Z0.j {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6790b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6791c;

    public /* synthetic */ u(int i5, Object obj) {
        this.f6790b = i5;
        this.f6791c = obj;
    }

    @Override // J.b0
    public final void c() {
        Object obj = this.f6791c;
        switch (this.f6790b) {
            case 0:
                s sVar = (s) obj;
                sVar.f6787d.f6643v.setAlpha(1.0f);
                C c2 = sVar.f6787d;
                c2.f6646y.d(null);
                c2.f6646y = null;
                break;
            case 1:
                C c5 = (C) obj;
                c5.f6643v.setAlpha(1.0f);
                c5.f6646y.d(null);
                c5.f6646y = null;
                break;
            default:
                v vVar = (v) obj;
                ((C) vVar.f6793d).f6643v.setVisibility(8);
                C c6 = (C) vVar.f6793d;
                PopupWindow popupWindow = c6.f6644w;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (c6.f6643v.getParent() instanceof View) {
                    View view = (View) c6.f6643v.getParent();
                    WeakHashMap weakHashMap = J.Q.f940a;
                    J.G.c(view);
                }
                c6.f6643v.e();
                c6.f6646y.d(null);
                c6.f6646y = null;
                ViewGroup viewGroup = c6.f6600A;
                WeakHashMap weakHashMap2 = J.Q.f940a;
                J.G.c(viewGroup);
                break;
        }
    }

    @Override // Z0.j, J.b0
    public void g() {
        Object obj = this.f6791c;
        switch (this.f6790b) {
            case 0:
                ((s) obj).f6787d.f6643v.setVisibility(0);
                break;
            case 1:
                C c2 = (C) obj;
                c2.f6643v.setVisibility(0);
                if (c2.f6643v.getParent() instanceof View) {
                    View view = (View) c2.f6643v.getParent();
                    WeakHashMap weakHashMap = J.Q.f940a;
                    J.G.c(view);
                    break;
                }
                break;
        }
    }
}
