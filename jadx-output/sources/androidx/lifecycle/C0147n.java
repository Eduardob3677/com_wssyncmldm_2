package androidx.lifecycle;

/* renamed from: androidx.lifecycle.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0147n {
    public static EnumC0149p a(EnumC0150q enumC0150q) {
        d3.i.e("state", enumC0150q);
        int iOrdinal = enumC0150q.ordinal();
        if (iOrdinal == 2) {
            return EnumC0149p.ON_DESTROY;
        }
        if (iOrdinal == 3) {
            return EnumC0149p.ON_STOP;
        }
        if (iOrdinal != 4) {
            return null;
        }
        return EnumC0149p.ON_PAUSE;
    }

    public static EnumC0149p b(EnumC0150q enumC0150q) {
        d3.i.e("state", enumC0150q);
        int iOrdinal = enumC0150q.ordinal();
        if (iOrdinal == 1) {
            return EnumC0149p.ON_CREATE;
        }
        if (iOrdinal == 2) {
            return EnumC0149p.ON_START;
        }
        if (iOrdinal != 3) {
            return null;
        }
        return EnumC0149p.ON_RESUME;
    }

    public static EnumC0149p c(EnumC0150q enumC0150q) {
        d3.i.e("state", enumC0150q);
        int iOrdinal = enumC0150q.ordinal();
        if (iOrdinal == 2) {
            return EnumC0149p.ON_CREATE;
        }
        if (iOrdinal == 3) {
            return EnumC0149p.ON_START;
        }
        if (iOrdinal != 4) {
            return null;
        }
        return EnumC0149p.ON_RESUME;
    }
}
