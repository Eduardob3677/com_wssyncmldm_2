package S3;

/* loaded from: classes.dex */
public final class q extends s {
    public q() {
        super("HTML", 1);
    }

    @Override // S3.s
    public final String a(String str) {
        d3.i.e("string", str);
        return s4.h.r(s4.h.r(str, "<", "&lt;"), ">", "&gt;");
    }
}
