package A3;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public class H {

    /* renamed from: d, reason: collision with root package name */
    public static final H f87d;

    /* renamed from: e, reason: collision with root package name */
    public static final H f88e;
    public static final H f;

    /* renamed from: g, reason: collision with root package name */
    public static final G f89g;

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ H[] f90h;

    /* renamed from: c, reason: collision with root package name */
    public final Object f91c;

    static {
        H h5 = new H("NULL", 0, null);
        f87d = h5;
        H h6 = new H("INDEX", 1, -1);
        f88e = h6;
        H h7 = new H("FALSE", 2, Boolean.FALSE);
        f = h7;
        G g5 = new G("MAP_GET_OR_DEFAULT", 3, null);
        f89g = g5;
        f90h = new H[]{h5, h6, h7, g5};
    }

    public H(String str, int i5, Object obj) {
        this.f91c = obj;
    }

    public static H valueOf(String str) {
        return (H) Enum.valueOf(H.class, str);
    }

    public static H[] values() {
        return (H[]) f90h.clone();
    }
}
