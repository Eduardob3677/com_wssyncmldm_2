package e;

import J.a0;
import android.view.ViewGroup;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class s implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6786c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C f6787d;

    public /* synthetic */ s(C c2, int i5) {
        this.f6786c = i5;
        this.f6787d = c2;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        ViewGroup viewGroup;
        boolean z4 = true;
        C c2 = this.f6787d;
        switch (this.f6786c) {
            case 0:
                if ((c2.f6624b0 & 1) != 0) {
                    c2.w(0);
                }
                if ((c2.f6624b0 & 4096) != 0) {
                    c2.w(108);
                }
                c2.f6623a0 = false;
                c2.f6624b0 = 0;
                break;
            default:
                c2.f6644w.showAtLocation(c2.f6643v, 55, 0, 0);
                a0 a0Var = c2.f6646y;
                if (a0Var != null) {
                    a0Var.b();
                }
                if (!c2.f6647z || (viewGroup = c2.f6600A) == null) {
                    z4 = false;
                } else {
                    WeakHashMap weakHashMap = J.Q.f940a;
                    if (!viewGroup.isLaidOut()) {
                    }
                }
                if (!z4) {
                    c2.f6643v.setAlpha(1.0f);
                    c2.f6643v.setVisibility(0);
                    break;
                } else {
                    c2.f6643v.setAlpha(0.0f);
                    a0 a0VarA = J.Q.a(c2.f6643v);
                    a0VarA.a(1.0f);
                    c2.f6646y = a0VarA;
                    a0VarA.d(new u(0, this));
                    break;
                }
                break;
        }
    }
}
