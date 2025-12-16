.class public final synthetic Lk3/a;
.super Ld3/g;
.source "SourceFile"

# interfaces
.implements Lc3/c;


# static fields
.field public static final l:Lk3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk3/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ld3/g;-><init>(I)V

    sput-object v0, Lk3/a;->l:Lk3/a;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ld4/r;

    check-cast p2, LL3/y;

    const-string p0, "p0"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "p1"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ld4/r;->e(LL3/y;)Lf4/s;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "loadFunction"

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

    const-string p0, "loadFunction(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Function;)Lorg/jetbrains/kotlin/descriptors/SimpleFunctionDescriptor;"

    return-object p0
.end method
