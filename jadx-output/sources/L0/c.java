package L0;

import A3.D;
import android.content.Context;
import f1.AbstractC0420a;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import s2.C0837c;

/* loaded from: classes.dex */
public final class c implements androidx.emoji2.text.i {

    /* renamed from: a, reason: collision with root package name */
    public Context f1317a;

    public c(Context context, int i5) {
        switch (i5) {
            case 2:
                this.f1317a = context;
                break;
            default:
                this.f1317a = context.getApplicationContext();
                break;
        }
    }

    @Override // androidx.emoji2.text.i
    public void a(AbstractC0420a abstractC0420a) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new androidx.emoji2.text.a("EmojiCompatInitializer"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new com.idm.fotaagent.a(this, abstractC0420a, threadPoolExecutor, 2));
    }

    public d b() {
        Context context = this.f1317a;
        if (context == null) {
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }
        d dVar = new d();
        dVar.f1318c = N0.a.a(g.f1324a);
        K.j jVar = new K.j(context);
        dVar.f1319d = jVar;
        dVar.f1320e = N0.a.a(new D(jVar, 9, new M0.e(jVar)));
        P2.a aVarA = N0.a.a(new P0.e(new M0.e((P2.a) dVar.f1319d)));
        dVar.f = aVarA;
        C0837c c0837c = new C0837c(15);
        K.j jVar2 = dVar.f1319d;
        P0.e eVar = new P0.e(jVar2, aVarA, c0837c);
        P2.a aVar = dVar.f1318c;
        P2.a aVar2 = dVar.f1320e;
        dVar.f1321g = N0.a.a(new l(new l(aVar, aVar2, eVar, aVarA, aVarA), new J3.c(jVar2, aVar2, aVarA, eVar, aVar, aVarA), new P0.e(aVar, aVarA, eVar, aVarA)));
        return dVar;
    }
}
