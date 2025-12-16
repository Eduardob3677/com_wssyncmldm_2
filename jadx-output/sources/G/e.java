package G;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class e implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f781a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f782b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f783c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ D3.e f784d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f785e;

    public /* synthetic */ e(String str, Context context, D3.e eVar, int i5, int i6) {
        this.f781a = i6;
        this.f782b = str;
        this.f783c = context;
        this.f784d = eVar;
        this.f785e = i5;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f781a) {
            case 0:
                return h.a(this.f782b, this.f783c, this.f784d, this.f785e);
            default:
                try {
                    return h.a(this.f782b, this.f783c, this.f784d, this.f785e);
                } catch (Throwable unused) {
                    return new g(-3);
                }
        }
    }
}
