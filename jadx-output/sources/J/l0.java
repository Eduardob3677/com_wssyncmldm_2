package J;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class l0 extends k0 {
    public l0(q0 q0Var, WindowInsets windowInsets) {
        super(q0Var, windowInsets);
    }

    @Override // J.o0
    public q0 a() {
        return q0.f(this.f989c.consumeDisplayCutout(), null);
    }

    @Override // J.o0
    public C0030d e() {
        DisplayCutout displayCutout = this.f989c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new C0030d(displayCutout);
    }

    @Override // J.o0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l0)) {
            return false;
        }
        l0 l0Var = (l0) obj;
        if (Objects.equals(this.f989c, l0Var.f989c)) {
            l0Var.getClass();
            if (Objects.equals(null, null)) {
                return true;
            }
        }
        return false;
    }

    @Override // J.o0
    public int hashCode() {
        return this.f989c.hashCode();
    }
}
