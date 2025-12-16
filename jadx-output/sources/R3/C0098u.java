package R3;

import java.io.IOException;

/* renamed from: R3.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0098u extends IOException {

    /* renamed from: c, reason: collision with root package name */
    public AbstractC0080b f2416c;

    public C0098u(String str) {
        super(str);
        this.f2416c = null;
    }

    public static C0098u a() {
        return new C0098u("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }
}
