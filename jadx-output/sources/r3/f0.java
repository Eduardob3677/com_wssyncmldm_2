package r3;

/* loaded from: classes.dex */
public abstract class f0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f8807a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f8808b;

    public f0(String str, boolean z4) {
        this.f8807a = str;
        this.f8808b = z4;
    }

    public Integer a(f0 f0Var) {
        d3.i.e("visibility", f0Var);
        S2.e eVar = e0.f8806a;
        if (this == f0Var) {
            return 0;
        }
        S2.e eVar2 = e0.f8806a;
        Integer num = (Integer) eVar2.get(this);
        Integer num2 = (Integer) eVar2.get(f0Var);
        if (num == null || num2 == null || d3.i.a(num, num2)) {
            return null;
        }
        return Integer.valueOf(num.intValue() - num2.intValue());
    }

    public String b() {
        return this.f8807a;
    }

    public f0 c() {
        return this;
    }

    public final String toString() {
        return b();
    }
}
