package V;

import J.r0;
import android.os.SystemClock;
import android.view.Choreographer;
import androidx.databinding.v;
import java.util.ArrayList;
import o.C0722k;
import s2.C0837c;

/* loaded from: classes.dex */
public final class a implements Choreographer.FrameCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2754a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2755b;

    public /* synthetic */ a(int i5, Object obj) {
        this.f2754a = i5;
        this.f2755b = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006a  */
    @Override // android.view.Choreographer.FrameCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void doFrame(long j3) {
        long j5;
        int i5;
        float f;
        switch (this.f2754a) {
            case 0:
                C0837c c0837c = (C0837c) ((r0) this.f2755b).f1006c;
                c0837c.getClass();
                long jUptimeMillis = SystemClock.uptimeMillis();
                b bVar = (b) c0837c.f9022c;
                bVar.getClass();
                long jUptimeMillis2 = SystemClock.uptimeMillis();
                int i6 = 0;
                while (true) {
                    ArrayList arrayList = bVar.f2757b;
                    boolean z4 = true;
                    if (i6 >= arrayList.size()) {
                        if (bVar.f2760e) {
                            for (int size = arrayList.size() - 1; size >= 0; size--) {
                                if (arrayList.get(size) == null) {
                                    arrayList.remove(size);
                                }
                            }
                            bVar.f2760e = false;
                        }
                        if (arrayList.size() > 0) {
                            if (bVar.f2759d == null) {
                                bVar.f2759d = new r0(bVar.f2758c);
                            }
                            r0 r0Var = bVar.f2759d;
                            ((Choreographer) r0Var.f1007d).postFrameCallback((a) r0Var.f1008e);
                            break;
                        }
                    } else {
                        e eVar = (e) arrayList.get(i6);
                        if (eVar == null) {
                            i5 = i6;
                        } else {
                            C0722k c0722k = bVar.f2756a;
                            Long l5 = (Long) c0722k.getOrDefault(eVar, null);
                            if (l5 != null) {
                                if (l5.longValue() < jUptimeMillis2) {
                                    c0722k.remove(eVar);
                                    j5 = eVar.f;
                                    if (j5 != 0) {
                                        eVar.f = jUptimeMillis;
                                        eVar.d(eVar.f2765b);
                                    } else {
                                        long j6 = jUptimeMillis - j5;
                                        eVar.f = jUptimeMillis;
                                        if (eVar.f2773k != Float.MAX_VALUE) {
                                            f fVar = eVar.f2772j;
                                            double d2 = fVar.f2781i;
                                            i5 = i6;
                                            long j7 = j6 / 2;
                                            c cVarA = fVar.a(eVar.f2765b, eVar.f2764a, j7);
                                            f fVar2 = eVar.f2772j;
                                            fVar2.f2781i = eVar.f2773k;
                                            eVar.f2773k = Float.MAX_VALUE;
                                            c cVarA2 = fVar2.a(cVarA.f2761a, cVarA.f2762b, j7);
                                            eVar.f2765b = cVarA2.f2761a;
                                            eVar.f2764a = cVarA2.f2762b;
                                            f = Float.MAX_VALUE;
                                        } else {
                                            i5 = i6;
                                            f = Float.MAX_VALUE;
                                            c cVarA3 = eVar.f2772j.a(eVar.f2765b, eVar.f2764a, j6);
                                            eVar.f2765b = cVarA3.f2761a;
                                            eVar.f2764a = cVarA3.f2762b;
                                        }
                                        float fMax = Math.max(eVar.f2765b, -3.4028235E38f);
                                        eVar.f2765b = fMax;
                                        eVar.f2765b = Math.min(fMax, f);
                                        float f5 = eVar.f2764a;
                                        f fVar3 = eVar.f2772j;
                                        fVar3.getClass();
                                        if (Math.abs(f5) >= fVar3.f2778e || Math.abs(r5 - ((float) fVar3.f2781i)) >= fVar3.f2777d) {
                                            z4 = false;
                                        } else {
                                            eVar.f2765b = (float) eVar.f2772j.f2781i;
                                            eVar.f2764a = 0.0f;
                                        }
                                        float fMin = Math.min(eVar.f2765b, f);
                                        eVar.f2765b = fMin;
                                        float fMax2 = Math.max(fMin, -3.4028235E38f);
                                        eVar.f2765b = fMax2;
                                        eVar.d(fMax2);
                                        if (z4) {
                                            eVar.c(false);
                                        }
                                    }
                                }
                                i5 = i6;
                            } else {
                                j5 = eVar.f;
                                if (j5 != 0) {
                                }
                            }
                        }
                        i6 = i5 + 1;
                    }
                }
                break;
            default:
                ((v) this.f2755b).mRebindRunnable.run();
                break;
        }
    }
}
