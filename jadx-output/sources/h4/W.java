package h4;

/* loaded from: classes.dex */
public final class W extends AbstractC0461n {

    /* renamed from: d, reason: collision with root package name */
    public final String f7043d;

    public W(String str) {
        this.f7043d = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void V0(int i5) {
        String str = (i5 == 1 || i5 == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 1 || i5 == 4) ? 2 : 3];
        if (i5 == 1) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType";
        } else if (i5 == 2) {
            objArr[0] = "delegate";
        } else if (i5 == 3) {
            objArr[0] = "kotlinTypeRefiner";
        } else if (i5 != 4) {
            objArr[0] = "newAttributes";
        }
        if (i5 == 1) {
            objArr[1] = "toString";
        } else if (i5 != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType";
        } else {
            objArr[1] = "refine";
        }
        if (i5 != 1) {
            if (i5 == 2) {
                objArr[2] = "replaceDelegate";
            } else if (i5 == 3) {
                objArr[2] = "refine";
            } else if (i5 != 4) {
                objArr[2] = "replaceAttributes";
            }
        }
        String str2 = String.format(str, objArr);
        if (i5 != 1 && i5 != 4) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // h4.AbstractC0461n, h4.AbstractC0468v
    /* renamed from: L0 */
    public final AbstractC0468v O0(i4.f fVar) {
        if (fVar != null) {
            return this;
        }
        V0(3);
        throw null;
    }

    @Override // h4.AbstractC0472z, h4.Z
    public final /* bridge */ /* synthetic */ Z N0(boolean z4) {
        N0(z4);
        throw null;
    }

    @Override // h4.AbstractC0461n, h4.Z
    public final Z O0(i4.f fVar) {
        if (fVar != null) {
            return this;
        }
        V0(3);
        throw null;
    }

    @Override // h4.AbstractC0472z, h4.Z
    public final /* bridge */ /* synthetic */ Z P0(G g5) {
        P0(g5);
        throw null;
    }

    @Override // h4.AbstractC0472z
    /* renamed from: Q0 */
    public final AbstractC0472z N0(boolean z4) {
        throw new IllegalStateException(this.f7043d);
    }

    @Override // h4.AbstractC0472z
    /* renamed from: R0 */
    public final AbstractC0472z P0(G g5) {
        if (g5 != null) {
            throw new IllegalStateException(this.f7043d);
        }
        V0(0);
        throw null;
    }

    @Override // h4.AbstractC0461n
    public final AbstractC0472z S0() {
        throw new IllegalStateException(this.f7043d);
    }

    @Override // h4.AbstractC0461n
    /* renamed from: T0 */
    public final AbstractC0472z L0(i4.f fVar) {
        if (fVar != null) {
            return this;
        }
        V0(3);
        throw null;
    }

    @Override // h4.AbstractC0461n
    public final AbstractC0461n U0(AbstractC0472z abstractC0472z) {
        throw new IllegalStateException(this.f7043d);
    }

    @Override // h4.AbstractC0472z
    public final String toString() {
        String str = this.f7043d;
        if (str != null) {
            return str;
        }
        V0(1);
        throw null;
    }
}
