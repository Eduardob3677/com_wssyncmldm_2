package V0;

import J3.c;
import a1.InterfaceC0104a;
import a1.e;
import a1.f;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.internal.p000firebaseauthapi.I3;
import com.google.android.gms.internal.p000firebaseauthapi.W3;
import s1.C0828a;

/* loaded from: classes.dex */
public final class b extends W1.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2784b;

    public /* synthetic */ b(int i5) {
        this.f2784b = i5;
    }

    @Override // W1.a
    public /* synthetic */ a1.b e(Context context, Looper looper, c cVar, InterfaceC0104a interfaceC0104a, e eVar, f fVar) {
        switch (this.f2784b) {
            case 2:
                return new C0828a(context, looper, cVar, eVar, fVar);
            case 3:
                throw new NoSuchMethodError();
            default:
                return super.e(context, looper, cVar, interfaceC0104a, eVar, fVar);
        }
    }

    @Override // W1.a
    public a1.b f(Context context, Looper looper, c cVar, InterfaceC0104a interfaceC0104a, e eVar, f fVar) {
        switch (this.f2784b) {
            case 0:
                B.f.y(interfaceC0104a);
                return new m1.e(context, looper, 126, cVar, eVar, fVar);
            case 1:
                return new I3(context, looper, cVar, (W3) interfaceC0104a, eVar, fVar);
            default:
                return super.f(context, looper, cVar, interfaceC0104a, eVar, fVar);
        }
    }
}
