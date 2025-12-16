package o3;

import R2.B;
import f1.AbstractC0420a;
import java.util.Set;

/* renamed from: o3.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public enum EnumC0734k {
    BOOLEAN("Boolean"),
    CHAR("Char"),
    BYTE("Byte"),
    SHORT("Short"),
    INT("Int"),
    FLOAT("Float"),
    LONG("Long"),
    DOUBLE("Double");


    /* renamed from: c, reason: collision with root package name */
    public final Q3.f f8470c;

    /* renamed from: d, reason: collision with root package name */
    public final Q3.f f8471d;

    /* renamed from: e, reason: collision with root package name */
    public final Q2.c f8472e = AbstractC0420a.U(2, new C0733j(this, 1));
    public final Q2.c f = AbstractC0420a.U(2, new C0733j(this, 0));

    /* renamed from: g, reason: collision with root package name */
    public static final Set f8461g = B.T(CHAR, BYTE, SHORT, INT, FLOAT, LONG, DOUBLE);

    EnumC0734k(String str) {
        this.f8470c = Q3.f.e(str);
        this.f8471d = Q3.f.e(str.concat("Array"));
    }
}
