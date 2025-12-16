package q3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class k {

    /* renamed from: c, reason: collision with root package name */
    public static final k f8672c;

    /* renamed from: d, reason: collision with root package name */
    public static final k f8673d;

    /* renamed from: e, reason: collision with root package name */
    public static final k f8674e;
    public static final k f;

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ k[] f8675g;

    static {
        k kVar = new k("HIDDEN", 0);
        f8672c = kVar;
        k kVar2 = new k("VISIBLE", 1);
        f8673d = kVar2;
        k kVar3 = new k("NOT_CONSIDERED", 2);
        f8674e = kVar3;
        k kVar4 = new k("DROP", 3);
        f = kVar4;
        f8675g = new k[]{kVar, kVar2, kVar3, kVar4};
    }

    public static k valueOf(String str) {
        return (k) Enum.valueOf(k.class, str);
    }

    public static k[] values() {
        return (k[]) f8675g.clone();
    }
}
