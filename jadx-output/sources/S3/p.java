package S3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class p {

    /* renamed from: c, reason: collision with root package name */
    public static final p f2699c;

    /* renamed from: d, reason: collision with root package name */
    public static final p f2700d;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ p[] f2701e;

    /* JADX INFO: Fake field, exist only in values array */
    p EF0;

    static {
        p pVar = new p("PRETTY", 0);
        p pVar2 = new p("DEBUG", 1);
        f2699c = pVar2;
        p pVar3 = new p("NONE", 2);
        f2700d = pVar3;
        f2701e = new p[]{pVar, pVar2, pVar3};
    }

    public static p valueOf(String str) {
        return (p) Enum.valueOf(p.class, str);
    }

    public static p[] values() {
        return (p[]) f2701e.clone();
    }
}
