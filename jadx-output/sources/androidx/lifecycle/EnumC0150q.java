package androidx.lifecycle;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: androidx.lifecycle.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC0150q {

    /* renamed from: c, reason: collision with root package name */
    public static final EnumC0150q f4063c;

    /* renamed from: d, reason: collision with root package name */
    public static final EnumC0150q f4064d;

    /* renamed from: e, reason: collision with root package name */
    public static final EnumC0150q f4065e;
    public static final EnumC0150q f;

    /* renamed from: g, reason: collision with root package name */
    public static final EnumC0150q f4066g;

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ EnumC0150q[] f4067h;

    static {
        EnumC0150q enumC0150q = new EnumC0150q("DESTROYED", 0);
        f4063c = enumC0150q;
        EnumC0150q enumC0150q2 = new EnumC0150q("INITIALIZED", 1);
        f4064d = enumC0150q2;
        EnumC0150q enumC0150q3 = new EnumC0150q("CREATED", 2);
        f4065e = enumC0150q3;
        EnumC0150q enumC0150q4 = new EnumC0150q("STARTED", 3);
        f = enumC0150q4;
        EnumC0150q enumC0150q5 = new EnumC0150q("RESUMED", 4);
        f4066g = enumC0150q5;
        f4067h = new EnumC0150q[]{enumC0150q, enumC0150q2, enumC0150q3, enumC0150q4, enumC0150q5};
    }

    public static EnumC0150q valueOf(String str) {
        return (EnumC0150q) Enum.valueOf(EnumC0150q.class, str);
    }

    public static EnumC0150q[] values() {
        return (EnumC0150q[]) f4067h.clone();
    }

    public final boolean a(EnumC0150q enumC0150q) {
        return compareTo(enumC0150q) >= 0;
    }
}
