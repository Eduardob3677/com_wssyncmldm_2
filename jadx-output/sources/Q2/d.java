package Q2;

/* loaded from: classes.dex */
public final class d extends Error {
    public d() {
        super("Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(String str, int i5) {
        super(str);
        switch (i5) {
            case 2:
                d3.i.e("message", str);
                super(str);
                break;
            default:
                d3.i.e("message", str);
                break;
        }
    }
}
