package x3;

import java.lang.annotation.Annotation;
import java.util.Collection;

/* renamed from: x3.D, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0912D extends s implements H3.b {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0910B f9638a;

    /* renamed from: b, reason: collision with root package name */
    public final Annotation[] f9639b;

    /* renamed from: c, reason: collision with root package name */
    public final String f9640c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f9641d;

    public C0912D(AbstractC0910B abstractC0910B, Annotation[] annotationArr, String str, boolean z4) {
        d3.i.e("reflectAnnotations", annotationArr);
        this.f9638a = abstractC0910B;
        this.f9639b = annotationArr;
        this.f9640c = str;
        this.f9641d = z4;
    }

    @Override // H3.b
    public final Collection t() {
        return o4.a.h(this.f9639b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(C0912D.class.getName());
        sb.append(": ");
        sb.append(this.f9641d ? "vararg " : "");
        String str = this.f9640c;
        sb.append(str != null ? Q3.f.d(str) : null);
        sb.append(": ");
        sb.append(this.f9638a);
        return sb.toString();
    }

    @Override // H3.b
    public final C0918e v(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        return o4.a.d(this.f9639b, cVar);
    }
}
