package j0;

import android.os.Trace;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.p000firebaseauthapi.b5;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;

/* renamed from: j0.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0543o implements Runnable {

    /* renamed from: g, reason: collision with root package name */
    public static final ThreadLocal f7543g = new ThreadLocal();

    /* renamed from: h, reason: collision with root package name */
    public static final F0.b f7544h = new F0.b(3);

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f7545c;

    /* renamed from: d, reason: collision with root package name */
    public long f7546d;

    /* renamed from: e, reason: collision with root package name */
    public long f7547e;
    public ArrayList f;

    public static b0 c(RecyclerView recyclerView, int i5, long j3) {
        int iJ = recyclerView.f4863h.j();
        for (int i6 = 0; i6 < iJ; i6++) {
            b0 b0VarV = RecyclerView.V(recyclerView.f4863h.i(i6));
            if (b0VarV.f7408c == i5 && !b0VarV.h()) {
                return null;
            }
        }
        P p4 = recyclerView.f4855e;
        try {
            recyclerView.h0();
            b0 b0VarK = p4.k(i5, j3);
            if (b0VarK != null) {
                if (!b0VarK.g() || b0VarK.h()) {
                    p4.a(b0VarK, false);
                } else {
                    p4.h(b0VarK.f7406a);
                }
            }
            recyclerView.i0(false);
            return b0VarK;
        } catch (Throwable th) {
            recyclerView.i0(false);
            throw th;
        }
    }

    public final void a(RecyclerView recyclerView, int i5, int i6) {
        if (recyclerView.f4895u) {
            if (RecyclerView.f4770l2 && !this.f7545c.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.f7546d == 0) {
                this.f7546d = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        b5 b5Var = recyclerView.k0;
        b5Var.f5521a = i5;
        b5Var.f5522b = i6;
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x013a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(long j3) {
        C0542n c0542n;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        C0542n c0542n2;
        ArrayList arrayList = this.f7545c;
        int size = arrayList.size();
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList.get(i6);
            if (recyclerView3.getWindowVisibility() == 0) {
                b5 b5Var = recyclerView3.k0;
                b5Var.c(recyclerView3, false);
                i5 += b5Var.f5523c;
            }
        }
        ArrayList arrayList2 = this.f;
        arrayList2.ensureCapacity(i5);
        int i7 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList.get(i8);
            if (recyclerView4.getWindowVisibility() == 0) {
                b5 b5Var2 = recyclerView4.k0;
                int iAbs = Math.abs(b5Var2.f5522b) + Math.abs(b5Var2.f5521a);
                for (int i9 = 0; i9 < b5Var2.f5523c * 2; i9 += 2) {
                    if (i7 >= arrayList2.size()) {
                        c0542n2 = new C0542n();
                        arrayList2.add(c0542n2);
                    } else {
                        c0542n2 = (C0542n) arrayList2.get(i7);
                    }
                    int[] iArr = (int[]) b5Var2.f5524d;
                    int i10 = iArr[i9 + 1];
                    c0542n2.f7538a = i10 <= iAbs;
                    c0542n2.f7539b = iAbs;
                    c0542n2.f7540c = i10;
                    c0542n2.f7541d = recyclerView4;
                    c0542n2.f7542e = iArr[i9];
                    i7++;
                }
            }
        }
        Collections.sort(arrayList2, f7544h);
        for (int i11 = 0; i11 < arrayList2.size() && (recyclerView = (c0542n = (C0542n) arrayList2.get(i11)).f7541d) != null; i11++) {
            b0 b0VarC = c(recyclerView, c0542n.f7542e, c0542n.f7538a ? Long.MAX_VALUE : j3);
            if (b0VarC != null && b0VarC.f7407b != null && b0VarC.g() && !b0VarC.h() && (recyclerView2 = (RecyclerView) b0VarC.f7407b.get()) != null) {
                if (recyclerView2.f4791F && recyclerView2.f4863h.j() != 0) {
                    F f = recyclerView2.f4815O;
                    if (f != null) {
                        f.e();
                    }
                    J j5 = recyclerView2.f4884p;
                    P p4 = recyclerView2.f4855e;
                    if (j5 != null) {
                        j5.i0(p4);
                    }
                    J j6 = recyclerView2.f4884p;
                    if (j6 != null) {
                        j6.j0(p4);
                    }
                    p4.f7363a.clear();
                    p4.f();
                }
                b5 b5Var3 = recyclerView2.k0;
                b5Var3.c(recyclerView2, true);
                if (b5Var3.f5523c != 0) {
                    try {
                        Trace.beginSection("RV Nested Prefetch");
                        X x4 = recyclerView2.l0;
                        AbstractC0526A abstractC0526A = recyclerView2.f4883o;
                        x4.f7381d = 1;
                        x4.f7382e = abstractC0526A.a();
                        x4.f7383g = false;
                        x4.f7384h = false;
                        x4.f7385i = false;
                        for (int i12 = 0; i12 < b5Var3.f5523c * 2; i12 += 2) {
                            c(recyclerView2, ((int[]) b5Var3.f5524d)[i12], j3);
                        }
                    } finally {
                        Trace.endSection();
                    }
                }
            }
            c0542n.f7538a = false;
            c0542n.f7539b = 0;
            c0542n.f7540c = 0;
            c0542n.f7541d = null;
            c0542n.f7542e = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Trace.beginSection("RV Prefetch");
            ArrayList arrayList = this.f7545c;
            if (arrayList.isEmpty()) {
                return;
            }
            int size = arrayList.size();
            long jMax = 0;
            for (int i5 = 0; i5 < size; i5++) {
                RecyclerView recyclerView = (RecyclerView) arrayList.get(i5);
                if (recyclerView.getWindowVisibility() == 0) {
                    jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                }
            }
            if (jMax == 0) {
                return;
            }
            b(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f7547e);
        } finally {
            this.f7546d = 0L;
            Trace.endSection();
        }
    }
}
