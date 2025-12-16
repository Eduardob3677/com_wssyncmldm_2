package x2;

import android.app.Activity;
import androidx.fragment.app.G;
import androidx.preference.Preference;
import androidx.preference.o;

/* renamed from: x2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0906a implements o {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f9634a;

    public C0906a(G g5) {
        if (g5 == null) {
            throw new IllegalArgumentException("activity should not be null");
        }
        this.f9634a = g5;
    }

    @Override // androidx.preference.o
    public final boolean a(Preference preference) {
        new Thread(new A.o(this, 17, preference)).start();
        return true;
    }
}
