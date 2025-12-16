package R3;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF12' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public class T {

    /* renamed from: e, reason: collision with root package name */
    public static final T f2360e;
    public static final T f;

    /* renamed from: g, reason: collision with root package name */
    public static final P f2361g;

    /* renamed from: h, reason: collision with root package name */
    public static final Q f2362h;

    /* renamed from: i, reason: collision with root package name */
    public static final T f2363i;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ T[] f2364j;

    /* renamed from: c, reason: collision with root package name */
    public final U f2365c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2366d;

    /* JADX INFO: Fake field, exist only in values array */
    T EF10;

    /* JADX INFO: Fake field, exist only in values array */
    T EF11;

    /* JADX INFO: Fake field, exist only in values array */
    T EF12;

    static {
        T t2 = new T("DOUBLE", 0, U.DOUBLE, 1);
        T t5 = new T("FLOAT", 1, U.FLOAT, 5);
        U u5 = U.LONG;
        T t6 = new T("INT64", 2, u5, 0);
        T t7 = new T("UINT64", 3, u5, 0);
        U u6 = U.INT;
        T t8 = new T("INT32", 4, u6, 0);
        f2360e = t8;
        T t9 = new T("FIXED64", 5, u5, 1);
        T t10 = new T("FIXED32", 6, u6, 5);
        T t11 = new T("BOOL", 7, U.BOOLEAN, 0);
        f = t11;
        O o2 = new O("STRING", 8, U.STRING, 2);
        U u7 = U.MESSAGE;
        P p4 = new P("GROUP", 9, u7, 3);
        f2361g = p4;
        Q q2 = new Q("MESSAGE", 10, u7, 2);
        f2362h = q2;
        S s5 = new S("BYTES", 11, U.BYTE_STRING, 2);
        T t12 = new T("UINT32", 12, u6, 0);
        T t13 = new T("ENUM", 13, U.ENUM, 0);
        f2363i = t13;
        f2364j = new T[]{t2, t5, t6, t7, t8, t9, t10, t11, o2, p4, q2, s5, t12, t13, new T("SFIXED32", 14, u6, 5), new T("SFIXED64", 15, u5, 1), new T("SINT32", 16, u6, 0), new T("SINT64", 17, u5, 0)};
    }

    public T(String str, int i5, U u5, int i6) {
        this.f2365c = u5;
        this.f2366d = i6;
    }

    public static T valueOf(String str) {
        return (T) Enum.valueOf(T.class, str);
    }

    public static T[] values() {
        return (T[]) f2364j.clone();
    }

    public boolean a() {
        return !(this instanceof O);
    }
}
