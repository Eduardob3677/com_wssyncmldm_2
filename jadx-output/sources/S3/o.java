package S3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: c, reason: collision with root package name */
    public static final o f2696c;

    /* renamed from: d, reason: collision with root package name */
    public static final o f2697d;

    /* renamed from: e, reason: collision with root package name */
    public static final o f2698e;
    public static final /* synthetic */ o[] f;

    static {
        o oVar = new o("ALL", 0);
        f2696c = oVar;
        o oVar2 = new o("ONLY_NON_SYNTHESIZED", 1);
        f2697d = oVar2;
        o oVar3 = new o("NONE", 2);
        f2698e = oVar3;
        f = new o[]{oVar, oVar2, oVar3};
    }

    public static o valueOf(String str) {
        return (o) Enum.valueOf(o.class, str);
    }

    public static o[] values() {
        return (o[]) f.clone();
    }
}
