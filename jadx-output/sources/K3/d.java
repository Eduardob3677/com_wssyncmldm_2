package K3;

import J3.m;

/* loaded from: classes.dex */
public final class d extends c {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1294d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ m f1295e;

    public /* synthetic */ d(m mVar, int i5) {
        this.f1294d = i5;
        this.f1295e = mVar;
    }

    @Override // K3.c
    public final void N0(String[] strArr) {
        switch (this.f1294d) {
            case 0:
                if (strArr == null) {
                    throw new IllegalArgumentException("Argument for @NotNull parameter 'result' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1.visitEnd must not be null");
                }
                ((e) this.f1295e).f1297d.f = strArr;
                return;
            case 1:
                if (strArr == null) {
                    throw new IllegalArgumentException("Argument for @NotNull parameter 'result' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$2.visitEnd must not be null");
                }
                ((e) this.f1295e).f1297d.f1305g = strArr;
                return;
            default:
                if (strArr == null) {
                    throw new IllegalArgumentException("Argument for @NotNull parameter 'result' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinSerializedIrArgumentVisitor$1.visitEnd must not be null");
                }
                ((e) this.f1295e).f1297d.f1308j = strArr;
                return;
        }
    }
}
