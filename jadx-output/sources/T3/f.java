package T3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: c, reason: collision with root package name */
    public static final f f2721c;

    /* renamed from: d, reason: collision with root package name */
    public static final f f2722d;

    /* renamed from: e, reason: collision with root package name */
    public static final f f2723e;
    public static final /* synthetic */ f[] f;

    static {
        f fVar = new f("CONFLICTS_ONLY", 0);
        f2721c = fVar;
        f fVar2 = new f("SUCCESS_ONLY", 1);
        f2722d = fVar2;
        f fVar3 = new f("BOTH", 2);
        f2723e = fVar3;
        f = new f[]{fVar, fVar2, fVar3};
    }

    public static f valueOf(String str) {
        return (f) Enum.valueOf(f.class, str);
    }

    public static f[] values() {
        return (f[]) f.clone();
    }
}
