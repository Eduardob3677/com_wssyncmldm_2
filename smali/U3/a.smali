.class public final LU3/a;
.super Lh4/z;
.source "SourceFile"

# interfaces
.implements Lk4/b;


# instance fields
.field public final d:Lh4/N;

.field public final e:LU3/b;

.field public final f:Z

.field public final g:Lh4/G;


# direct methods
.method public constructor <init>(Lh4/N;LU3/b;ZLh4/G;)V
    .locals 1

    const-string v0, "typeProjection"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "constructor"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "attributes"

    invoke-static {v0, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU3/a;->d:Lh4/N;

    iput-object p2, p0, LU3/a;->e:LU3/b;

    iput-boolean p3, p0, LU3/a;->f:Z

    iput-object p4, p0, LU3/a;->g:Lh4/G;

    return-void
.end method


# virtual methods
.method public final I0()Lh4/G;
    .locals 0

    iget-object p0, p0, LU3/a;->g:Lh4/G;

    return-object p0
.end method

.method public final J0()Lh4/J;
    .locals 0

    iget-object p0, p0, LU3/a;->e:LU3/b;

    return-object p0
.end method

.method public final K0()Z
    .locals 0

    iget-boolean p0, p0, LU3/a;->f:Z

    return p0
.end method

.method public final L0(Li4/f;)Lh4/v;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LU3/a;

    iget-object v1, p0, LU3/a;->d:Lh4/N;

    invoke-virtual {v1, p1}, Lh4/N;->d(Li4/f;)Lh4/N;

    move-result-object p1

    iget-object v1, p0, LU3/a;->g:Lh4/G;

    iget-object v2, p0, LU3/a;->e:LU3/b;

    iget-boolean p0, p0, LU3/a;->f:Z

    invoke-direct {v0, p1, v2, p0, v1}, LU3/a;-><init>(Lh4/N;LU3/b;ZLh4/G;)V

    return-object v0
.end method

.method public final N0(Z)Lh4/Z;
    .locals 3

    iget-boolean v0, p0, LU3/a;->f:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LU3/a;

    iget-object v1, p0, LU3/a;->e:LU3/b;

    iget-object v2, p0, LU3/a;->g:Lh4/G;

    iget-object p0, p0, LU3/a;->d:Lh4/N;

    invoke-direct {v0, p0, v1, p1, v2}, LU3/a;-><init>(Lh4/N;LU3/b;ZLh4/G;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final O0(Li4/f;)Lh4/Z;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LU3/a;

    iget-object v1, p0, LU3/a;->d:Lh4/N;

    invoke-virtual {v1, p1}, Lh4/N;->d(Li4/f;)Lh4/N;

    move-result-object p1

    iget-object v1, p0, LU3/a;->g:Lh4/G;

    iget-object v2, p0, LU3/a;->e:LU3/b;

    iget-boolean p0, p0, LU3/a;->f:Z

    invoke-direct {v0, p1, v2, p0, v1}, LU3/a;-><init>(Lh4/N;LU3/b;ZLh4/G;)V

    return-object v0
.end method

.method public final Q0(Z)Lh4/z;
    .locals 3

    iget-boolean v0, p0, LU3/a;->f:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LU3/a;

    iget-object v1, p0, LU3/a;->e:LU3/b;

    iget-object v2, p0, LU3/a;->g:Lh4/G;

    iget-object p0, p0, LU3/a;->d:Lh4/N;

    invoke-direct {v0, p0, v1, p1, v2}, LU3/a;-><init>(Lh4/N;LU3/b;ZLh4/G;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final R0(Lh4/G;)Lh4/z;
    .locals 3

    const-string v0, "newAttributes"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LU3/a;

    iget-object v1, p0, LU3/a;->d:Lh4/N;

    iget-object v2, p0, LU3/a;->e:LU3/b;

    iget-boolean p0, p0, LU3/a;->f:Z

    invoke-direct {v0, v1, v2, p0, p1}, LU3/a;-><init>(Lh4/N;LU3/b;ZLh4/G;)V

    return-object v0
.end method

.method public final q0()La4/o;
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v0, p0}, Lj4/i;->a(IZ[Ljava/lang/String;)Lj4/e;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Captured("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LU3/a;->d:Lh4/N;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, LU3/a;->f:Z

    if-eqz p0, :cond_0

    const-string p0, "?"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u0()Ljava/util/List;
    .locals 0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method
