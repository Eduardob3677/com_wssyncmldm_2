.class public final Lu1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/m;
.implements Lu1/b;
.implements Lu1/d;
.implements Lu1/e;


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Lu1/a;

.field public final f:Lu1/n;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lu1/a;Lu1/n;I)V
    .locals 0

    iput p4, p0, Lu1/k;->c:I

    iput-object p1, p0, Lu1/k;->d:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lu1/k;->e:Lu1/a;

    iput-object p3, p0, Lu1/k;->f:Lu1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public H()V
    .locals 0

    iget-object p0, p0, Lu1/k;->f:Lu1/n;

    invoke-virtual {p0}, Lu1/n;->l()V

    return-void
.end method

.method public J(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lu1/k;->f:Lu1/n;

    invoke-virtual {p0, p1}, Lu1/n;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method public L(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lu1/k;->f:Lu1/n;

    invoke-virtual {p0, p1}, Lu1/n;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public final onComplete(Lu1/h;)V
    .locals 3

    iget v0, p0, Lu1/k;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LG/a;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, LG/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p0, p0, Lu1/k;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    new-instance v0, LG/a;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, LG/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p0, p0, Lu1/k;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
