package N3;

import R3.r;

/* loaded from: classes.dex */
public final class c extends d {

    /* renamed from: c, reason: collision with root package name */
    public final r[] f1870c;

    /* JADX WARN: Illegal instructions before constructor call */
    public c(int i5, r[] rVarArr) {
        if (rVarArr == null) {
            throw new IllegalArgumentException("Argument for @NotNull parameter 'enumEntries' of kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField.bitWidth must not be null");
        }
        int i6 = 1;
        int length = rVarArr.length - 1;
        if (length != 0) {
            for (int i7 = 31; i7 >= 0; i7--) {
                if (((1 << i7) & length) != 0) {
                    i6 = 1 + i7;
                }
            }
            throw new IllegalStateException("Empty enum: " + rVarArr.getClass());
        }
        super(i5, i6);
        this.f1870c = rVarArr;
    }

    public final Object c(int i5) {
        int i6 = (1 << this.f1872b) - 1;
        int i7 = this.f1871a;
        int i8 = (i5 & (i6 << i7)) >> i7;
        for (r rVar : this.f1870c) {
            if (rVar.a() == i8) {
                return rVar;
            }
        }
        return null;
    }
}
