package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;

/* loaded from: classes.dex */
public abstract class L extends J {

    /* renamed from: c, reason: collision with root package name */
    public final Activity f3750c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f3751d;

    /* renamed from: e, reason: collision with root package name */
    public final Handler f3752e;
    public final a0 f;

    public L(G g5) {
        Handler handler = new Handler();
        this.f = new a0();
        this.f3750c = g5;
        this.f3751d = g5;
        this.f3752e = handler;
    }
}
