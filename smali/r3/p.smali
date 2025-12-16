.class public final synthetic Lr3/p;
.super Ld3/g;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final l:Lr3/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr3/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld3/g;-><init>(I)V

    sput-object v0, Lr3/p;->l:Lr3/p;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQ3/b;

    const-string p0, "p0"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, LQ3/b;->g()LQ3/b;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "getOuterClassId"

    return-object p0
.end method

.method public final j()Li3/e;
    .locals 1

    sget-object p0, Ld3/q;->a:Ld3/r;

    const-class v0, LQ3/b;

    invoke-virtual {p0, v0}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p0

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    const-string p0, "getOuterClassId()Lorg/jetbrains/kotlin/name/ClassId;"

    return-object p0
.end method
