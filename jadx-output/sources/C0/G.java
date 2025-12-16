package C0;

import android.view.View;
import android.view.WindowId;

/* loaded from: classes.dex */
public final class G {

    /* renamed from: a, reason: collision with root package name */
    public final WindowId f262a;

    public G(View view) {
        this.f262a = view.getWindowId();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof G) && ((G) obj).f262a.equals(this.f262a);
    }

    public final int hashCode() {
        return this.f262a.hashCode();
    }
}
