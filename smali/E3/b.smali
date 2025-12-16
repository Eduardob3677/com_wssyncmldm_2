.class public final LE3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/c;


# static fields
.field public static final a:LE3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE3/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LE3/b;->a:LE3/b;

    return-void
.end method


# virtual methods
.method public final a(LQ3/f;)Lx3/A;
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public final c(LQ3/f;)Lx3/u;
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Ljava/util/Set;
    .locals 0

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public final e()Ljava/util/Set;
    .locals 0

    sget-object p0, LR2/w;->c:LR2/w;

    return-object p0
.end method

.method public final f(LQ3/f;)Ljava/util/Collection;
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method
