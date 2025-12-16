package r;

/* loaded from: classes.dex */
public final class d implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public f f8738c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ e f8739d;

    public d(e eVar) {
        this.f8739d = eVar;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f8738c.f8744b - ((f) obj).f8744b;
    }

    public final String toString() {
        String str = "[ ";
        if (this.f8738c != null) {
            for (int i5 = 0; i5 < 9; i5++) {
                str = str + this.f8738c.f8749h[i5] + " ";
            }
        }
        return str + "] " + this.f8738c;
    }
}
