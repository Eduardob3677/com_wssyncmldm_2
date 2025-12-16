package a2;

import android.os.HandlerThread;
import com.google.android.gms.internal.p000firebaseauthapi.Q1;

/* renamed from: a2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0107c {

    /* renamed from: e, reason: collision with root package name */
    public static final A.d f3042e = new A.d("TokenRefresher", "FirebaseAuth:");

    /* renamed from: a, reason: collision with root package name */
    public volatile long f3043a;

    /* renamed from: b, reason: collision with root package name */
    public volatile long f3044b;

    /* renamed from: c, reason: collision with root package name */
    public final Q1 f3045c;

    /* renamed from: d, reason: collision with root package name */
    public final G.a f3046d;

    public C0107c(W1.g gVar) {
        f3042e.i("Initializing TokenRefresher", new Object[0]);
        HandlerThread handlerThread = new HandlerThread("TokenRefresher", 10);
        handlerThread.start();
        this.f3045c = new Q1(handlerThread.getLooper(), 0);
        gVar.a();
        this.f3046d = new G.a(this, gVar.f2824b);
    }
}
