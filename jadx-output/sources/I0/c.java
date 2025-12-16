package I0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: c, reason: collision with root package name */
    public static final c f870c;

    /* renamed from: d, reason: collision with root package name */
    public static final c f871d;

    /* renamed from: e, reason: collision with root package name */
    public static final c f872e;
    public static final /* synthetic */ c[] f;

    static {
        c cVar = new c("DEFAULT", 0);
        f870c = cVar;
        c cVar2 = new c("VERY_LOW", 1);
        f871d = cVar2;
        c cVar3 = new c("HIGHEST", 2);
        f872e = cVar3;
        f = new c[]{cVar, cVar2, cVar3};
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f.clone();
    }
}
