package G;

import A3.D;
import java.util.ArrayList;
import o.C0722k;

/* loaded from: classes.dex */
public final class f implements I.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f786a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f787b;

    public /* synthetic */ f(int i5, Object obj) {
        this.f786a = i5;
        this.f787b = obj;
    }

    @Override // I.a
    public final void accept(Object obj) {
        switch (this.f786a) {
            case 0:
                g gVar = (g) obj;
                if (gVar == null) {
                    gVar = new g(-3);
                }
                ((D) this.f787b).I0(gVar);
                return;
            default:
                g gVar2 = (g) obj;
                synchronized (h.f792c) {
                    try {
                        C0722k c0722k = h.f793d;
                        ArrayList arrayList = (ArrayList) c0722k.getOrDefault((String) this.f787b, null);
                        if (arrayList == null) {
                            return;
                        }
                        c0722k.remove((String) this.f787b);
                        for (int i5 = 0; i5 < arrayList.size(); i5++) {
                            ((I.a) arrayList.get(i5)).accept(gVar2);
                        }
                        return;
                    } finally {
                    }
                }
        }
    }
}
