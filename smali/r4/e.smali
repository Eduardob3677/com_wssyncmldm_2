.class public final Lr4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Le3/a;


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/util/Iterator;

.field public e:I

.field public f:Ljava/lang/Object;

.field public final synthetic g:Lr4/k;


# direct methods
.method public constructor <init>(Lr4/f;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr4/e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/e;->g:Lr4/k;

    iget-object p1, p1, Lr4/f;->a:Lr4/k;

    invoke-interface {p1}, Lr4/k;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lr4/e;->d:Ljava/util/Iterator;

    const/4 p1, -0x1

    iput p1, p0, Lr4/e;->e:I

    return-void
.end method

.method public constructor <init>(Lr4/j;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lr4/e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/e;->g:Lr4/k;

    iget-object p1, p1, Lr4/j;->c:Ljava/lang/Object;

    check-cast p1, Lr4/k;

    invoke-interface {p1}, Lr4/k;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lr4/e;->d:Ljava/util/Iterator;

    const/4 p1, -0x1

    iput p1, p0, Lr4/e;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :cond_0
    iget-object v0, p0, Lr4/e;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lr4/e;->g:Lr4/k;

    check-cast v1, Lr4/f;

    iget-object v2, v1, Lr4/f;->c:Lc3/b;

    invoke-interface {v2, v0}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-boolean v1, v1, Lr4/f;->b:Z

    if-ne v2, v1, :cond_0

    iput-object v0, p0, Lr4/e;->f:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lr4/e;->e:I

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lr4/e;->e:I

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lr4/e;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lr4/e;->g:Lr4/k;

    check-cast v1, Lr4/j;

    iget-object v1, v1, Lr4/j;->b:Lc3/b;

    invoke-interface {v1, v0}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lr4/e;->e:I

    iput-object v0, p0, Lr4/e;->f:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lr4/e;->e:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lr4/e;->c:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lr4/e;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lr4/e;->c()V

    :cond_0
    iget p0, p0, Lr4/e;->e:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lr4/e;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lr4/e;->a()V

    :cond_2
    iget p0, p0, Lr4/e;->e:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lr4/e;->c:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lr4/e;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lr4/e;->c()V

    :cond_0
    iget v0, p0, Lr4/e;->e:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/e;->f:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lr4/e;->f:Ljava/lang/Object;

    iput v1, p0, Lr4/e;->e:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    iget v0, p0, Lr4/e;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lr4/e;->a()V

    :cond_2
    iget v0, p0, Lr4/e;->e:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lr4/e;->f:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lr4/e;->f:Ljava/lang/Object;

    iput v1, p0, Lr4/e;->e:I

    return-object v0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget p0, p0, Lr4/e;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
