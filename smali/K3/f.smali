.class public final LK3/f;
.super LK3/c;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LK3/e;


# direct methods
.method public synthetic constructor <init>(LK3/e;I)V
    .locals 0

    iput p2, p0, LK3/f;->d:I

    iput-object p1, p0, LK3/f;->e:LK3/e;

    invoke-direct {p0}, LK3/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final N0([Ljava/lang/String;)V
    .locals 1

    iget v0, p0, LK3/f;->d:I

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_0

    iget-object p0, p0, LK3/f;->e:LK3/e;

    iget-object p0, p0, LK3/e;->d:LK3/g;

    iput-object p1, p0, LK3/g;->g:[Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument for @NotNull parameter \'data\' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$2.visitEnd must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eqz p1, :cond_1

    iget-object p0, p0, LK3/f;->e:LK3/e;

    iget-object p0, p0, LK3/e;->d:LK3/g;

    iput-object p1, p0, LK3/g;->f:[Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument for @NotNull parameter \'data\' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1.visitEnd must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
