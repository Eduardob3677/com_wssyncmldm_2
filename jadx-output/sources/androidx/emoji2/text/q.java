package androidx.emoji2.text;

import android.util.SparseArray;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f3721a;

    /* renamed from: b, reason: collision with root package name */
    public m f3722b;

    public q(int i5) {
        this.f3721a = new SparseArray(i5);
    }

    public final void a(m mVar, int i5, int i6) {
        int iA = mVar.a(i5);
        SparseArray sparseArray = this.f3721a;
        q qVar = sparseArray == null ? null : (q) sparseArray.get(iA);
        if (qVar == null) {
            qVar = new q(1);
            sparseArray.put(mVar.a(i5), qVar);
        }
        if (i6 > i5) {
            qVar.a(mVar, i5 + 1, i6);
        } else {
            qVar.f3722b = mVar;
        }
    }
}
