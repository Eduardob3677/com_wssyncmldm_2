package d3;

import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class k implements InterfaceC0394f, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final int f6512c;

    public k(int i5) {
        this.f6512c = i5;
    }

    @Override // d3.InterfaceC0394f
    public final int b() {
        return this.f6512c;
    }

    public final String toString() {
        String strG = q.f6516a.g(this);
        i.d("renderLambdaToString(this)", strG);
        return strG;
    }
}
