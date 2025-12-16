package C0;

import android.view.View;
import h0.AbstractC0432c;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class z {

    /* renamed from: b, reason: collision with root package name */
    public final View f337b;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f336a = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f338c = new ArrayList();

    public z(View view) {
        this.f337b = view;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return this.f337b == zVar.f337b && this.f336a.equals(zVar.f336a);
    }

    public final int hashCode() {
        return this.f336a.hashCode() + (this.f337b.hashCode() * 31);
    }

    public final String toString() {
        String strH = AbstractC0432c.h(("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f337b + "\n", "    values:");
        HashMap map = this.f336a;
        for (String str : map.keySet()) {
            strH = strH + "    " + str + ": " + map.get(str) + "\n";
        }
        return strH;
    }
}
