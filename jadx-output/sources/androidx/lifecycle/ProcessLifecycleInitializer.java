package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/lifecycle/ProcessLifecycleInitializer;", "LA0/b;", "Landroidx/lifecycle/w;", "<init>", "()V", "lifecycle-process_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements A0.b {
    @Override // A0.b
    public final List a() {
        return R2.u.f2325c;
    }

    @Override // A0.b
    public final Object b(Context context) {
        d3.i.e("context", context);
        A0.a aVarC = A0.a.c(context);
        d3.i.d("getInstance(context)", aVarC);
        if (!aVarC.f52b.contains(ProcessLifecycleInitializer.class)) {
            throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml".toString());
        }
        if (!AbstractC0152t.f4068a.getAndSet(true)) {
            Context applicationContext = context.getApplicationContext();
            d3.i.c("null cannot be cast to non-null type android.app.Application", applicationContext);
            ((Application) applicationContext).registerActivityLifecycleCallbacks(new C0151s());
        }
        L l5 = L.f4008j;
        l5.getClass();
        l5.f4012g = new Handler();
        l5.f4013h.e(EnumC0149p.ON_CREATE);
        Context applicationContext2 = context.getApplicationContext();
        d3.i.c("null cannot be cast to non-null type android.app.Application", applicationContext2);
        ((Application) applicationContext2).registerActivityLifecycleCallbacks(new K(l5));
        return l5;
    }
}
