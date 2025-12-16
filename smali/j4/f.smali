.class public final Lj4/f;
.super Lh4/z;
.source "SourceFile"


# instance fields
.field public final d:Lh4/J;

.field public final e:La4/o;

.field public final f:Lj4/h;

.field public final g:Ljava/util/List;

.field public final h:Z

.field public final i:[Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Lh4/J;La4/o;Lj4/h;Ljava/util/List;Z[Ljava/lang/String;)V
    .locals 1

    const-string v0, "constructor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "memberScope"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kind"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "arguments"

    invoke-static {v0, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "formatParams"

    invoke-static {v0, p6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/f;->d:Lh4/J;

    iput-object p2, p0, Lj4/f;->e:La4/o;

    iput-object p3, p0, Lj4/f;->f:Lj4/h;

    iput-object p4, p0, Lj4/f;->g:Ljava/util/List;

    iput-boolean p5, p0, Lj4/f;->h:Z

    iput-object p6, p0, Lj4/f;->i:[Ljava/lang/String;

    array-length p1, p6

    invoke-static {p6, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p3, Lj4/h;->c:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj4/f;->j:Ljava/lang/String;

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

    iget-object p0, p0, Lj4/f;->d:Lh4/J;

    return-object p0
.end method

.method public final K0()Z
    .locals 0

    iget-boolean p0, p0, Lj4/f;->h:Z

    return p0
.end method

.method public final L0(Li4/f;)Lh4/v;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final O0(Li4/f;)Lh4/Z;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final P0(Lh4/G;)Lh4/Z;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final Q0(Z)Lh4/z;
    .locals 8

    new-instance v7, Lj4/f;

    iget-object v0, p0, Lj4/f;->i:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    iget-object v1, p0, Lj4/f;->d:Lh4/J;

    iget-object v2, p0, Lj4/f;->e:La4/o;

    iget-object v3, p0, Lj4/f;->f:Lj4/h;

    iget-object v4, p0, Lj4/f;->g:Ljava/util/List;

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lj4/f;-><init>(Lh4/J;La4/o;Lj4/h;Ljava/util/List;Z[Ljava/lang/String;)V

    return-object v7
.end method

.method public final R0(Lh4/G;)Lh4/z;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final q0()La4/o;
    .locals 0

    iget-object p0, p0, Lj4/f;->e:La4/o;

    return-object p0
.end method

.method public final u0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lj4/f;->g:Ljava/util/List;

    return-object p0
.end method
