package com.idm.fotaagent;

import Z0.j;
import androidx.emoji2.text.i;
import androidx.emoji2.text.k;
import androidx.emoji2.text.o;
import androidx.emoji2.text.p;
import f1.AbstractC0420a;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.function.BooleanSupplier;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6320c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f6321d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f6322e;
    public final /* synthetic */ Object f;

    public /* synthetic */ a(Object obj, Object obj2, Object obj3, int i5) {
        this.f6320c = i5;
        this.f6321d = obj;
        this.f6322e = obj2;
        this.f = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        switch (this.f6320c) {
            case 0:
                ((InitExecutor) this.f6321d).lambda$execute$4((FutureTask) this.f6322e, (BooleanSupplier) this.f);
                return;
            case 1:
                ((InitExecutor) this.f6321d).lambda$execute$3((FutureTask) this.f6322e, (BooleanSupplier) this.f);
                return;
            default:
                L0.c cVar = (L0.c) this.f6321d;
                AbstractC0420a abstractC0420a = (AbstractC0420a) this.f6322e;
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.f;
                cVar.getClass();
                try {
                    p pVarV = j.v(cVar.f1317a);
                    if (pVarV == null) {
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    }
                    o oVar = (o) ((i) pVarV.f3692b);
                    synchronized (oVar.f3716d) {
                        oVar.f = threadPoolExecutor;
                    }
                    ((i) pVarV.f3692b).a(new k(abstractC0420a, threadPoolExecutor));
                    return;
                } catch (Throwable th) {
                    abstractC0420a.Z(th);
                    threadPoolExecutor.shutdown();
                    return;
                }
        }
    }
}
