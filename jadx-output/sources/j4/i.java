package j4;

import R2.u;
import h4.J;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import r3.InterfaceC0807j;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public static final i f7647a = new i();

    /* renamed from: b, reason: collision with root package name */
    public static final c f7648b = c.f7604c;

    /* renamed from: c, reason: collision with root package name */
    public static final a f7649c = new a(Q3.f.g(String.format("<Error class: %s>", Arrays.copyOf(new Object[]{"unknown class"}, 1))));

    /* renamed from: d, reason: collision with root package name */
    public static final f f7650d = c(h.f7629j, new String[0]);

    /* renamed from: e, reason: collision with root package name */
    public static final f f7651e = c(h.f7641w, new String[0]);
    public static final Set f = L2.b.I(new d());

    public static final e a(int i5, boolean z4, String... strArr) {
        B.f.x(i5, "kind");
        d3.i.e("formatParams", strArr);
        if (!z4) {
            return new e((String[]) Arrays.copyOf(strArr, strArr.length), i5);
        }
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        d3.i.e("formatParams", strArr2);
        return new j((String[]) Arrays.copyOf(strArr2, strArr2.length), i5);
    }

    public static final e b(String[] strArr, int i5) {
        B.f.x(i5, "kind");
        return a(i5, false, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static final f c(h hVar, String... strArr) {
        u uVar = u.f2325c;
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        d3.i.e("formatParams", strArr2);
        return e(hVar, uVar, d(hVar, (String[]) Arrays.copyOf(strArr2, strArr2.length)), (String[]) Arrays.copyOf(strArr2, strArr2.length));
    }

    public static g d(h hVar, String... strArr) {
        d3.i.e("formatParams", strArr);
        return new g(hVar, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static f e(h hVar, List list, J j3, String... strArr) {
        d3.i.e("formatParams", strArr);
        return new f(j3, b(new String[]{j3.toString()}, 7), hVar, list, false, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static final boolean f(InterfaceC0807j interfaceC0807j) {
        return interfaceC0807j != null && ((interfaceC0807j instanceof a) || (interfaceC0807j.l() instanceof a) || interfaceC0807j == f7648b);
    }
}
