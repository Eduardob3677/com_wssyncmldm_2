package R3;

/* renamed from: R3.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0093o implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public final int f2407c;

    /* renamed from: d, reason: collision with root package name */
    public final T f2408d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f2409e;
    public final boolean f = false;

    public C0093o(int i5, T t2, boolean z4) {
        this.f2407c = i5;
        this.f2408d = t2;
        this.f2409e = z4;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f2407c - ((C0093o) obj).f2407c;
    }
}
