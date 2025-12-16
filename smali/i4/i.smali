.class public final Li4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU3/b;


# instance fields
.field public final a:Lh4/N;

.field public b:Lc3/a;

.field public final c:Li4/i;

.field public final d:Lr3/Q;

.field public final e:LQ2/c;


# direct methods
.method public constructor <init>(Lh4/N;Lc3/a;Li4/i;Lr3/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/i;->a:Lh4/N;

    iput-object p2, p0, Li4/i;->b:Lc3/a;

    iput-object p3, p0, Li4/i;->c:Li4/i;

    iput-object p4, p0, Li4/i;->d:Lr3/Q;

    new-instance p1, LB3/k;

    const/16 p2, 0x12

    invoke-direct {p1, p2, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lf1/a;->U(ILc3/a;)LQ2/c;

    move-result-object p1

    iput-object p1, p0, Li4/i;->e:LQ2/c;

    return-void
.end method

.method public synthetic constructor <init>(Lh4/N;Lf4/d;Li4/i;Lr3/Q;I)V
    .locals 2

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v1

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Li4/i;-><init>(Lh4/N;Lc3/a;Li4/i;Lr3/Q;)V

    return-void
.end method


# virtual methods
.method public final a()Lh4/N;
    .locals 0

    iget-object p0, p0, Li4/i;->a:Lh4/N;

    return-object p0
.end method

.method public final b(Li4/f;)Li4/i;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Li4/i;->a:Lh4/N;

    invoke-virtual {v0, p1}, Lh4/N;->d(Li4/f;)Lh4/N;

    move-result-object v0

    iget-object v1, p0, Li4/i;->b:Lc3/a;

    if-eqz v1, :cond_0

    new-instance v1, LB3/c;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2, p1}, LB3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Li4/i;->c:Li4/i;

    if-nez p1, :cond_1

    move-object p1, p0

    :cond_1
    new-instance v2, Li4/i;

    iget-object p0, p0, Li4/i;->d:Lr3/Q;

    invoke-direct {v2, v0, v1, p1, p0}, Li4/i;-><init>(Lh4/N;Lc3/a;Li4/i;Lr3/Q;)V

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Li4/i;

    invoke-static {v2, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedTypeConstructor"

    invoke-static {v1, p1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Li4/i;

    iget-object v1, p0, Li4/i;->c:Li4/i;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v1

    :goto_1
    iget-object v1, p1, Li4/i;->c:Li4/i;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v1

    :goto_2
    if-ne p0, p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    return v0
.end method

.method public final g()Lo3/i;
    .locals 1

    iget-object p0, p0, Li4/i;->a:Lh4/N;

    invoke-virtual {p0}, Lh4/N;->b()Lh4/v;

    move-result-object p0

    const-string v0, "projection.type"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lf1/a;->y(Lh4/v;)Lo3/i;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Li4/i;->c:Li4/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li4/i;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final i()Lr3/g;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final j()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Li4/i;->e:LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, LR2/u;->c:LR2/u;

    :cond_0
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

    const-string v1, "CapturedType("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Li4/i;->a:Lh4/N;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
