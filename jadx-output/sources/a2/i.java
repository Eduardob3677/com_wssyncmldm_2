package a2;

import android.os.Looper;
import com.google.android.gms.internal.p000firebaseauthapi.Q1;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class i implements Executor {

    /* renamed from: d, reason: collision with root package name */
    public static final i f3054d = new i();

    /* renamed from: c, reason: collision with root package name */
    public final Q1 f3055c = new Q1(Looper.getMainLooper(), 0);

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f3055c.post(runnable);
    }
}
