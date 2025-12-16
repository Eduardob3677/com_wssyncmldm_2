package w0;

/* loaded from: classes.dex */
public final class c implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public final int f9586c;

    /* renamed from: d, reason: collision with root package name */
    public final int f9587d;

    /* renamed from: e, reason: collision with root package name */
    public final String f9588e;
    public final String f;

    public c(String str, int i5, String str2, int i6) {
        this.f9586c = i5;
        this.f9587d = i6;
        this.f9588e = str;
        this.f = str2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        c cVar = (c) obj;
        int i5 = this.f9586c - cVar.f9586c;
        return i5 == 0 ? this.f9587d - cVar.f9587d : i5;
    }
}
