.class public final Lh4/A;
.super Lh4/z;
.source "SourceFile"


# instance fields
.field public final d:Lh4/J;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:La4/o;

.field public final h:Lc3/b;


# direct methods
.method public constructor <init>(Lh4/J;Ljava/util/List;ZLa4/o;Lc3/b;)V
    .locals 1

    const-string v0, "constructor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "arguments"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "memberScope"

    invoke-static {v0, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/A;->d:Lh4/J;

    iput-object p2, p0, Lh4/A;->e:Ljava/util/List;

    iput-boolean p3, p0, Lh4/A;->f:Z

    iput-object p4, p0, Lh4/A;->g:La4/o;

    iput-object p5, p0, Lh4/A;->h:Lc3/b;

    instance-of p0, p4, Lj4/e;

    if-eqz p0, :cond_1

    instance-of p0, p4, Lj4/j;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SimpleTypeImpl should not be created for error type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final I0()Lh4/G;
    .locals 0

    sget-object p0, Lh4/G;->d:Le/v;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lh4/G;->e:Lh4/G;

    return-object p0
.end method

.method public final J0()Lh4/J;
    .locals 0

    iget-object p0, p0, Lh4/A;->d:Lh4/J;

    return-object p0
.end method

.method public final K0()Z
    .locals 0

    iget-boolean p0, p0, Lh4/A;->f:Z

    return p0
.end method

.method public final L0(Li4/f;)Lh4/v;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lh4/A;->h:Lc3/b;

    invoke-interface {v0, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh4/z;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final O0(Li4/f;)Lh4/Z;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lh4/A;->h:Lc3/b;

    invoke-interface {v0, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh4/z;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final Q0(Z)Lh4/z;
    .locals 1

    iget-boolean v0, p0, Lh4/A;->f:Z

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lh4/y;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lh4/y;-><init>(Lh4/z;I)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_1
    new-instance p1, Lh4/y;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lh4/y;-><init>(Lh4/z;I)V

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public final R0(Lh4/G;)Lh4/z;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ln4/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lh4/B;

    invoke-direct {v0, p0, p1}, Lh4/B;-><init>(Lh4/z;Lh4/G;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final q0()La4/o;
    .locals 0

    iget-object p0, p0, Lh4/A;->g:La4/o;

    return-object p0
.end method

.method public final u0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lh4/A;->e:Ljava/util/List;

    return-object p0
.end method
