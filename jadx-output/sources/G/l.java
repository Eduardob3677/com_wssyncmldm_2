package G;

import android.content.Intent;
import android.os.Handler;
import com.google.firebase.messaging.AbstractServiceC0383d;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class l implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f802c;

    /* renamed from: d, reason: collision with root package name */
    public Object f803d;

    /* renamed from: e, reason: collision with root package name */
    public Object f804e;
    public Object f;

    public /* synthetic */ l(int i5) {
        this.f802c = i5;
    }

    @Override // java.lang.Runnable
    public final void run() throws Exception {
        Object objCall;
        switch (this.f802c) {
            case 0:
                try {
                    objCall = ((Callable) this.f803d).call();
                } catch (Exception unused) {
                    objCall = null;
                }
                ((Handler) this.f).post(new a((I.a) this.f804e, 1, objCall));
                break;
            default:
                ((AbstractServiceC0383d) this.f803d).m2x624ce8b2((Intent) this.f804e, (u1.i) this.f);
                break;
        }
    }
}
