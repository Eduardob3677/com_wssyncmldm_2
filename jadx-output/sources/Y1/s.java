package Y1;

import com.google.firebase.auth.FirebaseAuth;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class s implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2957c = 1;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ FirebaseAuth f2958d;

    public s(FirebaseAuth firebaseAuth) {
        this.f2958d = firebaseAuth;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2957c) {
            case 0:
                FirebaseAuth firebaseAuth = this.f2958d;
                Iterator it = firebaseAuth.f6184c.iterator();
                if (it.hasNext()) {
                    B.f.F(it.next());
                    throw null;
                }
                Iterator it2 = firebaseAuth.f6183b.iterator();
                if (it2.hasNext()) {
                    B.f.F(it2.next());
                    throw null;
                }
                return;
            default:
                Iterator it3 = this.f2958d.f6185d.iterator();
                if (it3.hasNext()) {
                    B.f.F(it3.next());
                    throw null;
                }
                return;
        }
    }

    public s(FirebaseAuth firebaseAuth, p2.b bVar) {
        this.f2958d = firebaseAuth;
    }
}
