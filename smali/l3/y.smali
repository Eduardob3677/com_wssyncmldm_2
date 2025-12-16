.class public final synthetic Ll3/y;
.super Ld3/g;
.source "SourceFile"

# interfaces
.implements Lc3/c;


# static fields
.field public static final l:Ll3/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll3/y;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ld3/g;-><init>(I)V

    sput-object v0, Ll3/y;->l:Ll3/y;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ld4/r;

    check-cast p2, LL3/G;

    const-string p0, "p0"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "p1"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ld4/r;->f(LL3/G;)Lf4/r;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "loadProperty"

    return-object p0
.end method

.method public final j()Li3/e;
    .locals 1

    sget-object p0, Ld3/q;->a:Ld3/r;

    const-class v0, Ld4/r;

    invoke-virtual {p0, v0}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p0

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    const-string p0, "loadProperty(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;)Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;"

    return-object p0
.end method
