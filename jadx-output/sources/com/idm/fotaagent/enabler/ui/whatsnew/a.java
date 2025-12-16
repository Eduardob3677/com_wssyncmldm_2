package com.idm.fotaagent.enabler.ui.whatsnew;

import android.content.Context;
import b2.e;
import b2.f;
import b2.p;
import b2.t;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import com.idm.fotaagent.enabler.ui.DescriptionContent;
import i2.b;
import i2.c;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import s2.C0835a;
import s2.C0836b;
import s2.C0837c;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements DescriptionBody, MajorUpdate, f {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6439c;

    public /* synthetic */ a(int i5) {
        this.f6439c = i5;
    }

    @Override // com.idm.fotaagent.enabler.ui.whatsnew.DescriptionBody
    public CharSequence get(Context context, DescriptionContent descriptionContent) {
        switch (this.f6439c) {
            case 0:
                return DescriptionBody.lambda$static$1(context, descriptionContent);
            default:
                return DescriptionBody.lambda$static$2(context, descriptionContent);
        }
    }

    @Override // com.idm.fotaagent.enabler.ui.whatsnew.MajorUpdate
    public boolean isMajorUpdate(Context context) {
        switch (this.f6439c) {
            case 2:
                return MajorUpdate.lambda$static$0(context);
            default:
                return MajorUpdate.lambda$static$1(context);
        }
    }

    @Override // b2.f
    public Object m(t tVar) {
        switch (this.f6439c) {
            case 4:
                Context context = (Context) tVar.a(Context.class);
                tVar.e(c.class);
                p pVar = new p(new e(2, context));
                new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), b.f7146b);
                b bVar = new b();
                bVar.f7147a = pVar;
                return bVar;
            case 5:
                return FirebaseInstallationsRegistrar.lambda$getComponents$0(tVar);
            default:
                Set setE = tVar.e(C0835a.class);
                C0837c c0837c = C0837c.f9021d;
                if (c0837c == null) {
                    synchronized (C0837c.class) {
                        try {
                            c0837c = C0837c.f9021d;
                            if (c0837c == null) {
                                c0837c = new C0837c(0);
                                C0837c.f9021d = c0837c;
                            }
                        } finally {
                        }
                    }
                }
                return new C0836b(setE, c0837c);
        }
    }
}
