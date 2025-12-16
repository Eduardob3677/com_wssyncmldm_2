.class public final synthetic Lx3/k;
.super Ld3/g;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final l:Lx3/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx3/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld3/g;-><init>(I)V

    sput-object v0, Lx3/k;->l:Lx3/k;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/reflect/Constructor;

    const-string p0, "p0"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lx3/r;

    invoke-direct {p0, p1}, Lx3/r;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "<init>"

    return-object p0
.end method

.method public final j()Li3/e;
    .locals 1

    sget-object p0, Ld3/q;->a:Ld3/r;

    const-class v0, Lx3/r;

    invoke-virtual {p0, v0}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p0

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    const-string p0, "<init>(Ljava/lang/reflect/Constructor;)V"

    return-object p0
.end method
