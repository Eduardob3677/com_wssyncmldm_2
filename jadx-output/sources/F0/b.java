package F0;

import A3.p;
import J.I;
import J.Q;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import i3.InterfaceC0490k;
import j0.C0542n;
import java.lang.reflect.Method;
import java.util.Comparator;
import java.util.WeakHashMap;
import l3.C0663T;
import r3.AbstractC0811n;

/* loaded from: classes.dex */
public final class b implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f663a;

    public /* synthetic */ b(int i5) {
        this.f663a = i5;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0082  */
    @Override // java.util.Comparator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int compare(Object obj, Object obj2) {
        int i5 = 1;
        switch (this.f663a) {
            case 0:
                return ((e) obj).f666b - ((e) obj2).f666b;
            case 1:
                return ((int[]) obj)[0] - ((int[]) obj2)[0];
            case 2:
                return ((View) obj).getTop() - ((View) obj2).getTop();
            case 3:
                C0542n c0542n = (C0542n) obj;
                C0542n c0542n2 = (C0542n) obj2;
                RecyclerView recyclerView = c0542n.f7541d;
                if ((recyclerView == null) == (c0542n2.f7541d == null)) {
                    boolean z4 = c0542n.f7538a;
                    if (z4 == c0542n2.f7538a) {
                        int i6 = c0542n2.f7539b - c0542n.f7539b;
                        if (i6 == 0 && (i6 = c0542n.f7540c - c0542n2.f7540c) == 0) {
                            return 0;
                        }
                        return i6;
                    }
                    if (z4) {
                    }
                } else if (recyclerView != null) {
                    i5 = -1;
                }
                return i5;
            case 4:
                return L2.b.e(((Method) obj).getName(), ((Method) obj2).getName());
            case 5:
                return L2.b.e(((C0663T) ((InterfaceC0490k) obj)).b(), ((C0663T) ((InterfaceC0490k) obj2)).b());
            case 6:
                Integer numB = AbstractC0811n.b((p) obj, (p) obj2);
                return Integer.valueOf(numB != null ? numB.intValue() : 0).intValue();
            case 7:
                return ((r.f) obj).f8744b - ((r.f) obj2).f8744b;
            default:
                WeakHashMap weakHashMap = Q.f940a;
                float fM = I.m((View) obj);
                float fM2 = I.m((View) obj2);
                if (fM > fM2) {
                    return -1;
                }
                return fM < fM2 ? 1 : 0;
        }
    }
}
