.class public final LP0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN0/b;


# instance fields
.field public final synthetic c:I

.field public final d:LP2/a;

.field public final e:LP2/a;

.field public final f:LP2/a;

.field public final g:LP2/a;


# direct methods
.method public constructor <init>(LM0/e;)V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, LP0/e;->c:I

    sget-object v0, LT0/a;->a:Le4/d;

    sget-object v1, LT0/a;->b:LP1/e;

    sget-object v2, LR0/d;->c:LP1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LP0/e;->d:LP2/a;

    iput-object v1, p0, LP0/e;->e:LP2/a;

    iput-object v2, p0, LP0/e;->f:LP2/a;

    iput-object p1, p0, LP0/e;->g:LP2/a;

    return-void
.end method

.method public constructor <init>(LP2/a;LP2/a;LP0/e;LP2/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LP0/e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP0/e;->d:LP2/a;

    iput-object p2, p0, LP0/e;->e:LP2/a;

    iput-object p3, p0, LP0/e;->f:LP2/a;

    iput-object p4, p0, LP0/e;->g:LP2/a;

    return-void
.end method

.method public constructor <init>(LP2/a;LP2/a;Ls2/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LP0/e;->c:I

    sget-object v0, LT0/a;->b:LP1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP0/e;->d:LP2/a;

    iput-object p2, p0, LP0/e;->e:LP2/a;

    iput-object p3, p0, LP0/e;->f:LP2/a;

    iput-object v0, p0, LP0/e;->g:LP2/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LP0/e;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LP0/e;->d:LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT0/b;

    iget-object v1, p0, LP0/e;->e:LP2/a;

    invoke-interface {v1}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LT0/b;

    iget-object v2, p0, LP0/e;->f:LP2/a;

    invoke-interface {v2}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, LP0/e;->g:LP2/a;

    invoke-interface {p0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object p0

    new-instance v3, LR0/h;

    check-cast v2, LR0/a;

    check-cast p0, LR0/j;

    invoke-direct {v3, v0, v1, v2, p0}, LR0/h;-><init>(LT0/b;LT0/b;LR0/a;LR0/j;)V

    return-object v3

    :pswitch_0
    iget-object v0, p0, LP0/e;->d:LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, LP0/e;->e:LP2/a;

    invoke-interface {v1}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR0/c;

    iget-object v2, p0, LP0/e;->f:LP2/a;

    invoke-interface {v2}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ0/d;

    iget-object p0, p0, LP0/e;->g:LP2/a;

    invoke-interface {p0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LS0/c;

    new-instance v3, LQ0/k;

    invoke-direct {v3, v0, v1, v2, p0}, LQ0/k;-><init>(Ljava/util/concurrent/Executor;LR0/c;LQ0/d;LS0/c;)V

    return-object v3

    :pswitch_1
    iget-object v0, p0, LP0/e;->d:LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LP0/e;->e:LP2/a;

    invoke-interface {v1}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR0/c;

    iget-object v2, p0, LP0/e;->f:LP2/a;

    invoke-interface {v2}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ0/b;

    iget-object p0, p0, LP0/e;->g:LP2/a;

    invoke-interface {p0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LT0/b;

    new-instance p0, LQ0/d;

    invoke-direct {p0, v0, v1, v2}, LQ0/d;-><init>(Landroid/content/Context;LR0/c;LQ0/b;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
