package I3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: c, reason: collision with root package name */
    public static final h f896c;

    /* renamed from: d, reason: collision with root package name */
    public static final h f897d;

    /* renamed from: e, reason: collision with root package name */
    public static final h f898e;
    public static final /* synthetic */ h[] f;

    static {
        h hVar = new h("FORCE_FLEXIBILITY", 0);
        f896c = hVar;
        h hVar2 = new h("NULLABLE", 1);
        f897d = hVar2;
        h hVar3 = new h("NOT_NULL", 2);
        f898e = hVar3;
        f = new h[]{hVar, hVar2, hVar3};
    }

    public static h valueOf(String str) {
        return (h) Enum.valueOf(h.class, str);
    }

    public static h[] values() {
        return (h[]) f.clone();
    }
}
