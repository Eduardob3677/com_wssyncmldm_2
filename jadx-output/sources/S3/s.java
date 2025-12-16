package S3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public abstract class s {

    /* renamed from: c, reason: collision with root package name */
    public static final r f2702c;

    /* renamed from: d, reason: collision with root package name */
    public static final q f2703d;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ s[] f2704e;

    static {
        r rVar = new r();
        f2702c = rVar;
        q qVar = new q();
        f2703d = qVar;
        f2704e = new s[]{rVar, qVar};
    }

    public static s valueOf(String str) {
        return (s) Enum.valueOf(s.class, str);
    }

    public static s[] values() {
        return (s[]) f2704e.clone();
    }

    public abstract String a(String str);
}
