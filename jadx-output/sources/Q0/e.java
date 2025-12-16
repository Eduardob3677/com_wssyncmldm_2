package Q0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: c, reason: collision with root package name */
    public static final e f2177c;

    /* renamed from: d, reason: collision with root package name */
    public static final e f2178d;

    /* renamed from: e, reason: collision with root package name */
    public static final e f2179e;
    public static final /* synthetic */ e[] f;

    static {
        e eVar = new e("NETWORK_UNMETERED", 0);
        f2177c = eVar;
        e eVar2 = new e("DEVICE_IDLE", 1);
        f2178d = eVar2;
        e eVar3 = new e("DEVICE_CHARGING", 2);
        f2179e = eVar3;
        f = new e[]{eVar, eVar2, eVar3};
    }

    public static e valueOf(String str) {
        return (e) Enum.valueOf(e.class, str);
    }

    public static e[] values() {
        return (e[]) f.clone();
    }
}
