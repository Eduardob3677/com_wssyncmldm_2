package androidx.room;

import I3.p;
import java.lang.ref.WeakReference;
import java.util.Set;
import z0.C0943e;

/* loaded from: classes.dex */
public final class f extends d {

    /* renamed from: a, reason: collision with root package name */
    public final g f4945a;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f4946b;

    public f(g gVar, d dVar) {
        super(dVar.mTables);
        this.f4945a = gVar;
        this.f4946b = new WeakReference(dVar);
    }

    @Override // androidx.room.d
    public final void onInvalidated(Set set) {
        e eVar;
        boolean z4;
        d dVar = (d) this.f4946b.get();
        if (dVar != null) {
            dVar.onInvalidated(set);
            return;
        }
        g gVar = this.f4945a;
        synchronized (gVar.f4957k) {
            eVar = (e) gVar.f4957k.n(this);
        }
        if (eVar != null) {
            p pVar = gVar.f4956j;
            int[] iArr = eVar.f4940a;
            synchronized (pVar) {
                try {
                    z4 = false;
                    for (int i5 : iArr) {
                        long[] jArr = (long[]) pVar.f920c;
                        long j3 = jArr[i5];
                        jArr[i5] = j3 - 1;
                        if (j3 == 1) {
                            z4 = true;
                            pVar.f918a = true;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z4) {
                j jVar = gVar.f;
                if (jVar.isOpen()) {
                    gVar.d(((C0943e) jVar.getOpenHelper()).f9716a.h());
                }
            }
        }
    }
}
