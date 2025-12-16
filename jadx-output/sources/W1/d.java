package W1;

import android.util.Log;
import b1.InterfaceC0196b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class d implements InterfaceC0196b {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReference f2816a = new AtomicReference();

    @Override // b1.InterfaceC0196b
    public final void a(boolean z4) {
        synchronized (g.f2820i) {
            try {
                Iterator it = new ArrayList(g.f2822k.values()).iterator();
                while (it.hasNext()) {
                    g gVar = (g) it.next();
                    if (gVar.f2827e.get()) {
                        Log.d("FirebaseApp", "Notifying background state change listeners.");
                        Iterator it2 = gVar.f2829h.iterator();
                        if (it2.hasNext()) {
                            B.f.F(it2.next());
                            throw null;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
