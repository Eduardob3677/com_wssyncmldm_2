package g4;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class k {

    /* renamed from: c, reason: collision with root package name */
    public static final k f6944c;

    /* renamed from: d, reason: collision with root package name */
    public static final k f6945d;

    /* renamed from: e, reason: collision with root package name */
    public static final k f6946e;
    public static final /* synthetic */ k[] f;

    static {
        k kVar = new k("NOT_COMPUTED", 0);
        f6944c = kVar;
        k kVar2 = new k("COMPUTING", 1);
        f6945d = kVar2;
        k kVar3 = new k("RECURSION_WAS_DETECTED", 2);
        f6946e = kVar3;
        f = new k[]{kVar, kVar2, kVar3};
    }

    public static k valueOf(String str) {
        return (k) Enum.valueOf(k.class, str);
    }

    public static k[] values() {
        return (k[]) f.clone();
    }
}
