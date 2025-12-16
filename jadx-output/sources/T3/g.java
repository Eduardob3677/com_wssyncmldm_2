package T3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: c, reason: collision with root package name */
    public static final g f2724c;

    /* renamed from: d, reason: collision with root package name */
    public static final g f2725d;

    /* renamed from: e, reason: collision with root package name */
    public static final g f2726e;
    public static final /* synthetic */ g[] f;

    static {
        g gVar = new g("OVERRIDABLE", 0);
        f2724c = gVar;
        g gVar2 = new g("CONFLICT", 1);
        g gVar3 = new g("INCOMPATIBLE", 2);
        f2725d = gVar3;
        g gVar4 = new g("UNKNOWN", 3);
        f2726e = gVar4;
        f = new g[]{gVar, gVar2, gVar3, gVar4};
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f.clone();
    }
}
