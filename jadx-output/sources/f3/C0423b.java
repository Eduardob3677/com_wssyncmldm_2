package f3;

import com.google.android.gms.internal.p000firebaseauthapi.C0339t0;
import d3.i;
import java.util.Random;

/* renamed from: f3.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0423b extends AbstractC0422a {

    /* renamed from: e, reason: collision with root package name */
    public final C0339t0 f6829e = new C0339t0(6);

    @Override // f3.AbstractC0422a
    public final Random b() {
        Object obj = this.f6829e.get();
        i.d("implStorage.get()", obj);
        return (Random) obj;
    }
}
