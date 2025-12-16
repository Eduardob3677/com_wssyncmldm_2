package I3;

import A3.D;
import java.util.LinkedHashMap;
import s2.C0837c;

/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public static final e f905a = new e(h.f897d, false);

    /* renamed from: b, reason: collision with root package name */
    public static final e f906b;

    /* renamed from: c, reason: collision with root package name */
    public static final e f907c;

    /* renamed from: d, reason: collision with root package name */
    public static final LinkedHashMap f908d;

    static {
        h hVar = h.f898e;
        f906b = new e(hVar, false);
        f907c = new e(hVar, true);
        String strConcat = "java/lang/".concat("Object");
        String strConcat2 = "java/util/function/".concat("Predicate");
        String strConcat3 = "java/util/function/".concat("Function");
        String strConcat4 = "java/util/function/".concat("Consumer");
        String strConcat5 = "java/util/function/".concat("BiFunction");
        String strConcat6 = "java/util/function/".concat("BiConsumer");
        String strConcat7 = "java/util/function/".concat("UnaryOperator");
        String strConcat8 = "java/util/".concat("stream/Stream");
        String strConcat9 = "java/util/".concat("Optional");
        C0837c c0837c = new C0837c(7);
        new D(c0837c, "java/util/".concat("Iterator")).F0("forEachRemaining", new j(strConcat4, 0));
        new D(c0837c, "java/lang/".concat("Iterable")).F0("spliterator", new n(1, 4));
        D d2 = new D(c0837c, "java/util/".concat("Collection"));
        d2.F0("removeIf", new j(strConcat2, 6));
        d2.F0("stream", new j(strConcat8, 7));
        d2.F0("parallelStream", new j(strConcat8, 8));
        new D(c0837c, "java/util/".concat("List")).F0("replaceAll", new j(strConcat7, 9));
        D d5 = new D(c0837c, "java/util/".concat("Map"));
        d5.F0("forEach", new j(strConcat6, 10));
        d5.F0("putIfAbsent", new j(strConcat, 11));
        d5.F0("replace", new j(strConcat, 12));
        d5.F0("replace", new j(strConcat, 13));
        d5.F0("replaceAll", new j(strConcat5, 14));
        d5.F0("compute", new k(0, strConcat, strConcat5));
        d5.F0("computeIfAbsent", new k(1, strConcat, strConcat3));
        d5.F0("computeIfPresent", new k(2, strConcat, strConcat5));
        d5.F0("merge", new k(3, strConcat, strConcat5));
        D d6 = new D(c0837c, strConcat9);
        d6.F0("empty", new j(strConcat9, 15));
        d6.F0("of", new k(4, strConcat, strConcat9));
        d6.F0("ofNullable", new k(5, strConcat, strConcat9));
        d6.F0("get", new j(strConcat, 16));
        d6.F0("ifPresent", new j(strConcat4, 17));
        new D(c0837c, "java/lang/".concat("ref/Reference")).F0("get", new j(strConcat, 18));
        new D(c0837c, strConcat2).F0("test", new j(strConcat, 19));
        new D(c0837c, "java/util/function/".concat("BiPredicate")).F0("test", new j(strConcat, 20));
        new D(c0837c, strConcat4).F0("accept", new j(strConcat, 1));
        new D(c0837c, strConcat6).F0("accept", new j(strConcat, 2));
        new D(c0837c, strConcat3).F0("apply", new j(strConcat, 3));
        new D(c0837c, strConcat5).F0("apply", new j(strConcat, 4));
        new D(c0837c, "java/util/function/".concat("Supplier")).F0("get", new j(strConcat, 5));
        f908d = (LinkedHashMap) c0837c.f9022c;
    }
}
