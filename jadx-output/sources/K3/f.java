package K3;

/* loaded from: classes.dex */
public final class f extends c {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1298d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e f1299e;

    public /* synthetic */ f(e eVar, int i5) {
        this.f1298d = i5;
        this.f1299e = eVar;
    }

    @Override // K3.c
    public final void N0(String[] strArr) {
        switch (this.f1298d) {
            case 0:
                if (strArr == null) {
                    throw new IllegalArgumentException("Argument for @NotNull parameter 'data' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1.visitEnd must not be null");
                }
                this.f1299e.f1297d.f = strArr;
                return;
            default:
                if (strArr == null) {
                    throw new IllegalArgumentException("Argument for @NotNull parameter 'data' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$2.visitEnd must not be null");
                }
                this.f1299e.f1297d.f1305g = strArr;
                return;
        }
    }
}
