package A3;

/* loaded from: classes.dex */
public abstract class y {

    /* renamed from: a, reason: collision with root package name */
    public static final Q3.c f163a;

    /* renamed from: b, reason: collision with root package name */
    public static final Q3.b f164b;

    static {
        Q3.c cVar = new Q3.c("kotlin.jvm.JvmField");
        f163a = cVar;
        Q3.b.k(cVar);
        Q3.b.k(new Q3.c("kotlin.reflect.jvm.internal.ReflectionFactoryImpl"));
        f164b = Q3.b.f("kotlin/jvm/internal/RepeatableContainer", false);
    }

    public static final String a(String str) {
        d3.i.e("propertyName", str);
        if (c(str)) {
            return str;
        }
        return "get" + o4.a.a(str);
    }

    public static final String b(String str) {
        String strA;
        StringBuilder sb = new StringBuilder("set");
        if (c(str)) {
            strA = str.substring(2);
            d3.i.d("this as java.lang.String).substring(startIndex)", strA);
        } else {
            strA = o4.a.a(str);
        }
        sb.append(strA);
        return sb.toString();
    }

    public static final boolean c(String str) {
        d3.i.e("name", str);
        if (!s4.h.s(str, "is") || str.length() == 2) {
            return false;
        }
        char cCharAt = str.charAt(2);
        return ('a' >= cCharAt && 'a' != cCharAt) || (cCharAt >= 'z' && cCharAt != 'z');
    }
}
