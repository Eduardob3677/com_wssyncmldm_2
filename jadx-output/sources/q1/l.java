package q1;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class l {

    /* renamed from: c, reason: collision with root package name */
    public static final l f8624c;

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ l[] f8625d;

    static {
        l lVar = new l("DEFAULT", 0);
        f8624c = lVar;
        f8625d = new l[]{lVar, new l("SIGNED", 1), new l("FIXED", 2)};
    }

    public static l[] values() {
        return (l[]) f8625d.clone();
    }
}
