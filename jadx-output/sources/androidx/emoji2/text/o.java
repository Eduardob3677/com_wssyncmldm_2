package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Handler;
import f1.AbstractC0420a;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class o implements i {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3713a;

    /* renamed from: b, reason: collision with root package name */
    public final D3.e f3714b;

    /* renamed from: c, reason: collision with root package name */
    public final P1.e f3715c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f3716d;

    /* renamed from: e, reason: collision with root package name */
    public Handler f3717e;
    public Executor f;

    /* renamed from: g, reason: collision with root package name */
    public ThreadPoolExecutor f3718g;

    /* renamed from: h, reason: collision with root package name */
    public AbstractC0420a f3719h;

    public o(Context context, D3.e eVar) {
        P1.e eVar2 = p.f3720d;
        this.f3716d = new Object();
        Z0.j.m("Context cannot be null", context);
        this.f3713a = context.getApplicationContext();
        this.f3714b = eVar;
        this.f3715c = eVar2;
    }

    @Override // androidx.emoji2.text.i
    public final void a(AbstractC0420a abstractC0420a) {
        synchronized (this.f3716d) {
            this.f3719h = abstractC0420a;
        }
        c();
    }

    public final void b() {
        synchronized (this.f3716d) {
            try {
                this.f3719h = null;
                Handler handler = this.f3717e;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.f3717e = null;
                ThreadPoolExecutor threadPoolExecutor = this.f3718g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f = null;
                this.f3718g = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        synchronized (this.f3716d) {
            try {
                if (this.f3719h == null) {
                    return;
                }
                if (this.f == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new a("emojiCompat"));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    this.f3718g = threadPoolExecutor;
                    this.f = threadPoolExecutor;
                }
                this.f.execute(new D1.b(10, this));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final G.i d() throws Resources.NotFoundException {
        try {
            P1.e eVar = this.f3715c;
            Context context = this.f3713a;
            D3.e eVar2 = this.f3714b;
            eVar.getClass();
            B1.e eVarA = G.d.a(context, eVar2);
            int i5 = eVarA.f201c;
            if (i5 != 0) {
                throw new RuntimeException("fetchFonts failed (" + i5 + ")");
            }
            G.i[] iVarArr = (G.i[]) eVarA.f202d;
            if (iVarArr == null || iVarArr.length == 0) {
                throw new RuntimeException("fetchFonts failed (empty result)");
            }
            return iVarArr[0];
        } catch (PackageManager.NameNotFoundException e5) {
            throw new RuntimeException("provider not found", e5);
        }
    }
}
