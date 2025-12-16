package K;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public class j implements N0.b {

    /* renamed from: d, reason: collision with root package name */
    public static j f1205d;

    /* renamed from: c, reason: collision with root package name */
    public final Object f1206c;

    public /* synthetic */ j(Object obj) {
        this.f1206c = obj;
    }

    public h a(int i5) {
        return null;
    }

    public h b(int i5) {
        return null;
    }

    public boolean c(int i5, int i6, Bundle bundle) {
        return false;
    }

    @Override // P2.a
    public Object get() {
        return this.f1206c;
    }

    public j(int i5) {
        switch (i5) {
            case 2:
                this.f1206c = new Object();
                new Handler(Looper.getMainLooper(), new R1.f(0, this));
                break;
            default:
                this.f1206c = new i(this);
                break;
        }
    }
}
