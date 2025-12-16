package androidx.lifecycle;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: androidx.lifecycle.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC0149p {
    private static final /* synthetic */ EnumC0149p[] $VALUES;
    public static final C0147n Companion;
    public static final EnumC0149p ON_ANY;
    public static final EnumC0149p ON_CREATE;
    public static final EnumC0149p ON_DESTROY;
    public static final EnumC0149p ON_PAUSE;
    public static final EnumC0149p ON_RESUME;
    public static final EnumC0149p ON_START;
    public static final EnumC0149p ON_STOP;

    static {
        EnumC0149p enumC0149p = new EnumC0149p("ON_CREATE", 0);
        ON_CREATE = enumC0149p;
        EnumC0149p enumC0149p2 = new EnumC0149p("ON_START", 1);
        ON_START = enumC0149p2;
        EnumC0149p enumC0149p3 = new EnumC0149p("ON_RESUME", 2);
        ON_RESUME = enumC0149p3;
        EnumC0149p enumC0149p4 = new EnumC0149p("ON_PAUSE", 3);
        ON_PAUSE = enumC0149p4;
        EnumC0149p enumC0149p5 = new EnumC0149p("ON_STOP", 4);
        ON_STOP = enumC0149p5;
        EnumC0149p enumC0149p6 = new EnumC0149p("ON_DESTROY", 5);
        ON_DESTROY = enumC0149p6;
        EnumC0149p enumC0149p7 = new EnumC0149p("ON_ANY", 6);
        ON_ANY = enumC0149p7;
        $VALUES = new EnumC0149p[]{enumC0149p, enumC0149p2, enumC0149p3, enumC0149p4, enumC0149p5, enumC0149p6, enumC0149p7};
        Companion = new C0147n();
    }

    public static EnumC0149p valueOf(String str) {
        return (EnumC0149p) Enum.valueOf(EnumC0149p.class, str);
    }

    public static EnumC0149p[] values() {
        return (EnumC0149p[]) $VALUES.clone();
    }

    public final EnumC0150q a() {
        switch (AbstractC0148o.f4062a[ordinal()]) {
            case 1:
            case 2:
                return EnumC0150q.f4065e;
            case 3:
            case 4:
                return EnumC0150q.f;
            case 5:
                return EnumC0150q.f4066g;
            case 6:
                return EnumC0150q.f4063c;
            default:
                throw new IllegalArgumentException(this + " has no target state");
        }
    }
}
