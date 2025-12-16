package s3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: s3.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC0850m {

    /* renamed from: c, reason: collision with root package name */
    public static final EnumC0850m f9051c;

    /* renamed from: d, reason: collision with root package name */
    public static final EnumC0850m f9052d;

    /* renamed from: e, reason: collision with root package name */
    public static final EnumC0850m f9053e;
    public static final /* synthetic */ EnumC0850m[] f;

    static {
        EnumC0850m enumC0850m = new EnumC0850m("RUNTIME", 0);
        f9051c = enumC0850m;
        EnumC0850m enumC0850m2 = new EnumC0850m("BINARY", 1);
        f9052d = enumC0850m2;
        EnumC0850m enumC0850m3 = new EnumC0850m("SOURCE", 2);
        f9053e = enumC0850m3;
        f = new EnumC0850m[]{enumC0850m, enumC0850m2, enumC0850m3};
    }

    public static EnumC0850m valueOf(String str) {
        return (EnumC0850m) Enum.valueOf(EnumC0850m.class, str);
    }

    public static EnumC0850m[] values() {
        return (EnumC0850m[]) f.clone();
    }
}
