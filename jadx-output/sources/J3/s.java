package J3;

import c3.InterfaceC0222b;

/* loaded from: classes.dex */
public final class s extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public static final s f1174d = new s(1);

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        String str = (String) obj;
        d3.i.e("it", str);
        if (str.length() <= 1) {
            return str;
        }
        return "L" + str + ';';
    }
}
