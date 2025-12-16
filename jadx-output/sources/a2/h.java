package a2;

import b1.C0201g;
import b1.InterfaceC0196b;
import com.google.android.gms.internal.p000firebaseauthapi.Q1;
import s2.C0837c;

/* loaded from: classes.dex */
public final class h implements InterfaceC0196b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3052a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3053b;

    public /* synthetic */ h(int i5, Object obj) {
        this.f3052a = i5;
        this.f3053b = obj;
    }

    @Override // b1.InterfaceC0196b
    public final void a(boolean z4) {
        switch (this.f3052a) {
            case 0:
                C0837c c0837c = (C0837c) this.f3053b;
                if (!z4) {
                    c0837c.getClass();
                    c0837c.getClass();
                    break;
                } else {
                    c0837c.getClass();
                    C0107c c0107c = (C0107c) c0837c.f9022c;
                    c0107c.f3045c.removeCallbacks(c0107c.f3046d);
                    break;
                }
            default:
                Q1 q12 = ((C0201g) this.f3053b).f5091i;
                q12.sendMessage(q12.obtainMessage(1, Boolean.valueOf(z4)));
                break;
        }
    }
}
