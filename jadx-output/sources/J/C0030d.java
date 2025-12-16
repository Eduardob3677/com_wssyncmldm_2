package J;

import android.view.DisplayCutout;
import java.util.Objects;

/* renamed from: J.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0030d {

    /* renamed from: a, reason: collision with root package name */
    public final DisplayCutout f967a;

    public C0030d(DisplayCutout displayCutout) {
        this.f967a = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0030d.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f967a, ((C0030d) obj).f967a);
    }

    public final int hashCode() {
        DisplayCutout displayCutout = this.f967a;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f967a + "}";
    }
}
