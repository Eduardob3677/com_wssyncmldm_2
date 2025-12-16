.class public final Ls/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/HashSet;

.field public b:I

.field public c:Z

.field public final d:Ls/d;

.field public final e:I

.field public f:Ls/c;

.field public g:I

.field public h:I

.field public i:Lr/f;


# direct methods
.method public constructor <init>(Ls/d;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls/c;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Ls/c;->g:I

    const/4 v0, -0x1

    iput v0, p0, Ls/c;->h:I

    iput-object p1, p0, Ls/c;->d:Ls/d;

    iput p2, p0, Ls/c;->e:I

    return-void
.end method


# virtual methods
.method public final a(Ls/c;I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Ls/c;->b(Ls/c;IIZ)Z

    return-void
.end method

.method public final b(Ls/c;IIZ)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ls/c;->j()V

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p4, :cond_1

    invoke-virtual {p0, p1}, Ls/c;->i(Ls/c;)Z

    move-result p4

    if-nez p4, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Ls/c;->f:Ls/c;

    iget-object p4, p1, Ls/c;->a:Ljava/util/HashSet;

    if-nez p4, :cond_2

    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, Ls/c;->a:Ljava/util/HashSet;

    :cond_2
    iget-object p1, p0, Ls/c;->f:Ls/c;

    iget-object p1, p1, Ls/c;->a:Ljava/util/HashSet;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-lez p2, :cond_4

    iput p2, p0, Ls/c;->g:I

    goto :goto_0

    :cond_4
    iput v1, p0, Ls/c;->g:I

    :goto_0
    iput p3, p0, Ls/c;->h:I

    return v0
.end method

.method public final c(ILjava/util/ArrayList;Lt/n;)V
    .locals 1

    iget-object p0, p0, Ls/c;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;

    iget-object v0, v0, Ls/c;->d:Ls/d;

    invoke-static {v0, p1, p2, p3}, Lt/h;->b(Ls/d;ILjava/util/ArrayList;Lt/n;)Lt/n;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    iget-boolean v0, p0, Ls/c;->c:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Ls/c;->b:I

    return p0
.end method

.method public final e()I
    .locals 3

    iget-object v0, p0, Ls/c;->d:Ls/d;

    iget v0, v0, Ls/d;->a0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Ls/c;->h:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v2, p0, Ls/c;->f:Ls/c;

    if-eqz v2, :cond_1

    iget-object v2, v2, Ls/c;->d:Ls/d;

    iget v2, v2, Ls/d;->a0:I

    if-ne v2, v1, :cond_1

    return v0

    :cond_1
    iget p0, p0, Ls/c;->g:I

    return p0
.end method

.method public final f()Ls/c;
    .locals 2

    iget v0, p0, Ls/c;->e:I

    invoke-static {v0}, Lk/Q0;->f(I)I

    move-result v1

    iget-object p0, p0, Ls/c;->d:Ls/d;

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {v0}, Lh0/c;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Ls/d;->D:Ls/c;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Ls/d;->C:Ls/c;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Ls/d;->F:Ls/c;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Ls/d;->E:Ls/c;

    return-object p0

    :pswitch_4
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final g()Z
    .locals 2

    iget-object p0, p0, Ls/c;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/c;

    invoke-virtual {v1}, Ls/c;->f()Ls/c;

    move-result-object v1

    invoke-virtual {v1}, Ls/c;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Ls/c;->f:Ls/c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i(Ls/c;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x6

    iget v2, p0, Ls/c;->e:I

    const/4 v3, 0x1

    iget-object v4, p1, Ls/c;->d:Ls/d;

    iget p1, p1, Ls/c;->e:I

    if-ne p1, v2, :cond_3

    if-ne v2, v1, :cond_2

    iget-boolean p1, v4, Ls/d;->y:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Ls/c;->d:Ls/d;

    iget-boolean p0, p0, Ls/d;->y:Z

    if-nez p0, :cond_2

    :cond_1
    return v0

    :cond_2
    return v3

    :cond_3
    invoke-static {v2}, Lk/Q0;->f(I)I

    move-result p0

    const/16 v5, 0x8

    const/16 v6, 0x9

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {v2}, Lh0/c;->l(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    if-eq p1, v1, :cond_4

    if-eq p1, v5, :cond_4

    if-eq p1, v6, :cond_4

    move v0, v3

    :cond_4
    return v0

    :pswitch_1
    const/4 p0, 0x3

    if-eq p1, p0, :cond_6

    const/4 p0, 0x5

    if-ne p1, p0, :cond_5

    goto :goto_0

    :cond_5
    move p0, v0

    goto :goto_1

    :cond_6
    :goto_0
    move p0, v3

    :goto_1
    instance-of v1, v4, Ls/h;

    if-eqz v1, :cond_9

    if-nez p0, :cond_7

    if-ne p1, v6, :cond_8

    :cond_7
    move v0, v3

    :cond_8
    move p0, v0

    :cond_9
    return p0

    :pswitch_2
    const/4 p0, 0x2

    if-eq p1, p0, :cond_b

    const/4 p0, 0x4

    if-ne p1, p0, :cond_a

    goto :goto_2

    :cond_a
    move p0, v0

    goto :goto_3

    :cond_b
    :goto_2
    move p0, v3

    :goto_3
    instance-of v1, v4, Ls/h;

    if-eqz v1, :cond_e

    if-nez p0, :cond_c

    if-ne p1, v5, :cond_d

    :cond_c
    move v0, v3

    :cond_d
    move p0, v0

    :cond_e
    return p0

    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Ls/c;->f:Ls/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Ls/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ls/c;->f:Ls/c;

    iget-object v0, v0, Ls/c;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ls/c;->f:Ls/c;

    iput-object v1, v0, Ls/c;->a:Ljava/util/HashSet;

    :cond_0
    iput-object v1, p0, Ls/c;->a:Ljava/util/HashSet;

    iput-object v1, p0, Ls/c;->f:Ls/c;

    const/4 v0, 0x0

    iput v0, p0, Ls/c;->g:I

    const/4 v1, -0x1

    iput v1, p0, Ls/c;->h:I

    iput-boolean v0, p0, Ls/c;->c:Z

    iput v0, p0, Ls/c;->b:I

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Ls/c;->i:Lr/f;

    if-nez v0, :cond_0

    new-instance v0, Lr/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lr/f;-><init>(I)V

    iput-object v0, p0, Ls/c;->i:Lr/f;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lr/f;->c()V

    :goto_0
    return-void
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Ls/c;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls/c;->c:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ls/c;->d:Ls/d;

    iget-object v1, v1, Ls/d;->b0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ls/c;->e:I

    invoke-static {p0}, Lh0/c;->l(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
