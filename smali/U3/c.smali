.class public final LU3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU3/b;


# instance fields
.field public final a:Lh4/N;

.field public b:Li4/i;


# direct methods
.method public constructor <init>(Lh4/N;)V
    .locals 1

    const-string v0, "projection"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU3/c;->a:Lh4/N;

    invoke-virtual {p1}, Lh4/N;->a()I

    return-void
.end method


# virtual methods
.method public final a()Lh4/N;
    .locals 0

    iget-object p0, p0, LU3/c;->a:Lh4/N;

    return-object p0
.end method

.method public final g()Lo3/i;
    .locals 1

    iget-object p0, p0, LU3/c;->a:Lh4/N;

    invoke-virtual {p0}, Lh4/N;->b()Lh4/v;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->g()Lo3/i;

    move-result-object p0

    const-string v0, "projection.type.constructor.builtIns"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic i()Lr3/g;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final j()Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, LU3/c;->a:Lh4/N;

    invoke-virtual {v0}, Lh4/N;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lh4/N;->b()Lh4/v;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LU3/c;->g()Lo3/i;

    move-result-object p0

    invoke-virtual {p0}, Lo3/i;->o()Lh4/z;

    move-result-object p0

    :goto_0
    const-string v0, "if (projection.projectio\u2026 builtIns.nullableAnyType"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final k()Ljava/util/List;
    .locals 0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CapturedTypeConstructor("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LU3/c;->a:Lh4/N;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
