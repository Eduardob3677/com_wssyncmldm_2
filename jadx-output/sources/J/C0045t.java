package J;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.wssyncmldm.R;
import e.C0405i;

/* renamed from: J.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0045t implements I.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1012a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1013b;

    public /* synthetic */ C0045t(int i5, Object obj) {
        this.f1012a = i5;
        this.f1013b = obj;
    }

    @Override // I.a
    public final void accept(Object obj) {
        LinearLayout linearLayout;
        switch (this.f1012a) {
            case 0:
                ((View) this.f1013b).setTouchDelegate((C0050y) obj);
                break;
            default:
                ViewGroup viewGroup = (ViewGroup) obj;
                ((C0405i) this.f1013b).getClass();
                if (viewGroup != null && (linearLayout = (LinearLayout) viewGroup.findViewById(R.id.buttonBarLayout)) != null) {
                    linearLayout.post(new D1.b(23, linearLayout));
                    break;
                }
                break;
        }
    }
}
