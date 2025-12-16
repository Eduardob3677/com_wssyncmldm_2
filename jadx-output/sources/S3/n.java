package S3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class n {

    /* renamed from: c, reason: collision with root package name */
    public static final n f2693c;

    /* renamed from: d, reason: collision with root package name */
    public static final n f2694d;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ n[] f2695e;

    static {
        n nVar = new n("RENDER_OVERRIDE", 0);
        f2693c = nVar;
        n nVar2 = new n("RENDER_OPEN", 1);
        f2694d = nVar2;
        f2695e = new n[]{nVar, nVar2, new n("RENDER_OPEN_OVERRIDE", 2)};
    }

    public static n valueOf(String str) {
        return (n) Enum.valueOf(n.class, str);
    }

    public static n[] values() {
        return (n[]) f2695e.clone();
    }
}
