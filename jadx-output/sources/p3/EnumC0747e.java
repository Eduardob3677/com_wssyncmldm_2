package p3;

import Z0.h;
import o3.n;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'h' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: p3.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC0747e {

    /* renamed from: e, reason: collision with root package name */
    public static final h f8592e;
    public static final EnumC0747e f;

    /* renamed from: g, reason: collision with root package name */
    public static final EnumC0747e f8593g;

    /* renamed from: h, reason: collision with root package name */
    public static final EnumC0747e f8594h;

    /* renamed from: i, reason: collision with root package name */
    public static final EnumC0747e f8595i;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ EnumC0747e[] f8596j;

    /* renamed from: c, reason: collision with root package name */
    public final Q3.c f8597c;

    /* renamed from: d, reason: collision with root package name */
    public final String f8598d;

    static {
        EnumC0747e enumC0747e = new EnumC0747e("Function", 0, n.f8538j, "Function");
        f = enumC0747e;
        EnumC0747e enumC0747e2 = new EnumC0747e("SuspendFunction", 1, n.f8534e, "SuspendFunction");
        f8593g = enumC0747e2;
        Q3.c cVar = n.f8536h;
        EnumC0747e enumC0747e3 = new EnumC0747e("KFunction", 2, cVar, "KFunction");
        f8594h = enumC0747e3;
        EnumC0747e enumC0747e4 = new EnumC0747e("KSuspendFunction", 3, cVar, "KSuspendFunction");
        f8595i = enumC0747e4;
        f8596j = new EnumC0747e[]{enumC0747e, enumC0747e2, enumC0747e3, enumC0747e4};
        f8592e = new h(17);
    }

    public EnumC0747e(String str, int i5, Q3.c cVar, String str2) {
        this.f8597c = cVar;
        this.f8598d = str2;
    }

    public static EnumC0747e valueOf(String str) {
        return (EnumC0747e) Enum.valueOf(EnumC0747e.class, str);
    }

    public static EnumC0747e[] values() {
        return (EnumC0747e[]) f8596j.clone();
    }

    public final Q3.f a(int i5) {
        return Q3.f.e(this.f8598d + i5);
    }
}
