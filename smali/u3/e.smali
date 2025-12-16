.class public final Lu3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh4/J;


# instance fields
.field public final synthetic a:Lf4/t;


# direct methods
.method public constructor <init>(Lf4/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/e;->a:Lf4/t;

    return-void
.end method


# virtual methods
.method public final g()Lo3/i;
    .locals 0

    iget-object p0, p0, Lu3/e;->a:Lf4/t;

    invoke-static {p0}, LX3/f;->e(Lr3/j;)Lo3/i;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final i()Lr3/g;
    .locals 0

    iget-object p0, p0, Lu3/e;->a:Lf4/t;

    return-object p0
.end method

.method public final j()Ljava/util/Collection;
    .locals 1

    iget-object p0, p0, Lu3/e;->a:Lf4/t;

    invoke-virtual {p0}, Lf4/t;->S0()Lh4/z;

    move-result-object p0

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->j()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "declarationDescriptor.un\u2026pe.constructor.supertypes"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final k()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lu3/e;->a:Lf4/t;

    iget-object p0, p0, Lf4/t;->r:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "typeConstructorParameters"

    invoke-static {p0}, Ld3/i;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[typealias "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lu3/e;->a:Lf4/t;

    invoke-virtual {p0}, Lu3/o;->getName()LQ3/f;

    move-result-object p0

    invoke-virtual {p0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
